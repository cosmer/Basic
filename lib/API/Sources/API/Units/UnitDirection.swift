//
//  Created by Charlie Osmer on 8/19/19.
//  Copyright © 2019 Charlie Osmer. All rights reserved.
//

import Foundation

public enum UnitDirection {
    case degrees
    case degreesTrue
}

extension UnitDirection: UnitDecodable {
    public static func decode(unitCode: String) -> UnitDirection? {
        switch unitCode {
        case "unit:degree_(angle)":
            return .degrees
        case "unit:degrees_true":
            return .degreesTrue
        default:
            return nil
        }
    }
}
