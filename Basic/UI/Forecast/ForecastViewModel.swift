//
//  Created by Charlie Osmer on 8/8/19.
//  Copyright © 2019 Charlie Osmer. All rights reserved.
//

import Foundation
import API
import Combine
import ImageLoading

struct ForecastViewModel {
    var locationName: String
    var currentConditions: CurrentConditionsViewModel?
    var periods: [ForecastPeriodCellModel]
    var hourlyPeriods: [HourlyForecastPeriodCellModel]
    var delayedContent: DelayedContent
}

extension ForecastViewModel {
    init(
        point: PointsModel,
        currentConditions: CurrentConditionsModel?,
        forecast: ForecastModel,
        hourlyForecast: HourlyForecastModel,
        delayedContent: DelayedContent
    ) {
        locationName = point.properties.relativeLocation.properties.city

        self.currentConditions = currentConditions.map(CurrentConditionsViewModel.init)

        periods = forecast.properties.periods
            .map(ForecastPeriodCellModel.init)

        hourlyPeriods = hourlyForecast.properties.periods
            .prefix(8)
            .map(HourlyForecastPeriodCellModel.init)

        self.delayedContent = delayedContent
    }
}

extension ForecastViewModel {
    final class DelayedContent: ObservableObject {
        typealias ForecastDiscussionPublisher = AnyPublisher<ForecastDiscussionModel?, Never>
        typealias AlertsPublisher = AnyPublisher<AlertsModel?, Never>

        @Published var forecastDiscussion: ForecastDiscussionViewModel?
        @Published var alerts: ForecastAlertsNavigationModel?

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

extension ForecastViewModel {
    func assetsForImagePreloading() -> Set<LoadableImageAsset> {
        return periods.reduce(into: Set<LoadableImageAsset>()) {
            $0.insert($1.icon)
        }
    }
}
