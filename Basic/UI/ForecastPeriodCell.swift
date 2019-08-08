//
//  Created by Charlie Osmer on 8/6/19.
//  Copyright © 2019 Charlie Osmer. All rights reserved.
//

import SwiftUI

struct ForecastPeriodCell: View {
    let model: ForecastPeriodCellModel

    var body: some View {
        HStack {
            if model.iconName != nil {
                Image(systemName: model.iconName!)
                    .font(.title)
            }

            VStack(alignment: .leading) {
                Text(model.name)
                    .font(.headline)

                Text(model.detailedForecast)
                    .font(.body)
            }
        }
        .padding(.horizontal)
    }
}

#if DEBUG
struct ForecastPeriodCell_Previews: PreviewProvider {
    static var previews: some View {
        List {
            ForecastPeriodCell(model: model)
        }
    }

    static let model = ForecastPeriodCellModel(
        id: 1,
        name: "Sunday",
        iconName: "cloud.sun",
        detailedForecast: "Partly sunny, with a high near 84. Southeast wind 0 to 5 mph."
    )
}
#endif
