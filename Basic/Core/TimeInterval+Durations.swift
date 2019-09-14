//
//  Created by Charlie Osmer on 9/10/19.
//  Copyright © 2019 Charlie Osmer. All rights reserved.
//

import Foundation

extension TimeInterval {
    static func minutes(_ minutes: TimeInterval) -> TimeInterval {
        return minutes*60
    }

    static func hours(_ hours: TimeInterval) -> TimeInterval {
        return hours*60*60
    }
}
