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
                    HStack {
                        Self.icon

                        VStack(alignment: .leading) {
                            Text("Severe Weather Alert")
                                .font(.headline)

                            Text(one.label)
                                .font(.subheadline)
                                .foregroundColor(.secondary)
                        }

                        Spacer()
                    }
                }
            },
            right: { (many) in
                NavigationLink(destination: WeatherAlertList(model: many.model)) {
                    HStack {
                        Self.icon

                        Text("Severe Weather Alerts")
                            .font(.headline)

                        Spacer()
                    }
                }
            }
        )
    }

    private static var icon: some View {
        Image(systemName: "exclamationmark.triangle.fill")
            .accentColor(.red)
    }
}

struct WeatherAlertsNavigationView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            NavigationView {
                WeatherAlertsNavigationView(model: WeatherAlertsNavigationModel(
                    model: WeatherAlertViewModel.previews[0]
                ))
                .card(fill: Color(.secondarySystemBackground))
                .padding()
            }

            NavigationView {
                WeatherAlertsNavigationView(model: WeatherAlertsNavigationModel(
                    model: .init(alerts: WeatherAlertViewModel.previews)
                ))
                .card(fill: Color(.secondarySystemBackground))
                .padding()
            }
        }
    }
}
