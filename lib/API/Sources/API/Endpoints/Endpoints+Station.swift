//
//  Created by Charlie Osmer on 8/21/19.
//  Copyright © 2019 Charlie Osmer. All rights reserved.
//

import Foundation

extension Endpoints {
    /// Returns metadata about a given observation station.
    ///
    /// `/stations/{stationId}`
    public typealias Station = Endpoint<EndpointTags.Station>
}

extension EndpointTags {
    public enum Station: EndpointTag {
        public typealias Model = Never
    }
}

extension Endpoint where Tag == EndpointTags.Station {
    public func latestObservation() -> Endpoints.LatestObservation {
        return appending(pathComponents: ["observations", "latest"])
    }
}
