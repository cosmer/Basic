//
//  Created by Charlie Osmer on 8/8/19.
//  Copyright © 2019 Charlie Osmer. All rights reserved.
//

import SwiftUI

struct ForecastView: View {
    let model: ForecastViewModel
    private let hourlyCellMetricsCache: HourlyForecastPeriodCell.Metrics.Cache

    @Environment(\.sizeCategory) private var sizeCategory
    @Environment(\.legibilityWeight) private var legibilityWeight

    init(model: ForecastViewModel) {
        self.model = model
        hourlyCellMetricsCache = .init(models: model.hourlyPeriods)
    }

    var body: some View {
        List {
            self.model.currentConditions.map {
                CurrentConditionsView(model: $0)
            }

            ForEach(self.model.hourlyPeriods) {
                HourlyForecastPeriodCell(model: $0, metrics: self.hourlyCellMetrics)
            }

            self.model.alerts.map {
                Self.navigationLink(for: $0)
            }

            self.model.forecastDiscussion.map {
                NavigationLink("Forecast Discussion", destination: ForecastDiscussionView(model: $0))
            }

            ForEach(self.model.periods) {
                ForecastPeriodCell(model: $0)
            }
        }
    }

    private var hourlyCellMetrics: HourlyForecastPeriodCell.Metrics {
        hourlyCellMetricsCache.metrics(sizeCategory: sizeCategory, weight: legibilityWeight)
    }

    private static func navigationLink(for model: ForecastAlertsNavigationModel) -> some View {
        model.value.buildView(
            left: { (one) in
                NavigationLink(destination: WeatherAlertView(model: one.model)) {
                    VStack(alignment: .leading) {
                        Text("Severe Weather Alert")
                        Text(one.label)
                            .font(.subheadline)
                            .foregroundColor(.secondary)
                    }
                }
            },
            right: { (many) in
                NavigationLink("Severe Weather Alerts", destination: WeatherAlertList(model: many.model))
            }
        )
    }
}

struct ForecastView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            ForecastView(model: model)
        }
    }

    static let model = ForecastViewModel(
        locationName: "Somewhere, XY",
        periods: [
            ForecastPeriodCellModel(
                id: .init(rawValue: 1),
                name: "Overnight",
                icon: .name("icons/night/bkn"),
                detailedForecast: "Mostly cloudy, with a low around 66. East wind around 0 mph."
            ),

            ForecastPeriodCellModel(
                id: .init(rawValue: 2),
                name: "Sunday",
                icon: .name("icons/day/bkn"),
                detailedForecast: "Partly sunny, with a high near 84. Southeast wind 0 to 5 mph."
            )
        ],
        hourlyPeriods: [
        ],
        forecastDiscussion: ForecastDiscussionViewModel(
            model: ForecastDiscussionModel(officeId: .grayME)
        ),
        alerts: ForecastAlertsNavigationModel(
            model: WeatherAlertListModel(alerts: WeatherAlertViewModel.previews)
        )
    )
}
