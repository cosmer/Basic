//
//  Created by Charlie Osmer on 8/19/19.
//  Copyright © 2019 Charlie Osmer. All rights reserved.
//

import Foundation

public protocol UnitDecodable {
    associatedtype UnitType

    static func decode(unitCode: String) -> UnitType?
}

extension UnitTemperature: UnitDecodable {
    public static func decode(unitCode: String) -> UnitTemperature? {
        switch unitCode {
        case "unit:degC":
            return .celsius
        case "C":
            return .celsius
        case "F":
            return .fahrenheit
        default:
            return nil
        }
    }
}

extension UnitLength: UnitDecodable {
    public static func decode(unitCode: String) -> UnitLength? {
        switch unitCode {
        case "unit:m":
            return .meters
        default:
            return nil
        }
    }
}

extension UnitSpeed: UnitDecodable {
    public static func decode(unitCode: String) -> UnitSpeed? {
        switch unitCode {
        case "unit:m_s-1":
            return .metersPerSecond
        default:
            return nil
        }
    }
}
