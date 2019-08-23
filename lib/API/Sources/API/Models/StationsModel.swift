//
//  Created by Charlie Osmer on 8/21/19.
//  Copyright © 2019 Charlie Osmer. All rights reserved.
//

import Foundation

public struct StationsModel: Decodable {
    public struct FeatureProperties: Decodable {
        public var elevation: QuantitativeValueModel<Double, UnitLength>
        public var stationIdentifier: String
        public var name: String
        public var timeZone: String
    }

    public struct Feature: Decodable {
        public var id: Endpoints.Station
        public var geometry: GeometryPointModel
        public var properties: FeatureProperties
    }

    public var features: [Feature]
}
