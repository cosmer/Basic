//
//  Created by Charlie Osmer on 8/8/19.
//  Copyright © 2019 Charlie Osmer. All rights reserved.
//

import Foundation

extension Result {
    var value: Success? {
        switch self {
        case .success(let value):
            return value
        case .failure:
            return nil
        }
    }

    var error: Failure? {
        switch self {
        case .failure(let error):
            return error
        case .success:
            return nil
        }
    }
}
