//
//  HourlyForecastViewModel.swift
//  Basic
//
//  Created by Charles Osmer on 10/16/19.
//  Copyright © 2019 Charlie Osmer. All rights reserved.
//

import Foundation
import API

struct HourlyForecastViewModel {
    var hourlyForecasts: [HourlyForecastCellModel]
}

extension HourlyForecastViewModel {
    init(forecast: HourlyForecastModel, timeZone: TimeZone?) {
        hourlyForecasts = forecast.properties.periods
            .map { HourlyForecastCellModel(period: $0, timeZone: timeZone) }
    }
}
