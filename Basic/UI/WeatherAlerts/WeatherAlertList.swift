//
//  Created by Charlie Osmer on 9/5/19.
//  Copyright © 2019 Charlie Osmer. All rights reserved.
//

import SwiftUI

struct WeatherAlertList: View {
    let model: WeatherAlertListModel

    var body: some View {
        List(model.alerts) { (alert) in
            NavigationLink(alert.title, destination: WeatherAlertView(model: alert))
        }
        .navigationBarTitle("Alerts", displayMode: .inline)
    }
}

struct WeatherAlertList_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            WeatherAlertList(model: model)
        }
    }

    static let model = WeatherAlertListModel(alerts: WeatherAlertViewModel.previews)
}
