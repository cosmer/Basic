//
//  Created by Charlie Osmer on 8/22/19.
//  Copyright © 2019 Charlie Osmer. All rights reserved.
//

import Foundation
import Combine
import API

struct CurrentConditionsModel {
    var station: StationsModel.FeatureProperties
    var observation: ObservationPropertiesModel

    init(station: StationsModel.Feature, observation: ObservationModel) {
        self.station = station.properties
        self.observation = observation.properties
    }
}

extension CurrentConditionsModel {
    static func publisher(for point: PointsModel, in urlSession: URLSession) -> AnyPublisher<CurrentConditionsModel?, Error> {
        let endpoint = point.properties.observationStations
        return urlSession.dataTaskPublisher(for: endpoint)
            .flatMap { (stations) -> AnyPublisher<CurrentConditionsModel?, Error> in
                let stations = stations.features.sorted {
                    $0.geometry.distance(to: point.geometry) < $1.geometry.distance(to: point.geometry)
                }

                guard let station = stations.first else {
                    return Just(nil)
                        .setFailureType(to: Error.self)
                        .eraseToAnyPublisher()
                }

                let endpoint = station.id.latestObservation()
                return urlSession.dataTaskPublisher(for: endpoint)
                    .map { CurrentConditionsModel(station: station, observation: $0) }
                    .eraseToAnyPublisher()
            }
            .eraseToAnyPublisher()
    }
}
