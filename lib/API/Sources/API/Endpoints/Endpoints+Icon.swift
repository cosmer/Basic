//
//  Created by Charlie Osmer on 8/12/19.
//  Copyright © 2019 Charlie Osmer. All rights reserved.
//

import Foundation

extension Endpoints {
    public typealias Icon = Endpoint<EndpointTags.Icon>
}

extension EndpointTags {
    public enum Icon: EndpointTag {
        public typealias Model = Never
    }
}

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

extension Endpoint where Tag == EndpointTags.Icon {
    public func with(_ metrics: IconMetrics) -> Endpoint {
        var endpoint = self

        if let size = metrics.size {
            endpoint.queryItems.append((
                name: "size",
                value: size.rawValue
            ))
        }

        if let fontSize = metrics.fontSize {
            endpoint.queryItems.append((
                name: "fontsize",
                value: "\(fontSize)"
            ))
        }

        return endpoint
    }
}
