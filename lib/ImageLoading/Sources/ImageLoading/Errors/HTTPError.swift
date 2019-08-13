//
//  Created by Charlie Osmer on 8/12/19.
//  Copyright © 2019 Charlie Osmer. All rights reserved.
//

import Foundation

struct HTTPError: Error {
    var statusCode: Int
    var url: URL
}

extension HTTPError: LocalizedError, CustomNSError {
    var errorDescription: String? {
        "HTTP request for url '\(url)' failed with status \(statusCode)."
    }

    var errorCode: Int { statusCode }

    var errorUserInfo: [String: Any] {
        [
            "status": statusCode,
            "url": url
        ]
    }
}
