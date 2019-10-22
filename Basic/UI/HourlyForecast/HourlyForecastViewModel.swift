//
//  HourlyForecastViewModel.swift
//  Basic
//
//  Created by Charles Osmer on 10/16/19.
//  Copyright © 2019 Charlie Osmer. All rights reserved.
//

import Foundation
import API
import BasicAlgorithms

struct HourlyForecastViewModel {
    struct Section: Identifiable {
        var id: Date { time }
        var time: Date
        var forecasts: [HourlyForecastCellModel]
        var timeZone: TimeZone

        var timeFormatter: DateFormatter { Formatters.dayName(for: timeZone) }
    }

    var sections: [Section]
}

extension HourlyForecastViewModel {
    init(forecast: HourlyForecastModel, timeZone: TimeZone) {
        var calendar = Calendar.current
        calendar.timeZone = timeZone

        sections = forecast.properties.periods
            .groupingContiguousElements { $0.startOfDay(in: calendar) == $1.startOfDay(in: calendar) }
            .map { (periods) in
                let forecasts = periods.map { HourlyForecastCellModel(period: $0, timeZone: timeZone) }
                let time = periods.first!.startOfDay(in: calendar)
                return Section(time: time, forecasts: forecasts, timeZone: timeZone)
            }
    }
}

private extension HourlyForecastModel.Period {
    func startOfDay(in calendar: Calendar) -> Date {
        let startOfDay = calendar.startOfDay(for: startTime)

        // Night periods before noon are part of the previous day's night.
        if !isDaytime && calendar.component(.hour, from: startTime) < 12 {
            let startOfPreviousDay = calendar.date(byAdding: .day, value: -1, to: startOfDay)
            return startOfPreviousDay ?? startOfDay
        }

        return startOfDay
    }
}
