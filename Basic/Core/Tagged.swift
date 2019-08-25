//
//  Created by Charlie Osmer on 8/24/19.
//  Copyright © 2019 Charlie Osmer. All rights reserved.
//

import Foundation

struct Tagged<RawValue, Tag> {
    var rawValue: RawValue
}

extension Tagged: Equatable where RawValue: Equatable {

}

extension Tagged: Hashable where RawValue: Hashable {

}
