//
//  Created by Charlie Osmer on 8/21/19.
//  Copyright © 2019 Charlie Osmer. All rights reserved.
//

import Foundation

extension Endpoints {
    /// Returns the latest observation for a station.
    ///
    /// `/stations/{stationId}/observations/latest`
    public typealias LatestObservation = Endpoint<EndpointTags.LatestObservation>
}

extension EndpointTags {
    public enum LatestObservation: EndpointTag {
        public typealias Model = ObservationModel
    }
}
