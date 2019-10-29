//
//  Created by Charles Osmer on 10/25/19.
//  Copyright © 2019 Charlie Osmer. All rights reserved.
//

import Foundation

extension Endpoints {
    /// Returns raw numerical forecast data for a 2.5km grid area.
    ///
    /// `/gridpoints/{wfo}/{x},{y}`
    public typealias ForecastGridData = Endpoint<EndpointTags.ForecastGridData>
}

extension EndpointTags {
    public enum ForecastGridData: EndpointTag {
        public typealias Model = ForecastGridDataModel
    }
}
