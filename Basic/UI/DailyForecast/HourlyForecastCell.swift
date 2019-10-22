//
//  Created by Charlie Osmer on 8/24/19.
//  Copyright © 2019 Charlie Osmer. All rights reserved.
//

import SwiftUI

struct HourlyForecastCell: View {
    struct Metrics {
        var time: CGFloat
        var temperature: CGFloat
    }

    let model: HourlyForecastCellModel
    let metrics: Metrics

    var body: some View {
        HStack(spacing: 20) {
            Text(model.timeFormatter.string(from: model.time))
                .fontWeight(.medium)
                .frame(width: metrics.time, alignment: .leading)

            Text(model.temperatureFormatter.string(from: model.temperature))
                .frame(width: metrics.temperature, alignment: .leading)

            VStack(alignment: .leading) {
                model.shortForecast.map {
                    Text($0)
                        .lineLimit(2)
                }

                Text(model.wind)
            }
        }
        .font(.subheadline)
    }
}

extension HourlyForecastCell.Metrics {
    final class Cache {
        private let models: [HourlyForecastCellModel]

        private var cachedMetrics: HourlyForecastCell.Metrics?
        private var cachedCategory: ContentSizeCategory = .large
        private var cachedWeight: LegibilityWeight?

        init(models: [HourlyForecastCellModel]) {
            self.models = models
        }

        func metrics(sizeCategory: ContentSizeCategory, weight: LegibilityWeight?) -> HourlyForecastCell.Metrics {
            if let cachedMetrics = cachedMetrics, sizeCategory == cachedCategory && weight == cachedWeight {
                return cachedMetrics
            }

            let metrics = HourlyForecastCell.Metrics(
                models: models,
                sizeCategory: sizeCategory,
                weight: weight
            )

            cachedMetrics = metrics
            cachedCategory = sizeCategory

            return metrics
        }
    }

    init(models: [HourlyForecastCellModel], sizeCategory: ContentSizeCategory, weight: LegibilityWeight?) {
        var traitCollections: [UITraitCollection] = []

        if let sizeCategory = UIContentSizeCategory(sizeCategory: sizeCategory) {
            traitCollections.append(UITraitCollection(preferredContentSizeCategory: sizeCategory))
        }

        if let weight = weight.flatMap(UILegibilityWeight.init) {
            traitCollections.append(UITraitCollection(legibilityWeight: weight))
        }

        let traits = UITraitCollection(traitsFrom: traitCollections)

        let timeAttributes: [NSAttributedString.Key: Any] = [
            .font: UIFont.preferredFont(forTextStyle: .subheadline, compatibleWith: traits).withWeight(.medium)
        ]

        let temperatureAttributes: [NSAttributedString.Key: Any] = [
            .font: UIFont.preferredFont(forTextStyle: .subheadline, compatibleWith: traits)
        ]

        time = models
            .compactMap { $0.timeFormatter.string(for: $0.time) as NSString? }
            .map { $0.size(withAttributes: timeAttributes).width.rounded(.up) }
            .max() ?? 0

        temperature = models
            .compactMap { $0.temperatureFormatter.string(for: $0.temperature) as NSString? }
            .map { $0.size(withAttributes: temperatureAttributes).width.rounded(.up) }
            .max() ?? 0
    }
}

struct HourlyForecastCell_Previews: PreviewProvider {
    static var previews: some View {
        List {
            HourlyForecastCell(model: model, metrics: metrics)
        }
    }

    static let model = HourlyForecastCellModel(
        id: .init(rawValue: 1),
        time: Date(),
        temperature: Measurement(value: 66, unit: .fahrenheit),
        wind: "W 10 mph",
        shortForecast: "Partly Sunny",
        timeZone: .current
    )

    static let metrics = HourlyForecastCell.Metrics(
        models: [model],
        sizeCategory: .large,
        weight: nil
    )
}

private extension UIFont {
    func withWeight(_ weight: UIFont.Weight) -> UIFont {
        let descriptor = fontDescriptor.addingAttributes([.traits: [UIFontDescriptor.TraitKey.weight: weight]])
        return UIFont(descriptor: descriptor, size: 0)
    }
}
