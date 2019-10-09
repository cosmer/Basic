//
//  Created by Charlie Osmer on 9/7/19.
//  Copyright © 2019 Charlie Osmer. All rights reserved.
//

import SwiftUI

struct ResultView<Success, Failure, SuccessContent, FailureContent>: View where Failure: Error, SuccessContent: View, FailureContent: View {
    let body: _ConditionalContent<SuccessContent, FailureContent>

    init(_ result: Result<Success, Failure>, @ViewBuilder success: (Success) -> SuccessContent, @ViewBuilder failure: (Failure) -> FailureContent) {
        switch result {
        case .success(let value):
            body = ViewBuilder.buildEither(first: success(value))
        case .failure(let value):
            body = ViewBuilder.buildEither(second: failure(value))
        }
    }
}
