//
//  Created by Charlie Osmer on 8/25/19.
//  Copyright © 2019 Charlie Osmer. All rights reserved.
//

import Foundation

extension Endpoints {
    /// Returns a list of valid text product types for a given issuance location.
    ///
    /// `/products/locations/{locationId}/types`
    public typealias ProductTypes = Endpoint<EndpointTags.ProductTypes>

    public static func productTypes(officeId: OfficeID) -> ProductTypes {
        ProductTypes(pathComponents: [
            "products",
            "locations",
            officeId.rawValue,
            "types",
        ])
    }
}

extension EndpointTags {
    public enum ProductTypes: EndpointTag {
        public typealias Model = ProductTypesModel
    }
}
