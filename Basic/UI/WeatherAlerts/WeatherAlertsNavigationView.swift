//
//  Created by Charles Osmer on 11/12/19.
//  Copyright © 2019 Charlie Osmer. All rights reserved.
//

import SwiftUI

struct WeatherAlertsNavigationView: View {
    var model: WeatherAlertsNavigationModel

    var body: some View {
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

struct WeatherAlertsNavigationView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            NavigationView {
                WeatherAlertsNavigationView(model: WeatherAlertsNavigationModel(
                    model: WeatherAlertViewModel.previews[0]
                ))
            }

            NavigationView {
                WeatherAlertsNavigationView(model: WeatherAlertsNavigationModel(
                    model: .init(alerts: WeatherAlertViewModel.previews)
                ))
            }
        }
    }
}
