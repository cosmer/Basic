//
//  Created by Charlie Osmer on 8/20/19.
//  Copyright © 2019 Charlie Osmer. All rights reserved.
//

import Foundation

enum Formatters {
    static let temperature: MeasurementFormatter = {
        let formatter = MeasurementFormatter()
        formatter.unitStyle = .short
        formatter.numberFormatter.minimumFractionDigits = 0
        formatter.numberFormatter.maximumFractionDigits = 0
        return formatter
    }()

    static let percent = PercentFormatter()

    static let timestamp: RelativeDateTimeFormatter = {
        let formatter = RelativeDateTimeFormatter()
        formatter.formattingContext = .standalone
        formatter.dateTimeStyle = .named
        return formatter
    }()

    private static func dayName() -> DateFormatter {
        let formatter = DateFormatter()
        formatter.formattingContext = .standalone
        formatter.setLocalizedDateFormatFromTemplate("cccc")
        return formatter
    }

    private static var dayNameCache = Cache(dayName, \.timeZone)
    static func dayName(for timeZone: TimeZone) -> DateFormatter {
        dayNameCache[timeZone]
    }

    private static func hour() -> DateFormatter {
        let formatter = DateFormatter()
        formatter.formattingContext = .standalone
        formatter.setLocalizedDateFormatFromTemplate("j")
        return formatter
    }

    private static let hourCache = Cache(hour, \.timeZone)
    static func hour(for timeZone: TimeZone) -> DateFormatter {
        return hourCache[timeZone]
    }
}

private final class Cache<Value> {
    private let factory: () -> Value
    private let keyPath: ReferenceWritableKeyPath<Value, TimeZone>

    private var cachedValue: Value?
    private var cachedTimeZone: TimeZone?

    init(_ factory: @escaping () -> Value, _ keyPath: ReferenceWritableKeyPath<Value, TimeZone>) {
        self.keyPath = keyPath
        self.factory = factory
    }

    subscript(_ timeZone: TimeZone) -> Value {
        assertOnMainQueue()

        if let cachedTimeZone = cachedTimeZone, cachedTimeZone == timeZone, let value = cachedValue {
            return value
        }

        let value = factory()
        value[keyPath: keyPath] = timeZone

        cachedValue = value
        cachedTimeZone = timeZone

        return value
    }
}
