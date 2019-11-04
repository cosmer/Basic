//
//  Created by Charles Osmer on 11/3/19.
//  Copyright © 2019 Charlie Osmer. All rights reserved.
//

import Foundation

struct UnknownTimeZoneError: Error {
    var identifier: String
}

extension UnknownTimeZoneError: CustomNSError {
    var errorUserInfo: [String: Any] {
        ["identifier": identifier]
    }
}
