//
//  Created by Charlie Osmer on 9/7/19.
//  Copyright © 2019 Charlie Osmer. All rights reserved.
//

import SwiftUI

extension ViewBuilder {
    static func buildEither<Success, Failure, SuccessContent, FailureContent>
        (_ result: Result<Success, Failure>, @ViewBuilder success: (Success) -> SuccessContent, @ViewBuilder failure: (Failure) -> FailureContent)
        -> _ConditionalContent<SuccessContent, FailureContent> where SuccessContent: View, FailureContent: View
    {
        switch result {
        case .success(let value):
            return ViewBuilder.buildEither(first: success(value))
        case .failure(let value):
            return ViewBuilder.buildEither(second: failure(value))
        }
    }
}

extension Result {
    func buildView<SuccessContent, FailureContent>
        (@ViewBuilder success: (Success) -> SuccessContent, @ViewBuilder failure: (Failure) -> FailureContent) ->
        _ConditionalContent<SuccessContent, FailureContent> where SuccessContent: View, FailureContent: View
    {
        return ViewBuilder.buildEither(self, success: success, failure: failure)
    }
}
