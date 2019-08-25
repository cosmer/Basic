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
        case location(Error)
        case api(Error)
    }

    @Published var forecastResult: Result<ForecastViewModel, WeatherError> = .failure(.waitingForLocation)

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
            .flatMapResult { [urlSession] (location) -> AnyResultPublisher<PointsModel, WeatherError> in
                let endpoint = Endpoints.points(latitude: location.coordinate.latitude, longitude: location.coordinate.longitude)
                return urlSession.dataTaskPublisher(for: endpoint)
                    .mapError { WeatherError.api($0) }
                    .materialize()
                    .eraseToAnyPublisher()
            }
            .flatMapResult { [urlSession] (point) -> AnyResultPublisher<(PointsModel, StationsModel), WeatherError> in
                let endpoint = point.properties.observationStations
                return urlSession.dataTaskPublisher(for: endpoint)
                    .mapError { WeatherError.api($0) }
                    .map { (point, $0) }
                    .materialize()
                    .eraseToAnyPublisher()
            }
            .flatMapResult { [urlSession] (point, stations) -> AnyResultPublisher<(PointsModel, CurrentConditionsModel?), WeatherError> in
                let stations = stations.features.sorted {
                    $0.geometry.distance(to: point.geometry) < $1.geometry.distance(to: point.geometry)
                }

                guard let station = stations.first else {
                    return Just(.success((point, nil)))
                        .eraseToAnyPublisher()
                }

                let endpoint = station.id.latestObservation()
                return urlSession.dataTaskPublisher(for: endpoint)
                    .mapError { WeatherError.api($0) }
                    .map { CurrentConditionsModel(station: station, observation: $0) }
                    .map { (point, $0) }
                    .materialize()
                    .eraseToAnyPublisher()
            }
            .flatMapResult { [urlSession] (point, conditions) -> AnyResultPublisher<ForecastViewModel, WeatherError> in
                let forecast = urlSession.dataTaskPublisher(for: point.properties.forecast)
                let hourlyForecast = urlSession.dataTaskPublisher(for: point.properties.forecast.hourly())

                return Publishers.Zip(forecast, hourlyForecast)
                    .mapError { WeatherError.api($0) }
                    .map { ForecastViewModel(point: point, currentConditions: conditions, forecast: $0, hourlyForecast: $1) }
                    .materialize()
                    .eraseToAnyPublisher()
            }
            .receive(on: RunLoop.main)
            .sink { [unowned self] in self.forecastResult = $0 }
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
