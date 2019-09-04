//
//  Created by Charlie Osmer on 9/4/19.
//  Copyright © 2019 Charlie Osmer. All rights reserved.
//

import CoreLocation

extension CLLocationCoordinate2D: Equatable {
    public static func ==(lhs: CLLocationCoordinate2D, rhs: CLLocationCoordinate2D) -> Bool {
        return lhs.latitude == rhs.latitude && lhs.longitude == rhs.longitude
    }
}
