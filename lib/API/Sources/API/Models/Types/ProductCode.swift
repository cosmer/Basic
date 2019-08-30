//
//  Created by Charlie Osmer on 8/25/19.
//  Copyright © 2019 Charlie Osmer. All rights reserved.
//

import Foundation

public struct ProductCode: Equatable {
    var rawValue: String
}

extension ProductCode: Decodable {
    public init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        rawValue = try container.decode(String.self)
    }
}

public extension ProductCode {
    static let forecastDiscussion = ProductCode(rawValue: "AFD")
}
