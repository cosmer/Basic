//
//  Created by Charles Osmer on 11/18/19.
//  Copyright © 2019 Charlie Osmer. All rights reserved.
//

import SwiftUI

extension View {
    func fixMultilineTextTruncation() -> some View {
        fixedSize(horizontal: false, vertical: true)
    }
}
