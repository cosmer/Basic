//
//  Created by Charlie Osmer on 9/28/19.
//  Copyright © 2019 Charlie Osmer. All rights reserved.
//

import Foundation

precedencegroup ForwardPipe {
    associativity: left
    higherThan: LogicalConjunctionPrecedence
}

infix operator |> : ForwardPipe

public func |> <T, U>(value: T, function: (T) -> U) -> U {
    return function(value)
}
