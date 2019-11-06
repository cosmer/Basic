//
//  Created by Charles Osmer on 11/5/19.
//  Copyright © 2019 Charlie Osmer. All rights reserved.
//

import SwiftUI

struct LoadableResultView<Success, SuccessContent>: View where SuccessContent: View {
    let body: TupleView<(LoadingView?, SuccessContent?, ErrorView?)>

    init(_ result: LoadableResult<Success, Error>, @ViewBuilder success: (Success) -> SuccessContent) {
        switch result {
        case .loading:
            body = ViewBuilder.buildBlock(LoadingView(), nil, nil)
        case .success(let value):
            body = ViewBuilder.buildBlock(nil, success(value), nil)
        case .failure(let error):
            body = ViewBuilder.buildBlock(nil, nil, ErrorView(error: error))
        }
    }
}
