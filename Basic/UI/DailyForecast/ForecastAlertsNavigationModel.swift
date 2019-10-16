//
//  Created by Charlie Osmer on 9/6/19.
//  Copyright © 2019 Charlie Osmer. All rights reserved.
//

import Foundation
import API

struct ForecastAlertsNavigationModel {
    struct One {
        var model: WeatherAlertViewModel
        var label: String
    }

    struct Many {
        var model: WeatherAlertListModel
    }

    var value: Either<One, Many>

    init(model: WeatherAlertViewModel) {
        value = .left(.init(model: model, label: model.title))
    }

    init(model: WeatherAlertListModel) {
        value = .right(.init(model: model))
    }
}

extension ForecastAlertsNavigationModel {
    init?(alerts: AlertsModel) {
        switch alerts.features.count {
        case 0:
            return nil
        case 1:
            self.init(model: WeatherAlertViewModel(feature: alerts.features[0]))
        default:
            self.init(model: WeatherAlertListModel(alerts: alerts))
        }
    }
}
