//
//  Created by Charlie Osmer on 8/25/19.
//  Copyright © 2019 Charlie Osmer. All rights reserved.
//

import Foundation

extension Endpoints {
    /// Returns a list of text products of a given type for a given issuance location.
    ///
    /// `/products/types/{typeId}/locations/{locationId}`
    public typealias Products = Endpoint<EndpointTags.Products>

    public static func products(officeId: OfficeID, code: ProductCode) -> Products {
        Products(pathComponents: [
            "products",
            "types",
            code.rawValue,
            "locations",
            officeId.rawValue,
        ])
    }
}

extension EndpointTags {
    public enum Products: EndpointTag {
        public typealias Model = ProductsModel
    }
}
