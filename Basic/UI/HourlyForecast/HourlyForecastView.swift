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
        hourlyCellMetricsCache = .init(models: model.hourlyForecasts)
    }

    var body: some View {
        List {
            ForEach(self.model.hourlyForecasts) {
                HourlyForecastCell(model: $0, metrics: self.hourlyCellMetrics)
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

    static let model = HourlyForecastViewModel(hourlyForecasts: [

    ])
}
