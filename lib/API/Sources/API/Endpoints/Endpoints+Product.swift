//
//  Created by Charlie Osmer on 8/25/19.
//  Copyright © 2019 Charlie Osmer. All rights reserved.
//

import Foundation

extension Endpoints {
    /// Returns a specific text product.
    ///
    /// `/products/{productId}`
    public typealias Product = Endpoint<EndpointTags.Product>

    public static func product(id: ProductID) -> Product {
        Product(pathComponents: [
            "products",
            id.rawValue,
        ])
    }
}

extension EndpointTags {
    public enum Product: EndpointTag {
        public typealias Model = ProductModel
    }
}
