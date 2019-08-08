//
//  Created by Charlie Osmer on 8/8/19.
//  Copyright © 2019 Charlie Osmer. All rights reserved.
//

import Foundation
import API

struct ForecastViewModel {
    var locationName: String
    var periods: [ForecastPeriodCellModel]
}

extension ForecastViewModel {
    init(point: PointsModel, forecast: ForecastModel) {
        let location = point.properties.relativeLocation.properties
        locationName = "\(location.city), \(location.state)"

        periods = forecast.properties.periods.map(ForecastPeriodCellModel.init)
    }
}
