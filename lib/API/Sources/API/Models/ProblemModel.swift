//
//  Created by Charlie Osmer on 8/5/19.
//  Copyright © 2019 Charlie Osmer. All rights reserved.
//

import Foundation

struct ProblemModel: Decodable {
    var title: String
    var type: URL
    var status: Int
    var detail: String
    var instance: URL
    var correlationId: UUID
}
