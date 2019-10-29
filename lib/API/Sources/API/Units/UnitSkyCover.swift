//
//  Created by Charles Osmer on 10/25/19.
//  Copyright © 2019 Charlie Osmer. All rights reserved.
//

import Foundation

public final class UnitSkyCover: Unit {
    public static let percent = UnitSkyCover(symbol: "%")
}

extension UnitSkyCover: UnitDecodable {
    public static func decode(unitCode: String) -> UnitSkyCover? {
        switch unitCode {
        case "unit:percent":
            return .percent
        default:
            return nil
        }
    }
}
