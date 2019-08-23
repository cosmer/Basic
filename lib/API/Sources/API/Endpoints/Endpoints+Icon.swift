//
//  Created by Charlie Osmer on 8/12/19.
//  Copyright © 2019 Charlie Osmer. All rights reserved.
//

import Foundation

extension Endpoints {
    /// Returns a forecast icon.
    ///
    /// `/icons/{set}/{timeOfDay}/{first}/{second}`
    public typealias Icon = Endpoint<EndpointTags.Icon>
}

extension EndpointTags {
    public enum Icon: EndpointTag {
        public typealias Model = Never
    }
}

extension Endpoint where Tag == EndpointTags.Icon {
    public struct IconMetrics {
        public enum Size: String {
            case small
            case medium
            case large
        }

        public var size: Size?
        public var fontSize: Int?

        public init(size: Size?, fontSize: Int?) {
            if let fontSize = fontSize {
                precondition(fontSize >= 2 && fontSize <= 24)
            }

            self.size = size
            self.fontSize = fontSize
        }
    }

    public func with(_ metrics: IconMetrics) -> Endpoint {
        var queryItems: [Endpoint.QueryItem] = []

        if let size = metrics.size {
            queryItems.append((
                name: "size",
                value: size.rawValue
            ))
        }

        if let fontSize = metrics.fontSize {
            queryItems.append((
                name: "fontsize",
                value: "\(fontSize)"
            ))
        }

        return replacingQueryItems(with: queryItems)
    }
}
