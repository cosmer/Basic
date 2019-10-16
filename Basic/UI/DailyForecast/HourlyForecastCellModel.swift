//
//  Created by Charlie Osmer on 8/24/19.
//  Copyright © 2019 Charlie Osmer. All rights reserved.
//

import Foundation
import API

struct HourlyForecastCellModel: Identifiable {
    var id: Tagged<Int, Self>
    var time: Date
    var temperature: Measurement<UnitTemperature>
    var shortForecast: String?

    var timeFormatter: Formatter { Formatters.hour }
    var temperatureFormatter: Formatter { Formatters.temperature }
}

extension HourlyForecastCellModel {
    init(period: HourlyForecastModel.Period) {
        id = ID(rawValue: period.number)
        time = period.startTime
        temperature = Measurement(value: period.temperature, unit: period.temperatureUnit.rawValue)
        shortForecast = period.shortForecast
    }

    static func from<C>(periods: C) -> [Self] where C: Collection, C.Element == HourlyForecastModel.Period {
        let models = periods.map(Self.init)
        return removeConsecutiveShortForecasts(from: models)
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
