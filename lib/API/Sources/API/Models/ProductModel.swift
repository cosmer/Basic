//
//  Created by Charlie Osmer on 8/25/19.
//  Copyright © 2019 Charlie Osmer. All rights reserved.
//

import Foundation

public struct ProductModel: Decodable {
    public var id: ProductID
    public var issuingOffice: String
    public var issuanceTime: Date
    public var productCode: ProductCode
    public var productName: String
    public var productText: String
}
