//
//  Created by Charlie Osmer on 9/6/19.
//  Copyright © 2019 Charlie Osmer. All rights reserved.
//

import SwiftUI

extension ViewBuilder {
    static func buildEither<Left, Right, LeftContent, RightContent>
        (_ either: Either<Left, Right>, @ViewBuilder left: (Left) -> LeftContent, @ViewBuilder right: (Right) -> RightContent)
        -> _ConditionalContent<LeftContent, RightContent> where LeftContent: View, RightContent: View
    {
        switch either {
        case .left(let value):
            return ViewBuilder.buildEither(first: left(value))
        case .right(let value):
            return ViewBuilder.buildEither(second: right(value))
        }
    }
}

extension Either {
    func buildView<LeftContent, RightContent>
        (@ViewBuilder left: (Left) -> LeftContent, @ViewBuilder right: (Right) -> RightContent) ->
        _ConditionalContent<LeftContent, RightContent> where LeftContent: View, RightContent: View
    {
        return ViewBuilder.buildEither(self, left: left, right: right)
    }
}
