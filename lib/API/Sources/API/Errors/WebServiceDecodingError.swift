//
//  Created by Charlie Osmer on 8/4/19.
//  Copyright © 2019 Charlie Osmer. All rights reserved.
//

import Foundation

struct WebServiceDecodingError: Error {
    var error: DecodingError
    var url: URL
    var modelType: String
}

extension WebServiceDecodingError: LocalizedError, CustomNSError {
    var errorDescription: String? {
        "Failed to decode '\(modelType)' from '\(url)'."
    }

    var errorCode: Int {
        (error as NSError).code
    }

    var errorUserInfo: [String: Any] {
        [
            "description": error.userInfoDescription,
            "url": url,
            "model type": modelType
        ]
    }
}

private extension DecodingError {
    var userInfoDescription: String {
        switch self {
        case let .typeMismatch(_, context):
            return context.debugDescription
        case let .valueNotFound(_, context):
            return context.debugDescription
        case let .keyNotFound(_, context):
            return context.debugDescription
        case let .dataCorrupted(context):
            return context.debugDescription
        @unknown default:
            return "unknown"
        }
    }
}
