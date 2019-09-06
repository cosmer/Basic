//
//  Created by Charlie Osmer on 8/25/19.
//  Copyright © 2019 Charlie Osmer. All rights reserved.
//

import Foundation

extension Endpoints {
    /// Returns metadata about a NWS forecast office.
    ///
    /// `/offices/{officeId}`
    public typealias ForecastOffice = Endpoint<EndpointTags.ForecastOffice>
}

extension EndpointTags {
    public enum ForecastOffice: EndpointTag {
        public typealias Model = Never
    }
}

extension Endpoint where Tag == EndpointTags.ForecastOffice {
    public func officeId() -> OfficeID {
        return OfficeID(rawValue: buildURL().lastPathComponent)
    }
}
