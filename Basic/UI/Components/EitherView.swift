//
//  Created by Charlie Osmer on 9/6/19.
//  Copyright © 2019 Charlie Osmer. All rights reserved.
//

import SwiftUI

struct EitherView<Left, Right, LeftContent, RightContent>: View where LeftContent: View, RightContent: View {
    let body: _ConditionalContent<LeftContent, RightContent>

    init(_ either: Either<Left, Right>, @ViewBuilder left: (Left) -> LeftContent, @ViewBuilder right: (Right) -> RightContent) {
        switch either {
        case .left(let value):
            body = ViewBuilder.buildEither(first: left(value))
        case .right(let value):
            body = ViewBuilder.buildEither(second: right(value))
        }
    }
}
