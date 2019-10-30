//
//  Created by Charlie Osmer on 8/21/19.
//  Copyright © 2019 Charlie Osmer. All rights reserved.
//

import Foundation
import API

final class PercentFormatter: Formatter {
    private let numberFormatter = NumberFormatter()

    override init() {
        numberFormatter.numberStyle = .percent
        super.init()
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override func string(for obj: Any?) -> String? {
        switch obj {
        case let measurment as Measurement<UnitProbability>:
            return string(from: measurment)
        case let measurment as Measurement<UnitHumidity>:
            return string(from: measurment)
        case let measurment as Measurement<UnitSkyCover>:
            return string(from: measurment)
        default:
            return nil
        }
    }

    private func string(from value: Double) -> String {
        return numberFormatter.string(from: value/100 as NSNumber)!
    }

    func string(from measurement: Measurement<UnitProbability>) -> String {
        precondition(measurement.unit == .percent)
        return string(from: measurement.value)
    }

    func string(from measurement: Measurement<UnitHumidity>) -> String {
        precondition(measurement.unit == .percent)
        return string(from: measurement.value)
    }

    func string(from measurement: Measurement<UnitSkyCover>) -> String {
        precondition(measurement.unit == .percent)
        return string(from: measurement.value)
    }
}
