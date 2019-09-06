//
//  Created by Charlie Osmer on 9/5/19.
//  Copyright © 2019 Charlie Osmer. All rights reserved.
//

import Foundation

public extension StringProtocol {
    func removingManualLineBreaks() -> String {
        return self
            .components(separatedBy: "\n\n")
            .map { (paragraph) -> String in
                var lines: [String] = []
                paragraph.enumerateLines { (line, _) in
                    if !line.isEmpty {
                        lines.append(line.trimmingCharacters(in: .whitespacesAndNewlines))
                    }
                }
                return lines.joined(separator: " ")
            }
            .joined(separator: "\n\n")
    }
}
