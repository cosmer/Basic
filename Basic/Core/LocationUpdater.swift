//
//  Created by Charlie Osmer on 8/5/19.
//  Copyright © 2019 Charlie Osmer. All rights reserved.
//

import Foundation
import CoreLocation
import Combine

final class LocationUpdater: NSObject {
    let didUpdateLocation = PassthroughSubject<Result<CLLocation, LocationUpdateError>, Never>()

    private let locationManager = CLLocationManager()
    private var needsRequestLocationWhenAuthorized = false

    override init() {
        super.init()
        locationManager.delegate = self
    }

    func requestLocation() {
        if CLLocationManager.authorizationStatus().isAuthorized {
            needsRequestLocationWhenAuthorized = false
            locationManager.requestLocation()
        } else {
            needsRequestLocationWhenAuthorized = true
        }
    }

    func requestAuthorizationIfNeeded() {
        if CLLocationManager.authorizationStatus() == .notDetermined {
            locationManager.requestWhenInUseAuthorization()
        }
    }
}

extension LocationUpdater: CLLocationManagerDelegate {
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        if let location = locations.last {
            didUpdateLocation.send(.success(location))
        }
    }

    func locationManager(_ manager: CLLocationManager, didFailWithError error: Error) {
        let error = LocationUpdateError(error: error)
        didUpdateLocation.send(.failure(error))
    }

    func locationManager(_ manager: CLLocationManager, didChangeAuthorization status: CLAuthorizationStatus) {
        if status.isAuthorized && needsRequestLocationWhenAuthorized {
            needsRequestLocationWhenAuthorized = false
            manager.requestLocation()
        }
    }
}

private extension CLAuthorizationStatus {
    var isAuthorized: Bool {
        switch self {
        case .authorizedAlways, .authorizedWhenInUse:
            return true
        case .notDetermined, .denied, .restricted:
            return false
        @unknown default:
            return false
        }
    }
}
