//
//  Created by Charlie Osmer on 8/4/19.
//  Copyright © 2019 Charlie Osmer. All rights reserved.
//

import SwiftUI

struct WeatherView: View {
    @ObservedObject private(set) var model: WeatherViewModel

    var body: some View {
        NavigationView {
            ResultView(model.forecast,
                success: {
                    OptionalView($0,
                        some: {
                            ForecastView(model: $0)
                        },
                        none: {
                            LoadingView()
                        }
                    )
                },
                failure: {
                    if model.isLoading {
                        LoadingView()
                    } else {
                        ErrorView(error: $0)
                    }
                }
            )
            .navigationBarTitle(navigationBarTitle, displayMode: .inline)
            .navigationBarItems(leading: leadingForecastNavigationBarItems)
        }
        .onAppear { self.model.requestAuthorizationIfNeeded() }
    }

    private var navigationBarTitle: Text {
        switch model.forecast {
        case let .success(forecast?):
            return Text(forecast.locationName)
        default:
            return Text("Weather")
        }
    }

    private var leadingForecastNavigationBarItems: some View {
        let showActivityIndicator: Bool
        if model.isLoading, case .success(.some) = model.forecast {
            showActivityIndicator = true
        } else {
            showActivityIndicator = false
        }

        return showActivityIndicator
            ? ActivityIndicatorView(style: .medium)
            : nil
    }
}

struct WeatherView_Previews: PreviewProvider {
    static var previews: some View {
        WeatherView(model: WeatherViewModel())
    }
}
