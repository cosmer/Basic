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
            HStack(alignment: .top) {
                Icon(uiImage: icon.image, size: 70)

                VStack(alignment: .leading) {
                    model.temperature.map { Text("\($0, formatter: model.temperatureFormatter)") }
                    Text(model.description)
                    model.humidity.map { Text("Humidity: \($0, formatter: model.humidityFormatter)") }
                    model.dewpoint.map { Text("Dewpoint: \($0, formatter: model.temperatureFormatter)") }
                }
                .font(.body)
            }

            Group {
                Text(model.stationName)
                Text("\(model.timestamp, formatter: model.timestampFormatter(for: referenceDate))")
            }
            .font(.footnote)
        }
        .onReceive(model.referenceDatePublisher()) {
            self.referenceDate = $0
        }
    }
}

struct CurrentConditionsView_Previews: PreviewProvider {
    static var previews: some View {
        CurrentConditionsView(model: CurrentConditionsViewModel(
            stationName: "Portland, Portland International Jetport",
            timestamp: Date(),
            icon: .name("icons/day/bkn"),
            description: "Thunderstorms and Heavy Rain and Fog/Mist",
            temperature: Measurement(value: 68, unit: .fahrenheit),
            windChill: Measurement(value: 62, unit: .fahrenheit),
            dewpoint: Measurement(value: 58, unit: .fahrenheit),
            humidity: Measurement(value: 72, unit: .percent)
        ))
    }
}
