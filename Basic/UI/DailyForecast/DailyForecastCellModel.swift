//
//  Created by Charlie Osmer on 8/6/19.
//  Copyright © 2019 Charlie Osmer. All rights reserved.
//

import Foundation
import API
import ImageLoading

struct DailyForecastCellModel: Identifiable {
    var id: Tagged<Date, Self>
    var name: String
    var icon: LoadableImageAsset
    var detailedForecast: String
    var temperature: Measurement<UnitTemperature>
    var wind: String

    var temperatureFormatter: MeasurementFormatter { Formatters.temperature }
}

extension DailyForecastCellModel {
    private static var iconMetrics: Endpoints.Icon.IconMetrics {
        .init(size: .large, fontSize: 20)
    }

    init(period: ForecastModel.Period) {
        id = ID(rawValue: period.startTime)
        name = period.localizedName
        icon = .url(period.icon.with(Self.iconMetrics).buildURL())
        detailedForecast = period.detailedForecast
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
