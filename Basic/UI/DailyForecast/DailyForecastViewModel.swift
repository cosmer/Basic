//
//  Created by Charlie Osmer on 8/8/19.
//  Copyright © 2019 Charlie Osmer. All rights reserved.
//

import Foundation
import API
import Combine

struct DailyForecastViewModel {
    typealias AlertsPublisher = AnyPublisher<WeatherAlertsNavigationModel, Never>

    var currentConditions: CurrentConditionsViewModel?
    var dailyForecasts: [DailyForecastCellModel]
    var alertsPublisher: AlertsPublisher
}

extension DailyForecastViewModel {
    init(currentConditions: CurrentConditionsModel?, forecast: ForecastModel, alertsPublisher: AlertsPublisher) {
        self.currentConditions = currentConditions.map(CurrentConditionsViewModel.init)

        dailyForecasts = forecast.properties.periods
            .map(DailyForecastCellModel.init)

        self.alertsPublisher = alertsPublisher
    }
}
