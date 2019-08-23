//
//  Created by Charlie Osmer on 8/22/19.
//  Copyright © 2019 Charlie Osmer. All rights reserved.
//

import Foundation
import API

struct CurrentConditionsModel {
    var station: StationsModel.FeatureProperties
    var observation: ObservationPropertiesModel

    init(station: StationsModel.Feature, observation: ObservationModel) {
        self.station = station.properties
        self.observation = observation.properties
    }
}
