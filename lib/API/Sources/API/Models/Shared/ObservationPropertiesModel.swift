//
//  Created by Charlie Osmer on 8/21/19.
//  Copyright © 2019 Charlie Osmer. All rights reserved.
//

import Foundation

public struct ObservationPropertiesModel: Decodable {
    public var elevation: QuantitativeValueModel<Double, UnitLength>
    public var station: URL
    public var timestamp: Date
    public var textDescription: String
    public var icon: Endpoints.Icon
    public var temperature: QuantitativeValueModel<Double, UnitTemperature>
    public var windChill: QuantitativeValueModel<Double?, UnitTemperature>
    public var heatIndex: QuantitativeValueModel<Double?, UnitTemperature>
    public var dewpoint: QuantitativeValueModel<Double?, UnitTemperature>
    public var windSpeed: QuantitativeValueModel<Double?, UnitSpeed>
    public var windDirection: QuantitativeValueModel<Double?, UnitDirection>
    public var windGust: QuantitativeValueModel<Double?, UnitSpeed>
    public var relativeHumidity: QuantitativeValueModel<Double?, UnitHumidity>
}
