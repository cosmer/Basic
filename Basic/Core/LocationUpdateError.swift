//
//  Created by Charlie Osmer on 9/16/19.
//  Copyright © 2019 Charlie Osmer. All rights reserved.
//

import Foundation
import CoreLocation

struct LocationUpdateError: Error {
    enum UnderlyingError {
        case cl(CLError)
        case other(Error)
    }

    var underlyingError: UnderlyingError

    init(error: Error) {
        if let error = error as? CLError {
            self.underlyingError = .cl(error)
        } else {
            self.underlyingError = .other(error)
        }
    }
}

extension LocationUpdateError: LocalizedError {
    var errorDescription: String? {
        switch underlyingError {
        case let .cl(error):
            return "Location update failed (\(error.code.errorDescription))."
        case let .other(error):
            return "Location update failed (\(error.localizedDescription))."
        }
    }
}

private extension CLError.Code {
    var errorDescription: String {
        switch self {
        case .locationUnknown:
            return "location unknown"
        case .denied:
            return "denied"
        case .network:
            return "network"
        default:
            return "error code \(self.rawValue)"
        }
    }
}
