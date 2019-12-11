//
//  Created by Charles Osmer on 12/11/19.
//  Copyright © 2019 Charlie Osmer. All rights reserved.
//

import Foundation
import Combine

final class LoadableResultViewModel<Value>: ObservableObject {
    @Published private(set) var value: LoadableResult<Value, Error> = .none

    private let publisher: AnyPublisher<Value, Error>
    private var cancellable: AnyCancellable?

    init(publisher: AnyPublisher<Value, Error>) {
        self.publisher = publisher
    }

    func load() {
        guard cancellable == nil else {
            return
        }

        value = .loading
        cancellable = publisher
            .map { LoadableResult.success($0) }
            .catch { Just(LoadableResult.failure($0)) }
            .receive(on: RunLoop.main)
            .sink { [unowned self] in self.value = $0 }
    }
}
