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
        case pointsEndpoint(Error)
        case forecastEndpoint(Error)
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
            .flatMap { [urlSession] (result) -> AnyResultPublisher<PointsModel, WeatherError> in
                switch result {
                case .success(let location):
                    let endpoint = Endpoints.points(latitude: location.coordinate.latitude, longitude: location.coordinate.longitude)
                    return urlSession.dataTaskPublisher(for: endpoint)
                        .mapError { WeatherError.pointsEndpoint($0) }
                        .materialize()
                        .eraseToAnyPublisher()
                case .failure(let error):
                    return Just(.failure(error))
                        .eraseToAnyPublisher()
                }
            }
            .flatMap { [urlSession] (result) -> AnyResultPublisher<(PointsModel, ForecastModel), WeatherError> in
                switch result {
                case .success(let point):
                    return urlSession.dataTaskPublisher(for: point.properties.forecast)
                        .mapError { WeatherError.forecastEndpoint($0) }
                        .map { (point, $0) }
                        .materialize()
                        .eraseToAnyPublisher()
                case .failure(let error):
                    return Just(.failure(error))
                        .eraseToAnyPublisher()
                }
            }
            .receive(on: RunLoop.main)
            .map { $0.map(ForecastViewModel.init) }
            .sink { [unowned self] in self.forecastResult = $0 }
    }

    func deactivate() {
        cancellable?.cancel()
        cancellable = nil
    }
}
