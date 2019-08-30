//
//  Created by Charlie Osmer on 8/8/19.
//  Copyright © 2019 Charlie Osmer. All rights reserved.
//

import Foundation
import API

struct ForecastViewModel {
    var locationName: String
    var currentConditions: CurrentConditionsViewModel?
    var periods: [ForecastPeriodCellModel]
    var hourlyPeriods: [HourlyForecastPeriodCellModel]
    var forecastDiscussion: ForecastDiscussionViewModel?
}

extension ForecastViewModel {
    init(
        point: PointsModel,
        currentConditions: CurrentConditionsModel?,
        forecast: ForecastModel,
        hourlyForecast: HourlyForecastModel,
        forecastDiscussion: ForecastDiscussionModel?
    ) {
        let location = point.properties.relativeLocation.properties
        locationName = "\(location.city), \(location.state)"

        self.currentConditions = currentConditions.map(CurrentConditionsViewModel.init)

        periods = forecast.properties.periods
            .map(ForecastPeriodCellModel.init)

        hourlyPeriods = hourlyForecast.properties.periods
            .prefix(8)
            .map(HourlyForecastPeriodCellModel.init)

        self.forecastDiscussion = forecastDiscussion.map(ForecastDiscussionViewModel.init)
    }
}
