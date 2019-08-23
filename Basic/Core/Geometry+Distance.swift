//
//  Created by Charlie Osmer on 8/22/19.
//  Copyright © 2019 Charlie Osmer. All rights reserved.
//

import Foundation
import API
import CoreLocation

extension GeometryModel.Position {
    func distance(to position: GeometryModel.Position) -> Double {
        let a = CLLocation(self)
        let b = CLLocation(position)
        return b.distance(from: a)
    }
}

extension GeometryPointModel {
    func distance(to point: GeometryPointModel) -> Double {
        return position.distance(to: point.position)
    }
}

private extension CLLocation {
    convenience init(_ position: GeometryModel.Position) {
        self.init(latitude: position.latitude, longitude: position.longitude)
    }
}
