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

    static let humidity = HumidityFormatter()

    static let timestamp: RelativeDateTimeFormatter = {
        let formatter = RelativeDateTimeFormatter()
        formatter.formattingContext = .standalone
        formatter.dateTimeStyle = .named
        return formatter
    }()

    private static func hour() -> DateFormatter {
        let formatter = DateFormatter()
        formatter.formattingContext = .standalone
        formatter.setLocalizedDateFormatFromTemplate("j")
        return formatter
    }

    private static var hourCache: [TimeZone?: DateFormatter] = [:]

    static func hour(for timeZone: TimeZone?) -> DateFormatter {
        assertOnMainQueue()

        if let formatter = hourCache[timeZone] {
            return formatter
        }

        let formatter = hour()
        formatter.timeZone = timeZone

        if hourCache.count >= 3 {
            hourCache.removeAll()
        }

        hourCache[timeZone] = formatter
        return formatter
    }
}
