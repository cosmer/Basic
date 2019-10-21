//
//  Created by Charlie Osmer on 9/4/19.
//  Copyright © 2019 Charlie Osmer. All rights reserved.
//

import Foundation

extension Result {
    var success: Success? {
        if case let .success(value) = self {
            return value
        } else {
            return nil
        }
    }

    var failure: Error? {
        if case let .failure(error) = self {
            return error
        } else {
            return nil
        }
    }
}

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
    static func compareSuccess(_ lhs: Self, _ rhs: Self) -> Bool {
        switch (lhs, rhs) {
        case let (.success(lhs), .success(rhs)):
            return lhs == rhs
        default:
            return false
        }
    }
}

extension Result {
    static func compareSuccess<T>(by keyPath: KeyPath<Success, T>) -> (Self, Self) -> Bool where T: Equatable {
        return { (lhs, rhs) in
            switch (lhs, rhs) {
            case let (.success(lhs), .success(rhs)):
                return lhs[keyPath: keyPath] == rhs[keyPath: keyPath]
            default:
                return false
            }
        }
    }
}
