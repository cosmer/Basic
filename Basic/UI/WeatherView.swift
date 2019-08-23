//
//  Created by Charlie Osmer on 8/4/19.
//  Copyright © 2019 Charlie Osmer. All rights reserved.
//

import SwiftUI

struct WeatherView: View {
    @ObservedObject var model: WeatherViewModel

    var body: some View {
        NavigationView {
            Group {
                model.forecastResult.value.map { (forecast) in
                    ForecastView(model: forecast)
                        .navigationBarTitle(forecast.locationName)
                }

                model.forecastResult.error.map { (error) in
                    Text(error.localizedDescription)
                        .navigationBarTitle("Weather")
                }
            }
        }
        .onAppear { self.model.requestAuthorizationIfNeeded() }
    }
}

struct WeatherView_Previews: PreviewProvider {
    static var previews: some View {
        WeatherView(model: WeatherViewModel())
    }
}
