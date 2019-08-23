//
//  Created by Charlie Osmer on 8/16/19.
//  Copyright © 2019 Charlie Osmer. All rights reserved.
//

import Foundation

public struct ObservationsModel: Decodable {
    public struct Feature: Decodable {
        public var id: URL
        public var geometry: GeometryModel
        public var properties: ObservationPropertiesModel
    }

    public var features: [Feature]
}
