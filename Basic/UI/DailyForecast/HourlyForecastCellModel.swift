//
//  Created by Charlie Osmer on 8/24/19.
//  Copyright © 2019 Charlie Osmer. All rights reserved.
//

import Foundation
import API

struct HourlyForecastCellModel: Identifiable {
    var id: Tagged<Date, Self> { .init(rawValue: time) }
    var time: Date
    var temperature: Measurement<UnitTemperature>
    var wind: String
    var shortForecast: String?
    var timeZone: TimeZone

    var timeFormatter: DateFormatter { Formatters.hour(for: timeZone) }
    var temperatureFormatter: MeasurementFormatter { Formatters.temperature }
}

extension HourlyForecastCellModel {
    init(period: HourlyForecastModel.Period, timeZone: TimeZone) {
        time = period.startTime
        temperature = Measurement(value: period.temperature, unit: period.temperatureUnit.rawValue)
        wind = "\(period.windDirection) \(period.windSpeed)"
        shortForecast = period.shortForecast
        self.timeZone = timeZone
    }

    static func removeConsecutiveShortForecasts(from models: [Self]) -> [Self] {
        var models = models
        for (i1, i2) in zip(models.indices, models.indices.dropFirst()).reversed() {
            if models[i1].shortForecast == models[i2].shortForecast {
                models[i2].shortForecast = nil
            }
        }
        return models
    }
}
