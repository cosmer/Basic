//
//  Created by Charlie Osmer on 8/25/19.
//  Copyright © 2019 Charlie Osmer. All rights reserved.
//

import Foundation

public struct ProductTypesModel: Decodable {
    public struct ProductType: Decodable {
        public var productCode: ProductCode
        public var productName: String
    }

    public var types: [ProductType]

    enum CodingKeys: String, CodingKey {
        case types = "@graph"
    }
}
