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
        ScrollView {
            VStack(alignment: .leading, spacing: 16) {
                self.delayed.alerts.map {
                    Self.navigationLink(for: $0)
                }

                self.model.currentConditions.map { (model) in
                    HStack {
                        CurrentConditionsView(model: model)
                        Spacer()
                    }
                    .padding()
                    .background(Self.cellBackground)
                }

                ForEach(self.model.dailyForecasts) { (model) in
                    HStack {
                        DailyForecastCell(model: model)
                        Spacer()
                    }
                    .padding()
                    .background(Self.cellBackground)
                }
            }
            .padding()
        }
    }

    private static var cellBackground: some View {
        RoundedRectangle(cornerRadius: 6, style: .continuous)
            .fill(Color(.secondarySystemBackground))
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
                .navigationBarTitle("Weather", displayMode: .inline)
        }
    }

    static let model = DailyForecastViewModel(
        currentConditions: CurrentConditionsViewModel(
            stationName: "Portland, Portland Internation Jetport",
            timestamp: Date(),
            icon: .name("icons/night/bkn"),
            description: "Fog/Mist",
            temperature: Measurement(value: 62, unit: .fahrenheit),
            dewpoint: Measurement(value: 60, unit: .fahrenheit),
            humidity: Measurement(value: 93, unit: .percent)
        ),
        dailyForecasts: [
            DailyForecastCellModel(
                id: .init(rawValue: Date()),
                name: "Overnight",
                icon: .name("icons/night/bkn"),
                detailedForecast: "Partly cloudy, with a low around 68. South wind 0 to 5 mph.",
                temperature: Measurement(value: 50, unit: .fahrenheit),
                wind: "NE 15 to 20 mph"
            ),

            DailyForecastCellModel(
                id: .init(rawValue: Date().addingTimeInterval(1)),
                name: "Sunday",
                icon: .name("icons/day/bkn"),
                detailedForecast: "A chance of showers and thunderstorms before 1pm. Mostly sunny, with a high near 86. Chance of precipitation is 50%.",
                temperature: Measurement(value: 62, unit: .fahrenheit),
                wind: "E 0 mph"
            )
        ],
        delayedContent: .init(
            alerts: ForecastAlertsNavigationModel(
                model: WeatherAlertViewModel.previews[0]
            )
        )
    )
}
