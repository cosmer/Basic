//
//  Created by Charles Osmer on 10/27/19.
//  Copyright © 2019 Charlie Osmer. All rights reserved.
//

import Foundation
import BasicAlgorithms

extension DateComponents {
    init?(iso8601Duration duration: String) {
        var tokens = duration
            .groupingContiguousElements(by: { $0.isNumber == $1.isNumber && !$0.isLetter })[...]

        guard tokens.popFirst() == "P", !tokens.isEmpty else {
            return nil
        }

        self.init()

        while let token = tokens.popFirst() {
            if token == "T" {
                break
            }

            guard let value = Int(token) else {
                return nil
            }

            guard let component = tokens.popFirst() else {
                return nil
            }

            switch component {
            case "Y":
                year = value
            case "M":
                month = value
            case "D":
                day = value
            default:
                return nil
            }
        }

        while let token = tokens.popFirst() {
            guard let value = Int(token) else {
                return nil
            }

            guard let component = tokens.popFirst() else {
                return nil
            }

            switch component {
            case "H":
                hour = value
            case "M":
                minute = value
            case "S":
                second = value
            default:
                return nil
            }
        }
    }
}
