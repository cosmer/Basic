//
//  Created by Charlie Osmer on 9/18/19.
//  Copyright © 2019 Charlie Osmer. All rights reserved.
//

import Foundation

func encodeUserInfo(_ userInfo: [String: Any]) throws -> String? {
    if userInfo.isEmpty {
        return nil
    }

    let encoder = JSONEncoder()
    encoder.outputFormatting = [.sortedKeys, .withoutEscapingSlashes]

    let encodable = userInfo.compactMapValues(AnyEncodable.init)
    let data = try encoder.encode(encodable)
    return String(data: data, encoding: .utf8)
}
