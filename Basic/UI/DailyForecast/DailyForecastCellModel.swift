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
    var iconPrecipitationChance: IconPrecipitationChance?
    var detailedForecast: String
    var temperature: Measurement<UnitTemperature>
    var temperatureTrend: TemperatureTrend?
    var wind: String

    var temperatureFormatter: AnyFormatter<Measurement<UnitTemperature>> {
        AnyFormatter { [temperatureTrend] (t) in
            switch temperatureTrend {
            case nil:
                return Formatters.temperature.string(from: t)
            case .rising?:
                return "\(Formatters.temperature.string(from: t)) ↑"
            case .falling?:
                return "\(Formatters.temperature.string(from: t)) ↓"
            }
        }
    }
}

extension DailyForecastCellModel {
    private static var iconMetrics: Endpoints.Icon.IconMetrics {
        .init(size: .large, fontSize: nil)
    }

    init(period: ForecastModel.Period) {
        id = ID(rawValue: period.startTime)
        name = period.localizedName
        detailedForecast = period.detailedForecast
        temperature = Measurement(value: Double(period.temperature), unit: period.temperatureUnit.rawValue)
        temperatureTrend = period.temperatureTrend
        wind = "\(period.windDirection) \(period.windSpeed)"

        if let (icon, iconPrecipitationChance) = IconEndpointParser.extractPreciptationChance(from: period.icon) {
            self.icon = .url(icon.with(Self.iconMetrics).buildURL())
            self.iconPrecipitationChance = iconPrecipitationChance
        } else {
            icon = .url(period.icon.with(Self.iconMetrics).buildURL())
            iconPrecipitationChance = nil
        }
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
