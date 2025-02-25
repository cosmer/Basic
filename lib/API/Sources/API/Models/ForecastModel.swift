//
//  Created by Charlie Osmer on 8/4/19.
//  Copyright © 2019 Charlie Osmer. All rights reserved.
//

import Foundation

public struct ForecastModel: Decodable {
    public struct Period: Decodable {
        public var number: Int
        public var name: String
        public var startTime: Date
        public var endTime: Date
        public var isDaytime: Bool
        public var temperature: Int
        public var temperatureUnit: UnitModel<UnitTemperature>
        public var temperatureTrend: TemperatureTrend?
        public var windSpeed: String
        public var windDirection: String
        public var icon: Endpoints.Icon
        public var shortForecast: String
        public var detailedForecast: String
    }

    public struct Properties: Decodable {
        public var updated: Date
        public var units: UnitSystem
        public var forecastGenerator: String
        public var generatedAt: Date
        public var updateTime: Date
        public var validTimes: ISO8601TimeInterval
        public var elevation: QuantitativeValueModel<Double, UnitLength>
        public var periods: [Period]
    }

    public var geometry: GeometryModel
    public var properties: Properties
}
