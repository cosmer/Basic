//
//  Created by Charlie Osmer on 9/16/19.
//  Copyright © 2019 Charlie Osmer. All rights reserved.
//

import Foundation
import CoreLocation
import OhNo

struct LocationUpdateError: Error {
    enum WrappedError {
        case cl(CLError)
        case other(Error)
    }

    let wrapped: WrappedError

    init(error: Error) {
        if let error = error as? CLError {
            self.wrapped = .cl(error)
        } else {
            self.wrapped = .other(error)
        }
    }
}

extension LocationUpdateError: LocalizedError {
    var errorDescription: String? {
        switch wrapped {
        case let .cl(error):
            return "Location update failed (\(error.code.errorDescription))."
        case let .other(error):
            return "Location update failed (\(error.localizedDescription))."
        }
    }
}

extension LocationUpdateError: CustomLoggedError {
    var loggedError: Error {
        switch wrapped {
        case let .cl(error):
            return error
        case let .other(error):
            return error
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
