//
//  Created by Charlie Osmer on 8/16/19.
//  Copyright © 2019 Charlie Osmer. All rights reserved.
//

import Foundation

extension Endpoints {
    /// Returns a list of observations for a given zone.
    ///
    /// `/zones/forecast/{zoneId}/observations`
    public typealias Observations = Endpoint<EndpointTags.Observations>
}

extension EndpointTags {
    public enum Observations: EndpointTag {
        public typealias Model = ObservationsModel
    }
}

extension Endpoint where Tag == EndpointTags.Observations {
    public func with(limit: Int?) -> Endpoints.Observations {
        var queryItems: [Endpoint.QueryItem] = []

        if let limit = limit {
            queryItems.append((
                name: "limit",
                value: "\(limit)"
            ))
        }

        return replacingQueryItems(with: queryItems)
    }
}
