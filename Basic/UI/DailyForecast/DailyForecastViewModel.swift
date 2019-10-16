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
        typealias ForecastDiscussionPublisher = AnyPublisher<ForecastDiscussionModel?, Never>
        typealias AlertsPublisher = AnyPublisher<AlertsModel?, Never>

        @Published private(set) var forecastDiscussion: ForecastDiscussionViewModel?
        @Published private(set) var alerts: ForecastAlertsNavigationModel?

        private var cancellables: [AnyCancellable] = []

        init(forecastDiscussion: ForecastDiscussionPublisher, alerts: AlertsPublisher) {
            cancellables = [
                forecastDiscussion
                    .map { $0.map(ForecastDiscussionViewModel.init) }
                    .receive(on: RunLoop.main)
                    .sink { [weak self] in self?.forecastDiscussion = $0 },

                alerts
                    .map { $0.flatMap(ForecastAlertsNavigationModel.init) }
                    .receive(on: RunLoop.main)
                    .sink { [weak self] in self?.alerts = $0 },
            ]
        }

        init(forecastDiscussion: ForecastDiscussionViewModel?, alerts: ForecastAlertsNavigationModel?) {
            self.forecastDiscussion = forecastDiscussion
            self.alerts = alerts
        }
    }
}
