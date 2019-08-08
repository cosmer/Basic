//
//  Created by Charlie Osmer on 8/6/19.
//  Copyright © 2019 Charlie Osmer. All rights reserved.
//

import Foundation
import API

struct ForecastPeriodCellModel: Identifiable {
    var id: Int
    var name: String
    var iconName: String?
    var detailedForecast: String
}

extension ForecastPeriodCellModel {
    init(period: ForecastModel.Period) {
        id = period.number
        name = period.name
        iconName = nil // TODO
        detailedForecast = period.detailedForecast
    }
}
