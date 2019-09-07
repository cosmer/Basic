//
//  Created by Charlie Osmer on 8/4/19.
//  Copyright © 2019 Charlie Osmer. All rights reserved.
//

import SwiftUI

struct WeatherView: View {
    @ObservedObject var model: WeatherViewModel

    var body: some View {
        NavigationView {
            model.forecastResult.buildView(
                success: {
                    ForecastView(model: $0)
                        .navigationBarTitle($0.locationName)
                },
                failure: {
                    ErrorView(error: $0)
                        .navigationBarTitle("Weather")
                }
            )
        }
        .onAppear { self.model.requestAuthorizationIfNeeded() }
    }
}

struct WeatherView_Previews: PreviewProvider {
    static var previews: some View {
        WeatherView(model: WeatherViewModel())
    }
}
