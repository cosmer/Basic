//
//  Created by Charlie Osmer on 8/5/19.
//  Copyright © 2019 Charlie Osmer. All rights reserved.
//

import Foundation

extension Endpoints {
    /// Returns metadata about a given latitude/longitude point.
    ///
    /// `/points/{point}`
    public typealias Points = Endpoint<EndpointTags.Points>

    public static func points(latitude: Double, longitude: Double) -> Points {
        Points(pathComponents: [
            "points",
            "\(latitude),\(longitude)"
        ])
    }
}

extension EndpointTags {
    public enum Points: EndpointTag {
        public typealias Model = PointsModel
    }
}
