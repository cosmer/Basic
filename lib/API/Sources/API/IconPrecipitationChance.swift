//
//  Created by Charles Osmer on 11/7/19.
//  Copyright © 2019 Charlie Osmer. All rights reserved.
//

import Foundation

public enum IconPrecipitationChance: Equatable {
    case full(Int)
    case transition(Int?, Int?)
    case split(Int?, Int?)
}
