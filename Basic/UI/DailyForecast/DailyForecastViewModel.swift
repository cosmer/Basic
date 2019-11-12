//
//  Created by Charlie Osmer on 8/8/19.
//  Copyright © 2019 Charlie Osmer. All rights reserved.
//

import Foundation
import API
import Combine

struct DailyForecastViewModel {
    var currentConditions: CurrentConditionsViewModel?
    var dailyForecasts: [DailyForecastCellModel]
    var delayedContent: DelayedContent
}

extension DailyForecastViewModel {
    init(
        currentConditions: CurrentConditionsModel?,
        forecast: ForecastModel,
        delayedContent: DelayedContent
    ) {
        self.currentConditions = currentConditions.map(CurrentConditionsViewModel.init)

        dailyForecasts = forecast.properties.periods
            .map(DailyForecastCellModel.init)

        self.delayedContent = delayedContent
    }
}

extension DailyForecastViewModel {
    final class DelayedContent: ObservableObject {
        typealias AlertsPublisher = AnyPublisher<AlertsModel?, Never>

        @Published private(set) var alerts: WeatherAlertsNavigationModel?

        private var cancellables: [AnyCancellable] = []

        init(alerts: AlertsPublisher) {
            cancellables = [
                alerts
                    .map { $0.flatMap(WeatherAlertsNavigationModel.init) }
                    .receive(on: RunLoop.main)
                    .sink { [weak self] in self?.alerts = $0 },
            ]
        }

        init(alerts: WeatherAlertsNavigationModel?) {
            self.alerts = alerts
        }
    }
}
