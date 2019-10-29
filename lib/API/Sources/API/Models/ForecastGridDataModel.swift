//
//  Created by Charles Osmer on 10/25/19.
//  Copyright © 2019 Charlie Osmer. All rights reserved.
//

import Foundation

public struct ForecastGridDataModel: Decodable {
    public struct ForecastData<Unit>: Decodable where Unit: UnitDecodable {
        public struct Value: Decodable {
            public var validTime: ISO8601TimeInterval
            public var value: Double
        }

        public var sourceUnit: String
        public var uom: UnitModel<Unit>
        public var values: [Value]
    }

    public struct Properties: Decodable {
        public var temperature: ForecastData<UnitTemperature>
        public var apparentTemperature: ForecastData<UnitTemperature>
        public var relativeHumidity: ForecastData<UnitHumidity>
        public var windDirection: ForecastData<UnitDirection>
        public var windSpeed: ForecastData<UnitSpeed>
        public var windGust: ForecastData<UnitSpeed>
        public var skyCover: ForecastData<UnitSkyCover>
        public var probabilityOfPrecipitation: ForecastData<UnitProbability>
        public var quantitativePrecipitation: ForecastData<UnitLength>
        public var iceAccumulation: ForecastData<UnitLength>
        public var snowfallAmount: ForecastData<UnitLength>
    }

    public var properties: Properties
}
