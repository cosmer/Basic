//
//  Created by Charlie Osmer on 9/20/19.
//  Copyright © 2019 Charlie Osmer. All rights reserved.
//

import SwiftUI

extension ViewBuilder {
    static func buildOptional<Wrapped, SomeContent, NoneContent>
        (_ optional: Optional<Wrapped>, @ViewBuilder some: (Wrapped) -> SomeContent, @ViewBuilder none: () -> NoneContent)
        -> _ConditionalContent<SomeContent, NoneContent> where SomeContent: View, NoneContent: View
    {
        switch optional {
        case .some(let value):
            return ViewBuilder.buildEither(first: some(value))
        case .none:
            return ViewBuilder.buildEither(second: none())
        }
    }
}

extension Optional {
    func buildView<SomeContent, NoneContent>
        (@ViewBuilder some: (Wrapped) -> SomeContent, @ViewBuilder none: () -> NoneContent) ->
        _ConditionalContent<SomeContent, NoneContent> where SomeContent: View, NoneContent: View
    {
        return ViewBuilder.buildOptional(self, some: some, none: none)
    }
}
