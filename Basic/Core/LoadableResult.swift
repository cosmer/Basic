//
//  Created by Charles Osmer on 11/5/19.
//  Copyright © 2019 Charlie Osmer. All rights reserved.
//

import Foundation

enum LoadableResult<Success, Failure> where Failure: Error {
    case none
    case loading
    case success(Success)
    case failure(Failure)
}

extension LoadableResult {
    func map<T>(_ transform: (Success) throws -> T) rethrows -> LoadableResult<T, Failure> {
        switch self {
        case .none:
            return .none
        case .loading:
            return .loading
        case .success(let value):
            return try .success(transform(value))
        case .failure(let error):
            return .failure(error)
        }
    }
}
