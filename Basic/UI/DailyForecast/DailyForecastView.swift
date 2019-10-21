//
//  Created by Charlie Osmer on 8/8/19.
//  Copyright © 2019 Charlie Osmer. All rights reserved.
//

import SwiftUI

struct DailyForecastView: View {
    let model: DailyForecastViewModel
    @ObservedObject private(set) var delayed: DailyForecastViewModel.DelayedContent

    init(model: DailyForecastViewModel) {
        self.model = model
        self.delayed = model.delayedContent
    }

    var body: some View {
        List {
            self.model.currentConditions.map {
                CurrentConditionsView(model: $0)
            }

            self.delayed.alerts.map {
                Self.navigationLink(for: $0)
            }

            ForEach(self.model.dailyForecasts) {
                DailyForecastCell(model: $0)
            }
        }
    }

    private static func navigationLink(for model: ForecastAlertsNavigationModel) -> some View {
        EitherView(model.value,
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

struct DailyForecastView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            DailyForecastView(model: model)
        }
    }

    static let model = DailyForecastViewModel(
        dailyForecasts: [
            DailyForecastCellModel(
                id: .init(rawValue: 1),
                name: "Overnight",
                forecast: "Mostly Cloudy",
                temperature: Measurement(value: 50, unit: .fahrenheit),
                wind: "NE 15 to 20 mph"
            ),

            DailyForecastCellModel(
                id: .init(rawValue: 2),
                name: "Sunday",
                forecast: "Partly Sunny",
                temperature: Measurement(value: 62, unit: .fahrenheit),
                wind: "E 0 mph"
            )
        ],
        delayedContent: .init(
            alerts: ForecastAlertsNavigationModel(
                model: WeatherAlertListModel(alerts: WeatherAlertViewModel.previews)
            )
        )
    )
}
