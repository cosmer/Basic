//
//  Created by Charlie Osmer on 8/4/19.
//  Copyright © 2019 Charlie Osmer. All rights reserved.
//

import Foundation

/// https://codes.wmo.int/common/unit
public struct QuantitativeValueModel<Value, Unit>: Decodable where Value: Decodable, Unit: UnitDecodable {
    public var value: Value
    public var unit: UnitModel<Unit>

    enum CodingKeys: String, CodingKey {
        case value
        case unit = "unitCode"
    }
}

public extension QuantitativeValueModel {
    func map<T, U>(_ transform: (QuantitativeValueModel<T, Unit>) -> U) -> U? where Value == Optional<T> {
        if let value = value {
            return transform(QuantitativeValueModel<T, Unit>(value: value, unit: unit))
        } else {
            return nil
        }
    }

    func flatMap<T, U>(_ transform: (QuantitativeValueModel<T, Unit>) -> U?) -> U? where Value == Optional<T> {
        if let value = value {
            return transform(QuantitativeValueModel<T, Unit>(value: value, unit: unit))
        } else {
            return nil
        }
    }
}

public extension Measurement {
    init<U>(model: QuantitativeValueModel<Double, U>) where U: UnitDecodable, U.UnitType == UnitType {
        self.init(value: model.value, unit: model.unit.rawValue)
    }
}
