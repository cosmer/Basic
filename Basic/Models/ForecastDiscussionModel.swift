//
//  Created by Charlie Osmer on 8/26/19.
//  Copyright © 2019 Charlie Osmer. All rights reserved.
//

import Foundation
import Combine
import API

struct ForecastDiscussionModel {
    var officeId: OfficeID
}

extension ForecastDiscussionModel {
    static func publisher(for point: PointsModel, in urlSession: URLSession) -> AnyPublisher<ForecastDiscussionModel?, Error> {
        let officeId = point.properties.forecastOffice.officeId()
        let endpoint = Endpoints.productTypes(officeId: officeId)
        return urlSession.dataTaskPublisher(for: endpoint)
            .map { (productTypes) in
                if productTypes.types.contains(where: { $0.productCode == .forecastDiscussion } ) {
                    return ForecastDiscussionModel(officeId: officeId)
                } else {
                    return nil
                }
            }
            .eraseToAnyPublisher()
    }
}
