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
                if model.forecastResult.value != nil {
                    ForecastView(model: model.forecastResult.value!)
                        .navigationBarTitle(model.forecastResult.value!.locationName)
                } else {
                    Text(model.forecastResult.error!.localizedDescription)
                        .navigationBarTitle("Weather")
                }
            }
        }
        .onAppear { self.model.requestAuthorizationIfNeeded() }
    }
}

#if DEBUG
struct WeatherView_Previews: PreviewProvider {
    static var previews: some View {
        WeatherView(model: WeatherViewModel())
    }
}
#endif
