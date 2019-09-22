//
//  Created by Charlie Osmer on 9/21/19.
//  Copyright © 2019 Charlie Osmer. All rights reserved.
//

import Foundation

public protocol CustomLoggedError: Error {
    var loggedError: Error { get }
}

func loggedError(from error: Error) -> Error {
    var error = error
    while let custom = error as? CustomLoggedError {
        error = custom.loggedError
    }
    return error
}
