//
//  Created by Charlie Osmer on 8/21/19.
//  Copyright © 2019 Charlie Osmer. All rights reserved.
//

import Foundation

extension Endpoints {
    /// Returns a list of observation stations usable for a given 2.5km grid area.
    ///
    /// `/gridpoints/{wfo}/{x},{y}/stations`
    public typealias ObservationStations = Endpoint<EndpointTags.ObservationStations>
}

extension EndpointTags {
    public enum ObservationStations: EndpointTag {
        public typealias Model = StationsModel
    }
}
