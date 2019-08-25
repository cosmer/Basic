//
//  Created by Charlie Osmer on 8/8/19.
//  Copyright © 2019 Charlie Osmer. All rights reserved.
//

import SwiftUI

struct ForecastView: View {
    let model: ForecastViewModel

    var body: some View {
        List {
            self.model.currentConditions.map {
                CurrentConditionsView(model: $0)
            }

            ForEach(self.model.hourlyPeriods) {
                HourlyForecastPeriodCell(model: $0)
            }

            ForEach(self.model.periods) {
                ForecastPeriodCell(model: $0)
            }
        }
    }
}

struct ForecastView_Previews: PreviewProvider {
    static var previews: some View {
        ForecastView(model: model)
    }

    static let model = ForecastViewModel(
        locationName: "Somewhere, XY",
        periods: [
            ForecastPeriodCellModel(
                id: .init(rawValue: 1),
                name: "Overnight",
                icon: .name("icons/night/bkn"),
                detailedForecast: "Mostly cloudy, with a low around 66. East wind around 0 mph."
            ),

            ForecastPeriodCellModel(
                id: .init(rawValue: 2),
                name: "Sunday",
                icon: .name("icons/day/bkn"),
                detailedForecast: "Partly sunny, with a high near 84. Southeast wind 0 to 5 mph."
            )
        ],
        hourlyPeriods: [
        ]
    )
}
