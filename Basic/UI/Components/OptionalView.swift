//
//  Created by Charlie Osmer on 9/20/19.
//  Copyright © 2019 Charlie Osmer. All rights reserved.
//

import SwiftUI

struct OptionalView<Wrapped, SomeContent, NoneContent>: View where SomeContent: View, NoneContent: View {
    let body: _ConditionalContent<SomeContent, NoneContent>

    init(_ optional: Optional<Wrapped>, @ViewBuilder some: (Wrapped) -> SomeContent, @ViewBuilder none: () -> NoneContent) {
        switch optional {
        case .some(let value):
            body = ViewBuilder.buildEither(first: some(value))
        case .none:
            body = ViewBuilder.buildEither(second: none())
        }
    }
}
