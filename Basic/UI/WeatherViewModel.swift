//
//  Created by Charlie Osmer on 8/5/19.
//  Copyright © 2019 Charlie Osmer. All rights reserved.
//

import Foundation
import Combine
import API

final class WeatherViewModel: ObservableObject {
    enum WeatherError: Error {
        case waitingForLocation
        case location(LocationUpdateError)
        case api(Error)
    }

    @Published var forecast: Result<ForecastViewModel, WeatherError> = .failure(.waitingForLocation)

    private let locationUpdater = LocationUpdater()
    private lazy var location = locationUpdater.didUpdateLocation
        .map { $0.mapError { WeatherError.location($0) } }
        .multicast(subject: CurrentValueSubject(.failure(.waitingForLocation)))

    private let urlSession = URLSession.shared

    private var cancellable: AnyCancellable?

    func updateLocation() {
        locationUpdater.requestLocation()
    }

    func requestAuthorizationIfNeeded() {
        locationUpdater.requestAuthorizationIfNeeded()
    }

    func activate() {
        guard cancellable == nil else {
            return
        }

        cancellable = location
            .autoconnect()
            .removeDuplicates(by: Result.compareSuccess(by: \.timestamp))
            .map { $0.map(\.coordinate) }
            .flatMapResult { [urlSession] (coordinate) -> AnyResultPublisher<PointsModel, WeatherError> in
                let endpoint = Endpoints.points(latitude: coordinate.latitude, longitude: coordinate.longitude)
                return urlSession.dataTaskPublisher(for: endpoint)
                    .mapError { WeatherError.api($0) }
                    .materialize()
                    .eraseToAnyPublisher()
            }
            .flatMapResult { [urlSession] (point) -> AnyResultPublisher<ForecastViewModel, WeatherError> in
                let forecast = urlSession.dataTaskPublisher(for: point.properties.forecast)
                let hourlyForecast = urlSession.dataTaskPublisher(for: point.properties.forecast.hourly())
                let conditions = CurrentConditionsModel.publisher(for: point, in: urlSession)

                let discussion = ForecastDiscussionModel.publisher(for: point, in: urlSession)
                    .replaceError(with: nil) // TODO: Log error
                    .eraseToAnyPublisher()

                let alertsEndpoint = Endpoints.activeAlerts(zoneId: point.properties.forecastZone.zoneId())
                let alerts = urlSession.dataTaskPublisher(for: alertsEndpoint)
                    .map { Optional.some($0) }
                    .replaceError(with: nil) // TODO: Log error
                    .eraseToAnyPublisher()

                return Publishers.Zip3(conditions, forecast, hourlyForecast)
                    .map {
                        ForecastViewModel(
                            point: point,
                            currentConditions: $0,
                            forecast: $1,
                            hourlyForecast: $2,
                            delayedContent: .init(
                                forecastDiscussion: discussion,
                                alerts: alerts
                            )
                        )
                    }
                    .mapError { WeatherError.api($0) }
                    .materialize()
                    .eraseToAnyPublisher()
            }
            .receive(on: RunLoop.main)
            .sink { [unowned self] in self.forecast = $0 }
    }

    func deactivate() {
        cancellable?.cancel()
        cancellable = nil
    }
}

extension WeatherViewModel.WeatherError: LocalizedError {
    var errorDescription: String? {
        switch self {
        case .waitingForLocation:
            return "Waiting for location."
        case .location(let error):
            return "Failed to update location '\(error.localizedDescription)'."
        case .api(let error):
            return error.localizedDescription
        }
    }
}
