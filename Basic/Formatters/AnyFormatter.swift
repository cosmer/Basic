//
//  Created by Charlie Osmer on 9/10/19.
//  Copyright © 2019 Charlie Osmer. All rights reserved.
//

import Foundation

final class AnyFormatter<Value>: Formatter {
    private let format: (Value) -> String

    init(format: @escaping (Value) -> String) {
        self.format = format

        super.init()
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override func string(for obj: Any?) -> String? {
        guard let date = obj as? Value else {
            return nil
        }
        return string(from: date)
    }

    func string(from value: Value) -> String {
        return format(value)
    }
}
