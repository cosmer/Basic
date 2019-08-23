//
//  Created by Charlie Osmer on 8/19/19.
//  Copyright © 2019 Charlie Osmer. All rights reserved.
//

import Foundation

struct UnknownUnitCodeError: Error {
    var unitCode: String
    var type: String

    init<T>(unitCode: String, type: T.Type) {
        self.unitCode = unitCode
        self.type = "\(type)"
    }
}

extension UnknownUnitCodeError: LocalizedError, CustomNSError {
    var errorDescription: String? {
        "Unknown unit code '\(unitCode)' for unit '\(type)'."
    }

    var errorUserInfo: [String: Any] {
        [
            "unitCode": unitCode,
            "type": type,
        ]
    }
}
