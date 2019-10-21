//
//  Created by Charlie Osmer on 8/4/19.
//  Copyright © 2019 Charlie Osmer. All rights reserved.
//

import SwiftUI

struct WeatherView: View {
    enum ForecastType {
        case daily, hourly
    }

    @ObservedObject private(set) var model: WeatherViewModel

    @State private var forecastType: ForecastType = .daily

    var body: some View {
        NavigationView {
            ContentContainerView(
                content: {
                    ResultView(self.model.forecasts,
                        success: {
                            OptionalView($0,
                                some: {
                                    if self.forecastType == .daily {
                                        DailyForecastView(model: $0.daily)
                                    } else {
                                        HourlyForecastView(model: $0.hourly)
                                    }
                                },
                                none: {
                                    LoadingView()
                                }
                            )
                        },
                        failure: {
                            if self.model.isLoading {
                                LoadingView()
                            } else {
                                ErrorView(error: $0)
                            }
                        }
                    )
                },
                controls: {
                    HStack {
                        self.forecastTypePicker
                        self.forecastDiscussionLink
                    }
                }
            )
            .edgesIgnoringSafeArea(.all)
            .navigationBarTitle(navigationBarTitle, displayMode: .inline)
            .navigationBarItems(leading: leadingForecastNavigationBarItems)
        }
        .onAppear { self.model.requestAuthorizationIfNeeded() }
    }

    private var navigationBarTitle: Text {
        switch model.forecasts {
        case let .success(forecast?):
            return Text(forecast.navigationTitle)
        default:
            return Text("Weather")
        }
    }

    private var leadingForecastNavigationBarItems: some View {
        let showActivityIndicator: Bool
        if model.isLoading, case .success(.some) = model.forecasts {
            showActivityIndicator = true
        } else {
            showActivityIndicator = false
        }

        return showActivityIndicator
            ? ActivityIndicatorView(style: .medium)
            : nil
    }

    private var forecastTypePicker: some View {
        Picker("Forecast Type", selection: self.$forecastType) {
            Text("Daily").tag(ForecastType.daily)
            Text("Hourly").tag(ForecastType.hourly)
        }
        .pickerStyle(SegmentedPickerStyle())
    }

    private var forecastDiscussionLink: some View {
        let destination = (model.forecasts.success ?? nil)
            .map { ForecastDiscussionView(model: $0.discussion) }

        return NavigationLink(destination: destination) {
            Image(systemName: "ellipses.bubble")
                .frame(width: 44, height: 44)
        }
        .disabled(destination == nil)
    }
}

struct WeatherView_Previews: PreviewProvider {
    static var previews: some View {
        WeatherView(model: WeatherViewModel())
    }
}
