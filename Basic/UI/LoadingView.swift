//
//  Created by Charlie Osmer on 9/8/19.
//  Copyright © 2019 Charlie Osmer. All rights reserved.
//

import SwiftUI

struct LoadingView: View {
    var body: some View {
        ZStack(alignment: .center) {
            ActivityIndicatorView(style: .large)
        }
    }
}

struct LoadingView_Previews: PreviewProvider {
    static var previews: some View {
        LoadingView()
    }
}
