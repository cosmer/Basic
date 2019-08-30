//
//  Created by Charlie Osmer on 8/25/19.
//  Copyright © 2019 Charlie Osmer. All rights reserved.
//

import Foundation

public struct OfficeID {
    var rawValue: String

    init?(rawValue: String) {
        guard !rawValue.isEmpty else {
            return nil
        }
        self.rawValue = rawValue
    }
}

public extension OfficeID {
    static let grayME = OfficeID(rawValue: "GYX")!
}
