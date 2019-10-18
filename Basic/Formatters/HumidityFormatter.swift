//
//  Created by Charlie Osmer on 8/21/19.
//  Copyright © 2019 Charlie Osmer. All rights reserved.
//

import Foundation
import API

final class HumidityFormatter: Formatter {
    private let numberFormatter = NumberFormatter()

    override init() {
        numberFormatter.numberStyle = .percent
        super.init()
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override func string(for obj: Any?) -> String? {
        guard let measurement = obj as? Measurement<UnitHumidity> else {
            return nil
        }
        return string(from: measurement)
    }

    func string(from measurement: Measurement<UnitHumidity>) -> String {
        precondition(measurement.unit == .percent)
        return numberFormatter.string(from: measurement.value/100 as NSNumber)!
    }
}
