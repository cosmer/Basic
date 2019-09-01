//
//  Created by Charlie Osmer on 9/1/19.
//  Copyright © 2019 Charlie Osmer. All rights reserved.
//

import SwiftUI

extension UILegibilityWeight {
    init?(weight: LegibilityWeight) {
        switch weight {
        case .regular:
            self = .regular
        case .bold:
            self = .bold
        @unknown default:
            return nil
        }
    }
}
