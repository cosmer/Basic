//
//  Created by Charlie Osmer on 8/24/19.
//  Copyright © 2019 Charlie Osmer. All rights reserved.
//

import SwiftUI

struct HourlyForecastPeriodCell: View {
    let model: HourlyForecastPeriodCellModel

    var body: some View {
        HStack {
            Text("\(model.time, formatter: model.timeFormatter)")
            Text("\(model.temperature, formatter: model.temperatureFormatter)")
            Text(model.shortForecast)
        }
    }
}

struct HourlyForecastPeriodCell_Previews: PreviewProvider {
    static var previews: some View {
        List {
            HourlyForecastPeriodCell(model: model)
        }
    }

    static let model = HourlyForecastPeriodCellModel(
        id: .init(rawValue: 1),
        time: Date(),
        temperature: Measurement(value: 66, unit: .fahrenheit),
        shortForecast: "Partly Sunny"
    )
}
