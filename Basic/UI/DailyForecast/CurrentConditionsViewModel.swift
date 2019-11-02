//
//  Created by Charlie Osmer on 8/17/19.
//  Copyright © 2019 Charlie Osmer. All rights reserved.
//

import Foundation
import API
import ImageLoading
import Combine

struct CurrentConditionsViewModel {
    var stationName: String

    var timestamp: Date
    var icon: LoadableImageAsset
    var description: String
    var temperature: Measurement<UnitTemperature>?
    var dewpoint: Measurement<UnitTemperature>?
    var humidity: Measurement<UnitHumidity>?

    var temperatureFormatter: MeasurementFormatter { Formatters.temperature }
    var humidityFormatter: PercentFormatter { Formatters.percent }

    func timestampFormatter(for referenceDate: Date) -> AnyFormatter<Date> {
        AnyFormatter { Formatters.timestamp.localizedString(for: $0, relativeTo: referenceDate) }
    }

    func isOutdated(at date: Date) -> Bool {
        let interval = DateInterval(start: timestamp, end: date)
        return interval.duration > .hours(1.5)
    }

    func referenceDatePublisher() -> Publishers.Autoconnect<Timer.TimerPublisher> {
        return Timer.publish(every: .minutes(1), on: .main, in: .common)
            .autoconnect()
    }
}

extension CurrentConditionsViewModel {
    private static var iconMetrics: Endpoints.Icon.IconMetrics {
        .init(size: .large, fontSize: 20)
    }

    init(conditions: CurrentConditionsModel) {
        stationName = conditions.station.name

        timestamp = conditions.observation.timestamp
        icon = .url(conditions.observation.icon.with(Self.iconMetrics).buildURL())
        description = conditions.observation.textDescription
        temperature = conditions.observation.temperature.map { Measurement(model: $0) }
        dewpoint = conditions.observation.dewpoint.map { Measurement(model: $0) }
        humidity = conditions.observation.relativeHumidity.map { Measurement(model: $0) }
    }
}
