//
//  Created by Charlie Osmer on 9/19/19.
//  Copyright © 2019 Charlie Osmer. All rights reserved.
//

import Foundation
import OhNo

extension ErrorLog {
    static let `default`: ErrorLog = {
        var directoryURL = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first!
            .appendingPathComponent("logs", isDirectory: true)

        do {
            try FileManager.default.createDirectory(at: directoryURL, withIntermediateDirectories: false, attributes: nil)

            var resourceValues = URLResourceValues()
            resourceValues.isExcludedFromBackup = true
            try directoryURL.setResourceValues(resourceValues)
        } catch {
            // Ok
        }

        let fileURL = directoryURL.appendingPathComponent("log.db", isDirectory: false)
        let config = Config(targetQueue: DispatchQueue(label: "io", qos: .utility))
        return try! ErrorLog(store: .file(fileURL), config: config)
    }()
}
