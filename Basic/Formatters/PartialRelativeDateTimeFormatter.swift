//
//  Created by Charlie Osmer on 9/10/19.
//  Copyright © 2019 Charlie Osmer. All rights reserved.
//

import Foundation

final class PartialRelativeDateTimeFormatter: Formatter {
    private let referenceDate: Date
    private let formatter: RelativeDateTimeFormatter

    init(referenceDate: Date, formatter: RelativeDateTimeFormatter) {
        self.referenceDate = referenceDate
        self.formatter = formatter

        super.init()
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override func string(for obj: Any?) -> String? {
        guard let date = obj as? Date else {
            return nil
        }
        return string(for: date)
    }

    func string(for date: Date) -> String {
        return formatter.localizedString(for: date, relativeTo: referenceDate)
    }
}
