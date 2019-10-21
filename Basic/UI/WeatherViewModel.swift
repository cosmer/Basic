//
//  Created by Charlie Osmer on 8/5/19.
//  Copyright © 2019 Charlie Osmer. All rights reserved.
//

import Foundation
import Combine
import API
import OhNo

final class WeatherViewModel: ObservableObject {
    enum WeatherError: Error {
        case location(LocationUpdateError)
        case api(Error)
    }

    struct Forecasts {
        var navigationTitle: String
        var daily: DailyForecastViewModel
        var hourly: HourlyForecastViewModel
        var discussion: ForecastDiscussionViewModel
    }

    @Published private(set) var forecasts: Result<Forecasts?, WeatherError> = .success(nil)
    @Published private(set) var isLoading = false

    private let locationUpdater = LocationUpdater()
    private let urlSession = URLSession.shared
    private let errorLog = ErrorLog.default.scoped(to: "WeatherViewModel")

    private var cancellable: AnyCancellable?

    func requestAuthorizationIfNeeded() {
        locationUpdater.requestAuthorizationIfNeeded()
    }

    func update() {
        cancellable?.cancel()
        cancellable = locationUpdater.didUpdateLocation
            .first()
            .map { $0.mapError { WeatherError.location($0) } }
            .map { $0.map(\.coordinate) }
            .flatMapResult { [urlSession] (coordinate) -> AnyResultPublisher<PointsModel, WeatherError> in
                let endpoint = Endpoints.points(latitude: coordinate.latitude, longitude: coordinate.longitude)
                return urlSession.dataTaskPublisher(for: endpoint)
                    .mapError { WeatherError.api($0) }
                    .materialize()
                    .eraseToAnyPublisher()
            }
            .flatMapResult { [urlSession, errorLog] (point) -> AnyResultPublisher<Forecasts, WeatherError> in
                let forecast = urlSession.dataTaskPublisher(for: point.properties.forecast)
                let hourlyForecast = urlSession.dataTaskPublisher(for: point.properties.forecast.hourly())

                let conditions = CurrentConditionsModel.publisher(for: point, in: urlSession)
                    .handleError { errorLog.log($0) }
                    .replaceError(with: nil)
                    .setFailureType(to: Error.self)
                    .eraseToAnyPublisher()

                let alertsEndpoint = Endpoints.activeAlerts(zoneId: point.properties.forecastZone.zoneId())
                let alerts = urlSession.dataTaskPublisher(for: alertsEndpoint)
                    .handleError { errorLog.log($0) }
                    .map { Optional.some($0) }
                    .replaceError(with: nil)
                    .eraseToAnyPublisher()

                return Publishers.Zip3(conditions, forecast, hourlyForecast)
                    .map {
                        Forecasts(
                            point: point,
                            currentConditions: $0,
                            forecast: $1,
                            hourlyForecast: $2,
                            delayedContent: .init(
                                alerts: alerts
                            )
                        )
                    }
                    .mapError { WeatherError.api($0) }
                    .materialize()
                    .eraseToAnyPublisher()
            }
            .receive(on: RunLoop.main)
            .handleEvents(
                receiveSubscription: { _ in
                    self.isLoading = true
                    self.locationUpdater.requestLocation()
                },
                receiveCompletion: { _ in
                    self.isLoading = false
                },
                receiveCancel: {
                    self.isLoading = false
                }
            )
            .sink { [unowned self] (forecast) in
                if case let .failure(error) = forecast {
                    self.errorLog.log(error)
                }

                self.isLoading = false
                self.forecasts = forecast.map { $0 }
            }
    }
}

private extension WeatherViewModel.Forecasts {
    init(
        point: PointsModel,
        currentConditions: CurrentConditionsModel?,
        forecast: ForecastModel,
        hourlyForecast: HourlyForecastModel,
        delayedContent: DailyForecastViewModel.DelayedContent
    ) {
        navigationTitle = point.properties.relativeLocation.properties.city

        daily = DailyForecastViewModel(
            currentConditions: currentConditions,
            forecast: forecast,
            delayedContent: delayedContent
        )

        let timeZone = TimeZone(identifier: point.properties.timeZone)
        hourly = HourlyForecastViewModel(forecast: hourlyForecast, timeZone: timeZone)

        discussion = ForecastDiscussionViewModel(officeId: point.properties.forecastOffice.officeId())
    }
}

extension WeatherViewModel.WeatherError: CustomLoggedError {
    var loggedError: Error {
        switch self {
        case let .location(error):
            return error
        case let .api(error):
            return error
        }
    }
}

extension WeatherViewModel.WeatherError: LocalizedError {
    var errorDescription: String? {
        switch self {
        case let .location(error):
            return error.localizedDescription
        case let .api(error):
            return error.localizedDescription
        }
    }
}
