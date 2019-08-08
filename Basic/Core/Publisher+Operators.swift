//
//  Created by Charlie Osmer on 8/7/19.
//  Copyright © 2019 Charlie Osmer. All rights reserved.
//

import Combine

public typealias AnyResultPublisher<Success, Failure> =
    AnyPublisher<Result<Success, Failure>, Never> where Failure: Error

public extension Publisher {
    typealias Materialized<Upstream, Output> =
        Publishers.Catch<Publishers.Map<Upstream, Output>, Just<Output>> where Upstream: Publisher

    @inlinable func materialize() -> Materialized<Self, Result<Output, Failure>> {
        return map { .success($0) }
            .catch { Just(.failure($0)) }
    }
}
