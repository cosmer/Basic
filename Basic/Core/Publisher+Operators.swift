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

    @inlinable func flatMapResult<V, S, F>(maxPublishers: Subscribers.Demand = .unlimited, transform: @escaping (S) -> AnyResultPublisher<V, F>)
        -> Publishers.FlatMap<AnyResultPublisher<V, F>, Self> where Output == Result<S, F>, Failure == Never
    {
        return flatMap(maxPublishers: maxPublishers) { (result) -> AnyResultPublisher<V, F> in
            switch result {
            case .success(let value):
                return transform(value)
            case .failure(let error):
                return Just(.failure(error))
                    .eraseToAnyPublisher()
            }
        }
    }
}
