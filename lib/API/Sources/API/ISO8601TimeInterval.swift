//
//  Created by Charles Osmer on 10/27/19.
//  Copyright © 2019 Charlie Osmer. All rights reserved.
//

import Foundation

public struct ISO8601TimeInterval {
    public var start: Date
    public var duration: DateComponents

    public func end(in calendar: Calendar) -> Date? {
        return calendar.date(byAdding: duration, to: start)
    }

    public func dateInterval(in calendar: Calendar) -> DateInterval? {
        return end(in: calendar).map { DateInterval(start: start, end: $0) }
    }
}

extension ISO8601TimeInterval: Decodable {
    public enum IntervalDecodingError: Error {
        case wrongNumberOfComponents
        case invalidDuration
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        start = try container.decode(Date.self)

        let stringValue = try container.decode(String.self)
        let components = stringValue.components(separatedBy: "/")

        guard components.count == 2 else {
            throw IntervalDecodingError.wrongNumberOfComponents
        }

        guard let duration = DateComponents(iso8601Duration: components[1]) else {
            throw IntervalDecodingError.invalidDuration
        }

        self.duration = duration
    }
}
