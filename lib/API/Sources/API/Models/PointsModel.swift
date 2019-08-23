//
//  Created by Charlie Osmer on 8/4/19.
//  Copyright © 2019 Charlie Osmer. All rights reserved.
//

import Foundation

public struct PointsModel: Decodable {
    public struct RelativeLocation: Decodable {
        public struct Properties: Decodable {
            public var city: String
            public var state: String
            public var distance: QuantitativeValueModel<Double, UnitLength>
            public var bearing: QuantitativeValueModel<Double, UnitDirection>
        }

        public var geometry: GeometryModel
        public var properties: Properties
    }

    public struct Properties: Decodable {
        public var cwa: String
        public var forecastOffice: URL
        public var gridX: Int
        public var gridY: Int
        public var forecast: Endpoints.Forecast
        public var forecastHourly: URL
        public var forecastGridData: URL
        public var observationStations: Endpoints.ObservationStations
        public var relativeLocation: RelativeLocation
        public var forecastZone: Endpoints.ForecastZone
        public var county: URL
        public var fireWeatherZone: URL
        public var timeZone: String
        public var radarStation: String
    }

    public var id: URL
    public var geometry: GeometryPointModel
    public var properties: Properties
}
