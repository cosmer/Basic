//
//  Created by Charlie Osmer on 8/21/19.
//  Copyright © 2019 Charlie Osmer. All rights reserved.
//

import Foundation

public struct GeometryPointModel {
    public var position: GeometryModel.Position
}

extension GeometryPointModel: Decodable {
    public init(from decoder: Decoder) throws {
        let geometry = try GeometryModel(from: decoder)
        guard case let .point(position) = geometry.object else {
            throw UnexpectedGeometryTypeError(expected: "point", actual: geometry.object.caseName)
        }
        self.position = position
    }
}
