//
//  Created by Charles Osmer on 10/25/19.
//  Copyright © 2019 Charlie Osmer. All rights reserved.
//

import Foundation

public final class UnitProbability: Unit {
    public static let percent = UnitProbability(symbol: "%")
}

extension UnitProbability: UnitDecodable {
    public static func decode(unitCode: String) -> UnitProbability? {
        switch unitCode {
        case "unit:percent":
            return .percent
        default:
            return nil
        }
    }
}
