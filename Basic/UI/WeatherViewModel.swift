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

    private var cancellable: AnyCancellable?

    fileprivate static var errorLog: ScopedErrorLog {
        ErrorLog.default.scoped(to: "WeatherViewModel")
    }

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
            .flatMapResult { [urlSession] (point) -> AnyResultPublisher<Forecasts, WeatherError> in
                let units: UnitSystem = Locale.current.usesMetricSystem ? .si : .us

                let forecastEndpoint = point.properties.forecast.with(units: units)
                let forecast = urlSession.dataTaskPublisher(for: forecastEndpoint)

                let hourlyForecastEndpoint = point.properties.forecastHourly.with(units: units)
                let hourlyForecast = urlSession.dataTaskPublisher(for: hourlyForecastEndpoint)

                let forecastGridDataEndpoint = point.properties.forecastGridData
                let forecastGridData = urlSession.dataTaskPublisher(for: forecastGridDataEndpoint)

                let conditions = CurrentConditionsModel.publisher(for: point, in: urlSession)
                    .handleError { Self.errorLog.log($0) }
                    .replaceError(with: nil)
                    .setFailureType(to: Error.self)

                let alertsEndpoint = Endpoints.activeAlerts(zoneId: point.properties.forecastZone.zoneId())
                let alerts = urlSession.dataTaskPublisher(for: alertsEndpoint)
                    .handleError { Self.errorLog.log($0) }
                    .map(WeatherAlertsNavigationModel.init)
                    .replaceError(with: nil)
                    .receive(on: RunLoop.main)
                    .multicast(subject: CurrentValueSubject(nil))
                    .autoconnect()
                    .compactMap { $0 }
                    .eraseToAnyPublisher()

                return Publishers.Zip4(conditions, forecast, hourlyForecast, forecastGridData)
                    .map {
                        Forecasts(
                            point: point,
                            currentConditions: $0,
                            forecast: $1,
                            hourlyForecast: $2,
                            gridData: $3,
                            alertsPublisher: alerts
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
            .sink { [unowned self] (forecasts) in
                if case let .failure(error) = forecasts {
                    Self.errorLog.log(error)
                }

                self.isLoading = false

                switch (self.forecasts, forecasts) {
                case (.success(.some), .failure):
                    break
                default:
                    self.forecasts = forecasts.map { $0 }
                }
            }
    }
}

private extension WeatherViewModel.Forecasts {
    init(
        point: PointsModel,
        currentConditions: CurrentConditionsModel?,
        forecast: ForecastModel,
        hourlyForecast: HourlyForecastModel,
        gridData: ForecastGridDataModel,
        alertsPublisher: AnyPublisher<WeatherAlertsNavigationModel, Never>
    ) {
        navigationTitle = point.properties.relativeLocation.properties.city

        daily = DailyForecastViewModel(
            currentConditions: currentConditions,
            forecast: forecast,
            alertsPublisher: alertsPublisher
        )

        let timeZone = TimeZone(identifier: point.properties.timeZone)
        if timeZone == nil {
            WeatherViewModel.errorLog.log(UnknownTimeZoneError(identifier: point.properties.timeZone))
        }

        hourly = HourlyForecastViewModel(forecast: hourlyForecast, timeZone: timeZone ?? .current)

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
