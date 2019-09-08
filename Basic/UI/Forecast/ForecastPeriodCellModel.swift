//
//  Created by Charlie Osmer on 8/6/19.
//  Copyright © 2019 Charlie Osmer. All rights reserved.
//

import Foundation
import API
import ImageLoading

struct ForecastPeriodCellModel: Identifiable {
    var id: Tagged<Int, Self>
    var name: String
    var icon: LoadableImageAsset
    var detailedForecast: String
}

extension ForecastPeriodCellModel {
    private static var iconMetrics: Endpoints.Icon.IconMetrics {
        .init(size: .large, fontSize: 20)
    }

    init(period: ForecastModel.Period) {
        id = ID(rawValue: period.number)
        name = period.name
        icon = .url(period.icon.with(Self.iconMetrics).buildURL())
        detailedForecast = period.detailedForecast
    }
}
