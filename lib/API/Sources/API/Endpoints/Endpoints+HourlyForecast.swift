//
//  Created by Charlie Osmer on 8/23/19.
//  Copyright © 2019 Charlie Osmer. All rights reserved.
//

import Foundation

extension Endpoints {
    /// Returns a textual hourly forecast for a 2.5km grid area.
    ///
    /// `/gridpoints/{wfo}/{x},{y}/forecast/hourly`
    public typealias HourlyForecast = Endpoint<EndpointTags.HourlyForecast>
}

extension EndpointTags {
    public enum HourlyForecast: EndpointTag {
        public typealias Model = HourlyForecastModel
    }
}
