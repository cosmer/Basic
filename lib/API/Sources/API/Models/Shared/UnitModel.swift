//
//  Created by Charlie Osmer on 8/19/19.
//  Copyright © 2019 Charlie Osmer. All rights reserved.
//

import Foundation

public struct UnitModel<Unit>: Decodable where Unit: UnitDecodable {
    public var rawValue: Unit.UnitType

    public init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        let unitCode = try container.decode(String.self)

        guard let rawValue = Unit.decode(unitCode: unitCode) else {
            throw UnknownUnitCodeError(unitCode: unitCode, type: Unit.self)
        }

        self.rawValue = rawValue
    }
}
