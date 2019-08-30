//
//  Created by Charlie Osmer on 8/25/19.
//  Copyright © 2019 Charlie Osmer. All rights reserved.
//

import Foundation

public struct ProductsModel: Decodable {
    public struct Product: Decodable {
        public var id: ProductID
        public var wmoCollectiveId: String
        public var issuingOffice: String
        public var issuanceTime: Date
        public var productCode: ProductCode
        public var productName: String
    }

    public var products: [Product]

    enum CodingKeys: String, CodingKey {
        case products = "@graph"
    }
}
