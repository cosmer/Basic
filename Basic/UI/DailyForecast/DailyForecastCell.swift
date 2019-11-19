//
//  Created by Charlie Osmer on 8/6/19.
//  Copyright © 2019 Charlie Osmer. All rights reserved.
//

import SwiftUI
import ImageLoading

struct DailyForecastCell: View {
    let model: DailyForecastCellModel

    @ObservedObject private(set) var icon: LoadableImage

    init(model: DailyForecastCellModel) {
        self.model = model
        icon = LoadableImage(asset: model.icon)
    }

    var body: some View {
        VStack(alignment: .leading) {
            Text(model.name)
                .font(.headline)

            HStack(alignment: .top) {
                Icon(uiImage: icon.image, precipitationChance: model.iconPrecipitationChance)

                VStack(alignment: .leading) {
                    Text(model.temperatureFormatter.string(from: model.temperature))
                        .fontWeight(.medium)

                    Text(model.wind)
                }
            }

            Divider()

            Text(model.detailedForecast)
                .fixMultilineTextTruncation()
                .font(.body)
        }
    }
}

struct DailyForecastCell_Previews: PreviewProvider {
    static var previews: some View {
        DailyForecastCell(model: model)
            .padding()
            .previewLayout(.sizeThatFits)
    }

    static let model = DailyForecastCellModel(
        id: .init(rawValue: Date()),
        name: "Sunday",
        icon: .name("icons/day/bkn"),
        detailedForecast: "A chance of showers and thunderstorms after 7pm. Partly cloudy, with a low around 68. Chance of precipitation is 30%.",
        temperature: Measurement(value: 62, unit: .fahrenheit),
        wind: "NE 15 mph"
    )
}
