//
//  Created by Charlie Osmer on 9/18/19.
//  Copyright © 2019 Charlie Osmer. All rights reserved.
//

import Foundation

public struct ScopedErrorLog {
    public let scope: Scope
    public let log: ErrorLog

    public init(scope: Scope, log: ErrorLog) {
        self.scope = scope
        self.log = log
    }

    public func log(_ error: Error, at date: Date = Date()) {
        log.log(error, at: date, scope: scope)
    }
}
