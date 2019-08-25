//
//  Created by Charlie Osmer on 8/23/19.
//  Copyright © 2019 Charlie Osmer. All rights reserved.
//

import Foundation

public struct HourlyForecastModel: Decodable {
    public struct Period: Decodable {
        public var number: Int
        public var startTime: Date
        public var endTime: Date
        public var isDaytime: Bool
        public var temperature: Double
        public var temperatureUnit: UnitModel<UnitTemperature>
        public var windSpeed: String
        public var windDirection: String
        public var icon: Endpoints.Icon
        public var shortForecast: String
    }

    public struct Properties: Decodable {
        public var updated: Date
        public var units: UnitSystem
        public var forecastGenerator: String
        public var generatedAt: Date
        public var updateTime: Date
        public var elevation: QuantitativeValueModel<Double, UnitLength>
        public var periods: [Period]
    }

    public var geometry: GeometryModel
    public var properties: Properties
}
