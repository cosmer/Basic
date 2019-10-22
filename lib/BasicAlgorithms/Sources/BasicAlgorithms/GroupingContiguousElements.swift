//
//  Created by Charles Osmer on 10/21/19.
//  Copyright © 2019 Charlie Osmer. All rights reserved.
//

import Foundation

public extension Collection {
    func groupingContiguousElements(by grouping: (Element, Element) -> Bool) -> [SubSequence] {
        guard !isEmpty else {
            return []
        }

        var groups: [SubSequence] = []

        var start = startIndex
        var end = index(after: startIndex)

        while end != endIndex {
            if !grouping(self[start], self[end]) {
                groups.append(self[start..<end])
                start = end
            }

            end = index(after: end)
        }

        if start != end {
            groups.append(self[start..<end])
        }

        return groups
    }
}
