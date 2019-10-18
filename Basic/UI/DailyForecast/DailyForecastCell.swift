//
//  Created by Charlie Osmer on 8/6/19.
//  Copyright © 2019 Charlie Osmer. All rights reserved.
//

import SwiftUI

struct DailyForecastCell: View {
    let model: DailyForecastCellModel

    init(model: DailyForecastCellModel) {
        self.model = model
    }

    var body: some View {
        VStack(alignment: .leading) {
            Text(model.name)
                .font(.headline)

            Text(model.forecast)
                .fixedSize(horizontal: false, vertical: true)

            Text(model.temperatureFormatter.string(from: model.temperature))

            Text(model.wind)
        }
        .font(.subheadline)
    }
}

struct DailyForecastCell_Previews: PreviewProvider {
    static var previews: some View {
        List {
            DailyForecastCell(model: model)
        }
    }

    static let model = DailyForecastCellModel(
        id: .init(rawValue: 1),
        name: "Sunday",
        forecast: "Partly Sunny",
        temperature: Measurement(value: 62, unit: .fahrenheit),
        wind: "NE 15 mph"
    )
}
