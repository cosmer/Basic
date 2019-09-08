//
//  Created by Charlie Osmer on 8/24/19.
//  Copyright © 2019 Charlie Osmer. All rights reserved.
//

import SwiftUI

struct HourlyForecastPeriodCell: View {
    struct Metrics {
        var time: CGFloat
        var temperature: CGFloat
    }

    let model: HourlyForecastPeriodCellModel
    let metrics: Metrics

    var body: some View {
        HStack(spacing: 20) {
            Text("\(model.time, formatter: model.timeFormatter)")
                .frame(width: metrics.time, alignment: .leading)

            Text("\(model.temperature, formatter: model.temperatureFormatter)")
                .frame(width: metrics.temperature, alignment: .leading)

            Text(model.shortForecast)
        }
        .font(.body)
    }
}

extension HourlyForecastPeriodCell.Metrics {
    final class Cache {
        private let models: [HourlyForecastPeriodCellModel]

        private var cachedMetrics: HourlyForecastPeriodCell.Metrics?
        private var cachedCategory: ContentSizeCategory = .large
        private var cachedWeight: LegibilityWeight?

        init(models: [HourlyForecastPeriodCellModel]) {
            self.models = models
        }

        func metrics(sizeCategory: ContentSizeCategory, weight: LegibilityWeight?) -> HourlyForecastPeriodCell.Metrics {
            if let cachedMetrics = cachedMetrics, sizeCategory == cachedCategory && weight == cachedWeight {
                return cachedMetrics
            }

            let metrics = HourlyForecastPeriodCell.Metrics(
                models: models,
                sizeCategory: sizeCategory,
                weight: weight
            )

            cachedMetrics = metrics
            cachedCategory = sizeCategory

            return metrics
        }
    }

    init(models: [HourlyForecastPeriodCellModel], sizeCategory: ContentSizeCategory, weight: LegibilityWeight?) {
        var traitCollections: [UITraitCollection] = []

        if let sizeCategory = UIContentSizeCategory(sizeCategory: sizeCategory) {
            traitCollections.append(UITraitCollection(preferredContentSizeCategory: sizeCategory))
        }

        if let weight = weight.flatMap(UILegibilityWeight.init) {
            traitCollections.append(UITraitCollection(legibilityWeight: weight))
        }

        let traits = UITraitCollection(traitsFrom: traitCollections)
        let attributes: [NSAttributedString.Key: Any] = [
            .font: UIFont.preferredFont(forTextStyle: .body, compatibleWith: traits)
        ]

        time = models
            .compactMap { $0.timeFormatter.string(for: $0.time) as NSString? }
            .map { $0.size(withAttributes: attributes).width.rounded(.up) }
            .max() ?? 0

        temperature = models
            .compactMap { $0.temperatureFormatter.string(for: $0.temperature) as NSString? }
            .map { $0.size(withAttributes: attributes).width.rounded(.up) }
            .max() ?? 0
    }
}

struct HourlyForecastPeriodCell_Previews: PreviewProvider {
    static var previews: some View {
        List {
            HourlyForecastPeriodCell(model: model, metrics: metrics)
        }
    }

    static let model = HourlyForecastPeriodCellModel(
        id: .init(rawValue: 1),
        time: Date(),
        temperature: Measurement(value: 66, unit: .fahrenheit),
        shortForecast: "Partly Sunny"
    )

    static let metrics = HourlyForecastPeriodCell.Metrics(
        models: [model],
        sizeCategory: .large,
        weight: nil
    )
}
