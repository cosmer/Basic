//
//  Created by Charlie Osmer on 8/4/19.
//  Copyright © 2019 Charlie Osmer. All rights reserved.
//

import Foundation

struct HTTPError: Error {
    var statusCode: Int
    var url: URL
    var problem: ProblemModel?
}

extension HTTPError: LocalizedError, CustomNSError {
    var errorDescription: String? {
        "HTTP request for url '\(url)' failed with status \(statusCode)."
    }

    var errorCode: Int { statusCode }

    var errorUserInfo: [String: Any] {
        var info: [String: Any] = [
            "status": statusCode,
            "url": url,
        ]

        // TODO: Test me!
        if let problem = problem {
            let mirror = Mirror(reflecting: problem)
            for (label, value) in mirror.children {
                if let label = label {
                    info["problem_\(label)"] = value
                }
            }
        }

        return info
    }
}
