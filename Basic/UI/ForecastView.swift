//
//  Created by Charlie Osmer on 8/8/19.
//  Copyright © 2019 Charlie Osmer. All rights reserved.
//

import SwiftUI

struct ForecastView: View {
    let model: ForecastViewModel

    var body: some View {
        List(model.periods) {
            ForecastPeriodCell(model: $0)
        }
    }
}

#if DEBUG
struct ForecastView_Previews: PreviewProvider {
    static var previews: some View {
        ForecastView(model: model)
    }

    static let model = ForecastViewModel(
        locationName: "Somewhere, XY",
        periods: [
            ForecastPeriodCellModel(
                id: 1,
                name: "Overnight",
                iconName: "cloud.sun",
                detailedForecast: "Mostly cloudy, with a low around 66. East wind around 0 mph."
            ),

            ForecastPeriodCellModel(
                id: 2,
                name: "Sunday",
                iconName: "cloud.sun",
                detailedForecast: "Partly sunny, with a high near 84. Southeast wind 0 to 5 mph."
            )
        ]
    )
}
#endif
