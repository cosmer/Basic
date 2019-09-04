//
//  Created by Charlie Osmer on 9/4/19.
//  Copyright © 2019 Charlie Osmer. All rights reserved.
//

import Foundation

extension Result {
    func map<NewSuccess>(_ keyPath: KeyPath<Success, NewSuccess>) -> Result<NewSuccess, Failure> {
        switch self {
        case let .success(value):
            return .success(value[keyPath: keyPath])
        case let .failure(error):
            return .failure(error)
        }
    }
}

extension Result where Success: Equatable {
    static func equalValues(_ lhs: Self, _ rhs: Self) -> Bool {
        switch (lhs, rhs) {
        case let (.success(lhs), .success(rhs)):
            return lhs == rhs
        default:
            return false
        }
    }
}
