//
//  Created by Charlie Osmer on 8/6/19.
//  Copyright © 2019 Charlie Osmer. All rights reserved.
//

import SwiftUI

struct ForecastPeriodCell: View {
    let model: ForecastPeriodCellModel

    init(model: ForecastPeriodCellModel) {
        self.model = model
    }

    var body: some View {
        VStack(alignment: .leading) {
            Text(model.name)
                .font(.headline)

            Text(model.forecast)
                .fixedSize(horizontal: false, vertical: true)

            Text("\(model.temperature, formatter: model.temperatureFormatter)")

            Text(model.wind)
        }
        .font(.subheadline)
    }
}

struct ForecastPeriodCell_Previews: PreviewProvider {
    static var previews: some View {
        List {
            ForecastPeriodCell(model: model)
        }
    }

    static let model = ForecastPeriodCellModel(
        id: .init(rawValue: 1),
        name: "Sunday",
        forecast: "Partly Sunny",
        temperature: Measurement(value: 62, unit: .fahrenheit),
        wind: "NE 15 mph"
    )
}
