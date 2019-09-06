//
//  Created by Charlie Osmer on 9/5/19.
//  Copyright © 2019 Charlie Osmer. All rights reserved.
//

import Foundation
import API

@propertyWrapper
struct PrettyPrintParagraphs {
    var wrappedValue: String

    init(wrappedValue: String) {
        self.wrappedValue = wrappedValue.removingManualLineBreaks()
    }
}
