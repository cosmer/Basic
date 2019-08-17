//
//  Created by Charlie Osmer on 8/4/19.
//  Copyright © 2019 Charlie Osmer. All rights reserved.
//

import Foundation

public struct RelativeLocation: Decodable {
    public struct Properties: Decodable {
        public var city: String
        public var state: String
        public var distance: QuantitativeValueModel<Double>
        public var bearing: QuantitativeValueModel<Double>
    }

    public var geometry: GeometryModel
    public var properties: Properties
}
