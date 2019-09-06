//
//  Created by Charlie Osmer on 9/3/19.
//  Copyright © 2019 Charlie Osmer. All rights reserved.
//

import Foundation

extension Endpoints {
    /// Returns active alerts for the given zone.
    ///
    /// `/alerts/active/zone/{zoneId}`
    public typealias ActiveAlerts = Endpoint<EndpointTags.ActiveAlerts>

    public static func activeAlerts(zoneId: ZoneID) -> ActiveAlerts {
        ActiveAlerts(pathComponents: [
            "alerts",
            "active",
            "zone",
            zoneId.rawValue,
        ])
    }
}

extension EndpointTags {
    public enum ActiveAlerts: EndpointTag {
        public typealias Model = AlertsModel
    }
}
