//
//  Created by Charlie Osmer on 8/24/19.
//  Copyright © 2019 Charlie Osmer. All rights reserved.
//

import Foundation
import API

struct HourlyForecastPeriodCellModel: Identifiable {
    var id: Tagged<Int, Self>
    var time: Date
    var temperature: Measurement<UnitTemperature>
    var shortForecast: String

    var timeFormatter: Formatter { Formatters.hour }
    var temperatureFormatter: Formatter { Formatters.temperature }
}

extension HourlyForecastPeriodCellModel {
    init(period: HourlyForecastModel.Period) {
        id = ID(rawValue: period.number)
        time = period.startTime
        temperature = Measurement(value: period.temperature, unit: period.temperatureUnit.rawValue)
        shortForecast = period.shortForecast
    }
}
