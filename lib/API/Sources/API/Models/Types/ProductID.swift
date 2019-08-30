//
//  Created by Charlie Osmer on 8/25/19.
//  Copyright © 2019 Charlie Osmer. All rights reserved.
//

import Foundation

public struct ProductID {
    var rawValue: String
}

extension ProductID: Decodable {
    public init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        rawValue = try container.decode(String.self)
    }
}
