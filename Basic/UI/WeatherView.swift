//
//  Created by Charlie Osmer on 8/4/19.
//  Copyright © 2019 Charlie Osmer. All rights reserved.
//

import SwiftUI

struct WeatherView: View {
    @ObservedObject var model: WeatherViewModel

    var body: some View {
        NavigationView {
            model.forecast.buildView(
                success: {
                    $0.buildView(
                        some: {
                            ForecastView(model: $0)
                                .navigationBarTitle($0.locationName)
                                .navigationBarItems(leading: self.leadingForecastNavigationBarItems)
                        },
                        none: {
                            LoadingView()
                                .navigationBarTitle("Weather")
                        }
                    )
                },
                failure: {
                    if model.isLoading {
                        LoadingView()
                            .navigationBarTitle("Weather")
                    } else {
                        ErrorView(error: $0)
                            .navigationBarTitle("Weather")
                    }
                }
            )
        }
        .onAppear { self.model.requestAuthorizationIfNeeded() }
    }

    var leadingForecastNavigationBarItems: some View {
        model.isLoading
            ? ActivityIndicatorView(style: .medium)
            : nil
    }
}

struct WeatherView_Previews: PreviewProvider {
    static var previews: some View {
        WeatherView(model: WeatherViewModel())
    }
}
