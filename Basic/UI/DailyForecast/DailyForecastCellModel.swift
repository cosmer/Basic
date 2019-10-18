//
//  Created by Charlie Osmer on 8/6/19.
//  Copyright © 2019 Charlie Osmer. All rights reserved.
//

import Foundation
import API

struct DailyForecastCellModel: Identifiable {
    var id: Tagged<Int, Self>
    var name: String
    var forecast: String
    var temperature: Measurement<UnitTemperature>
    var wind: String

    var temperatureFormatter: MeasurementFormatter { Formatters.temperature }
}

extension DailyForecastCellModel {
    init(period: ForecastModel.Period) {
        id = ID(rawValue: period.number)
        name = period.localizedName
        forecast = period.shortForecast
        temperature = Measurement(value: Double(period.temperature), unit: period.temperatureUnit.rawValue)
        wind = "\(period.windDirection) \(period.windSpeed)"
    }
}

private extension ForecastModel.Period {
    var localizedName: String {
        switch name {
        case "Columbus Day":
            return "Indigenous Peoples' Day"
        default:
            return name
        }
    }
}
