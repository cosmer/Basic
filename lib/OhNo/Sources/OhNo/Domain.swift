//
//  Created by Charlie Osmer on 9/18/19.
//  Copyright © 2019 Charlie Osmer. All rights reserved.
//

import Foundation

private let unknownContextRegex =
    try! NSRegularExpression(pattern: #"\(unknown context at \$[a-f0-9]+\)"#, options: [])

private func removeUnknownContext(from domain: String) -> String {
    let domainRange = NSRange(location: 0, length: domain.utf16.count)

    let contextRanges = unknownContextRegex
        .matches(in: domain, options: [], range: domainRange)
        .map { $0.range }
        .sorted { $0.location > $1.location }
        .compactMap { Range($0, in: domain) }

    var cleaned = domain
    for contextRange in contextRanges {
        cleaned.replaceSubrange(contextRange, with: "<>")
    }

    return cleaned
}

private func removeErrorType(_ errorType: String, from domain: String) -> String {
    let suffix = "." + errorType
    if domain.hasSuffix(suffix) {
        return String(domain.dropLast(suffix.count))
    } else {
        return domain
    }
}

func simplifyDomain(_ domain: String, withErrorType errorType: String) -> String {
    return removeUnknownContext(from: removeErrorType(errorType, from: domain))
}
