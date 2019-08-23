//
//  Created by Charlie Osmer on 8/17/19.
//  Copyright © 2019 Charlie Osmer. All rights reserved.
//

import Foundation
import API
import ImageLoading

struct CurrentConditionsViewModel {
    var stationName: String

    var timestamp: Date
    var icon: LoadableImageAsset
    var description: String
    var temperature: Measurement<UnitTemperature>
    var windChill: Measurement<UnitTemperature>?
    var heatIndex: Measurement<UnitTemperature>?
    var dewpoint: Measurement<UnitTemperature>?
    var humidity: Measurement<UnitHumidity>?

    var timestampFormatter: Formatter { Formatters.timestamp }
    var temperatureFormatter: Formatter { Formatters.temperature }
    var humidityFormatter: Formatter { Formatters.humidity }
}

extension CurrentConditionsViewModel {
    private static var iconMetrics: Endpoints.Icon.IconMetrics {
        .init(size: .large, fontSize: 20 )
    }

    init(conditions: CurrentConditionsModel) {
        stationName = conditions.station.name

        timestamp = conditions.observation.timestamp
        icon = .url(conditions.observation.icon.with(Self.iconMetrics).buildURL())
        description = conditions.observation.textDescription
        temperature = Measurement(model: conditions.observation.temperature)
        windChill = conditions.observation.windChill.map { Measurement(model: $0) }
        heatIndex = conditions.observation.heatIndex.map { Measurement(model: $0) }
        dewpoint = conditions.observation.dewpoint.map { Measurement(model: $0) }
        humidity = conditions.observation.relativeHumidity.map { Measurement(model: $0) }
    }
}
