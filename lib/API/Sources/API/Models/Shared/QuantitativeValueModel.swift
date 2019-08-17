//
//  Created by Charlie Osmer on 8/4/19.
//  Copyright © 2019 Charlie Osmer. All rights reserved.
//

import Foundation

/// https://codes.wmo.int/common/unit
public struct QuantitativeValueModel<Value>: Decodable where Value: Decodable {
    public var value: Value
    public var unitCode: String
}
