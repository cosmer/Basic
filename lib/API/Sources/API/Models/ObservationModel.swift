//
//  Created by Charlie Osmer on 8/21/19.
//  Copyright © 2019 Charlie Osmer. All rights reserved.
//

import Foundation

public struct ObservationModel: Decodable {
    public var id: URL
    public var geometry: GeometryModel
    public var properties: ObservationPropertiesModel
}
