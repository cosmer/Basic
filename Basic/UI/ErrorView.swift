//
//  Created by Charlie Osmer on 8/25/19.
//  Copyright © 2019 Charlie Osmer. All rights reserved.
//

import SwiftUI

struct ErrorView: View {
    let error: Error

    var body: some View {
        Text(error.localizedDescription)
    }
}

struct ErrorView_Previews: PreviewProvider {
    private struct PreviewError: Error, LocalizedError {
        var errorDescription: String? {
            "This is a preview error."
        }
    }

    static var previews: some View {
        ErrorView(error: PreviewError())
    }
}
