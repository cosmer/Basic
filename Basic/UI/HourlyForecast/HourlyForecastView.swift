//
//  HourlyForecastView.swift
//  Basic
//
//  Created by Charles Osmer on 10/16/19.
//  Copyright © 2019 Charlie Osmer. All rights reserved.
//

import SwiftUI

struct HourlyForecastView: View {
    let model: HourlyForecastViewModel

    private let hourlyCellMetricsCache: HourlyForecastCell.Metrics.Cache

    @Environment(\.sizeCategory) private var sizeCategory
    @Environment(\.legibilityWeight) private var legibilityWeight

    init(model: HourlyForecastViewModel) {
        self.model = model
        hourlyCellMetricsCache = .init(models: model.sections.flatMap { $0.forecasts })
    }

    var body: some View {
        List {
            ForEach(model.sections) { section in
                Section(header: Text(section.timeFormatter.string(from: section.time))) {
                    ForEach(section.forecasts) {
                        HourlyForecastCell(model: $0, metrics: self.hourlyCellMetrics)
                    }
                }
            }
        }
    }

    private var hourlyCellMetrics: HourlyForecastCell.Metrics {
        hourlyCellMetricsCache.metrics(sizeCategory: sizeCategory, weight: legibilityWeight)
    }
}

struct HourlyForecastView_Previews: PreviewProvider {
    static var previews: some View {
        HourlyForecastView(model: model)
    }

    static let model = HourlyForecastViewModel(
        sections: [
            .init(time: Date(), timeZone: .current, forecasts: [
                HourlyForecastCellModel(
                    time: Date(),
                    temperature: .init(value: 63, unit: .fahrenheit),
                    wind: "12 mph",
                    shortForecast: "Partly Sunny", timeZone: .current
                )
            ]),
        ]
    )
}
