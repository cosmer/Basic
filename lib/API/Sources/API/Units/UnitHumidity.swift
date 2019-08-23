//
//  Created by Charlie Osmer on 8/19/19.
//  Copyright © 2019 Charlie Osmer. All rights reserved.
//

import Foundation

public final class UnitHumidity: Unit {
    public static let percent = UnitHumidity(symbol: "%")
}

extension UnitHumidity: UnitDecodable {
    public static func decode(unitCode: String) -> UnitHumidity? {
        switch unitCode {
        case "unit:percent":
            return .percent
        default:
            return nil
        }
    }
}
