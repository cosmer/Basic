//
//  Created by Charlie Osmer on 9/5/19.
//  Copyright © 2019 Charlie Osmer. All rights reserved.
//

import Foundation
import API

struct WeatherAlertListModel {
    var alerts: [WeatherAlertViewModel]
}

extension WeatherAlertListModel {
    init(alerts: AlertsModel) {
        self.alerts = alerts.features.map(WeatherAlertViewModel.init)
    }
}
