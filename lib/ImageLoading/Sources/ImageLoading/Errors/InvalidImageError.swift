//
//  Created by Charlie Osmer on 8/12/19.
//  Copyright © 2019 Charlie Osmer. All rights reserved.
//

import Foundation

struct InvalidImageError: Error {
    var url: URL
}

extension InvalidImageError: LocalizedError, CustomNSError {
    var errorDescription: String? {
        "Failed to decode image from '\(url)'."
    }

    var errorUserInfo: [String: Any] {
        ["url": url]
    }
}
