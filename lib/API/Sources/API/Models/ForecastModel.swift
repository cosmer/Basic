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
        public var temperatureUnit: String
        public var windSpeed: String
        public var windDirection: String
        public var icon: URL
        public var shortForecast: String
        public var detailedForecast: String
    }

    public struct Properties: Decodable {
        public var updated: Date
        public var units: UnitSystem
        public var forecastGenerator: String
        public var generatedAt: Date
        public var updateTime: Date
        public var elevation: MeasurementModel
        public var periods: [Period]
    }

    public var geometry: GeometryModel
    public var properties: Properties
}
