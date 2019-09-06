//
//  Created by Charlie Osmer on 9/6/19.
//  Copyright © 2019 Charlie Osmer. All rights reserved.
//

import Foundation

enum Either<Left, Right> {
    case left(Left)
    case right(Right)
}
