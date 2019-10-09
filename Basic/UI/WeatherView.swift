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
                                .navigationBarTitle(Text($0.locationName), displayMode: .inline)
                                .navigationBarItems(leading: self.leadingForecastNavigationBarItems)
                        },
                        none: {
                            LoadingView()
                                .navigationBarTitle("Weather", displayMode: .inline)
                        }
                    )
                },
                failure: {
                    if model.isLoading {
                        LoadingView()
                            .navigationBarTitle("Weather", displayMode: .inline)
                    } else {
                        ErrorView(error: $0)
                            .navigationBarTitle("Weather", displayMode: .inline)
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
