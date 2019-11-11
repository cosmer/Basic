//
//  Created by Charlie Osmer on 8/17/19.
//  Copyright © 2019 Charlie Osmer. All rights reserved.
//

import SwiftUI
import ImageLoading

struct CurrentConditionsView: View {
    let model: CurrentConditionsViewModel

    @State private var referenceDate: Date = Date()
    @ObservedObject private(set) var icon: LoadableImage

    init(model: CurrentConditionsViewModel) {
        self.model = model
        icon = LoadableImage(asset: model.icon)
    }

    var body: some View {
        VStack(alignment: .leading) {
            Text(model.timestampFormatter(for: referenceDate).string(from: model.timestamp).capitalized(with: .current))
                .foregroundColor(model.isOutdated(at: referenceDate) ? .red : nil)
                .font(.headline)

            Text(model.stationName)
                .foregroundColor(.secondary)
                .font(.subheadline)

            HStack(alignment: .top) {
                Icon(uiImage: icon.image)

                VStack(alignment: .leading) {
                    model.temperature.map {
                        Text(model.temperatureFormatter.string(from: $0))
                            .fontWeight(.medium)
                    }

                    model.humidity.map { Text("Humidity: \($0, formatter: model.humidityFormatter)") }
                    model.dewpoint.map { Text("Dewpoint: \($0, formatter: model.temperatureFormatter)") }
                }
            }

            Divider()

            Text(model.description)
                .fixedSize(horizontal: false, vertical: true)
                .font(.body)
        }
        .onReceive(model.referenceDatePublisher()) {
            self.referenceDate = $0
        }
    }
}

struct CurrentConditionsView_Previews: PreviewProvider {
    static var previews: some View {
        CurrentConditionsView(model: model)
            .padding()
            .previewLayout(.sizeThatFits)
    }

    private static let model = CurrentConditionsViewModel(
        stationName: "Portland, Portland International Jetport",
        timestamp: Date(),
        icon: .name("icons/day/bkn"),
        description: "Thunderstorms and Heavy Rain and Fog/Mist",
        temperature: Measurement(value: 68, unit: .fahrenheit),
        dewpoint: Measurement(value: 58, unit: .fahrenheit),
        humidity: Measurement(value: 72, unit: .percent)
    )
}
