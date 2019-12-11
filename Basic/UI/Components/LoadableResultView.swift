//
//  Created by Charles Osmer on 11/5/19.
//  Copyright © 2019 Charlie Osmer. All rights reserved.
//

import SwiftUI

struct LoadableResultView<Success, SuccessContent>: View where SuccessContent: View {
    @ObservedObject private(set) var model: LoadableResultViewModel<Success>

    let success: (Success) -> SuccessContent

    var body: TupleView<(LoadingView?, SuccessContent?, ErrorView?)> {
        model.load()

        switch model.value {
        case .none:
            return ViewBuilder.buildBlock(nil, nil, nil)
        case .loading:
            return ViewBuilder.buildBlock(LoadingView(), nil, nil)
        case .success(let value):
            return ViewBuilder.buildBlock(nil, success(value), nil)
        case .failure(let error):
            return ViewBuilder.buildBlock(nil, nil, ErrorView(error: error))
        }
    }
}
