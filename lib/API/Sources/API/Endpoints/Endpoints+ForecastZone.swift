//
//  Created by Charlie Osmer on 8/16/19.
//  Copyright © 2019 Charlie Osmer. All rights reserved.
//

import Foundation

extension Endpoints {
    /// Returns metadata about a given zone.
    ///
    /// `/zones/forecast/{zoneId}`
    public typealias ForecastZone = Endpoint<EndpointTags.ForecastZone>
}

extension EndpointTags {
    public enum ForecastZone: EndpointTag {
        public typealias Model = Never
    }
}

extension Endpoint where Tag == EndpointTags.ForecastZone {
    public func observations() -> Endpoints.Observations {
        return appending(pathComponent: "observations")
    }
}
