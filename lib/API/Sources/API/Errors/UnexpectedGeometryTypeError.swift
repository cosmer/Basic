//
//  Created by Charlie Osmer on 8/21/19.
//  Copyright © 2019 Charlie Osmer. All rights reserved.
//

import Foundation

struct UnexpectedGeometryTypeError: Error {
    var expected: String
    var actual: String
}

extension UnexpectedGeometryTypeError: LocalizedError, CustomNSError {
    var errorDescription: String? {
        "Unexpected geometry type '\(actual)', expected '\(expected)'."
    }

    var errorUserInfo: [String: Any] {
        [
            "expected": expected,
            "actual": actual,
        ]
    }
}
