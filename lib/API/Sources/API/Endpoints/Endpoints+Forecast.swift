//
//  Created by Charlie Osmer on 8/5/19.
//  Copyright © 2019 Charlie Osmer. All rights reserved.
//

import Foundation

extension Endpoints {
    /// Returns a textual forecast for a 2.5km grid area.
    ///
    /// `/gridpoints/{wfo}/{x},{y}/forecast`
    public typealias Forecast = Endpoint<EndpointTags.Forecast>
}

extension EndpointTags {
    public enum Forecast: EndpointTag {
        public typealias Model = ForecastModel
    }
}
