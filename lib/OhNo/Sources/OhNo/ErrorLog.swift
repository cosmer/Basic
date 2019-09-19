//
//  Created by Charlie Osmer on 9/18/19.
//  Copyright © 2019 Charlie Osmer. All rights reserved.
//

import Foundation
import GRDB

public final class ErrorLog {
    public enum Store {
        case memory
        case file(URL)
    }

    public struct Config {
        /// The target queue for the work performed by the logger.
        /// Must not be the main queue.
        public var targetQueue: DispatchQueue

        /// Maximum number of error records.
        /// Records are pruned when the limit is exceeded, oldest first.
        public var maximumErrorRecordCount = 500

        /// Number of error records to keep when records are pruned.
        public var minimumErrorRecordCount = 250

        public init(targetQueue: DispatchQueue) {
            self.targetQueue = targetQueue
        }
    }

    private let config: Config
    private let db: DatabaseQueue

    /// Number of rows in the error table or nil if not yet known.
    /// Must only be accessed from the database queue.
    private var errorCount: Int?

    public init(store: Store, config: Config) throws {
        precondition(config.targetQueue != .main)
        precondition(config.minimumErrorRecordCount < config.maximumErrorRecordCount)
        self.config = config

        var dbConfiguration = Configuration()
        dbConfiguration.targetQueue = config.targetQueue

        switch store {
        case .file(let url):
            db = try DatabaseQueue(path: url.absoluteString, configuration: dbConfiguration)
        case .memory:
            db = DatabaseQueue(configuration: dbConfiguration)
        }

        var migration = DatabaseMigrator()

        migration.registerMigration("v1") { (db) in
            try db.create(table: ErrorModel.databaseTableName) { (t) in
                t.autoIncrementedPrimaryKey("id")
                t.column("date", .date).notNull()
                t.column("scope", .text)
                t.column("errorType", .text).notNull()
                t.column("code", .integer)
                t.column("domain", .text)
                t.column("description", .text)
                t.column("userInfo", .text)
                t.column("caseName", .text)
            }
        }

        try migration.migrate(db)
    }

    /// Log an error asynchronously.
    /// Old error records are pruned if the maximum record count is exceeded.
    public func log(_ error: Error, at date: Date = Date(), scope: Scope? = nil) {
        db.asyncWrite({ [config] (db) -> Int in
            let count = (try self.errorCount ?? ErrorModel.fetchCount(db)) + 1

            let model = ErrorModel(date: date, scope: scope, error: error)
            try model.insert(db)

            if count > config.maximumErrorRecordCount {
                try ErrorModel
                    .order(Column("date").asc)
                    .limit(count - config.minimumErrorRecordCount)
                    .deleteAll(db)

                return try ErrorModel.fetchCount(db)
            }

            return count
        }, completion: { (_, result) in
            switch result {
            case .success(let count):
                self.errorCount = count
            case .failure(let error):
                assertionFailure(error.localizedDescription)
            }
        })
    }

    /// - returns: All errors ordered by descending date.
    func errors() throws -> [ErrorModel] {
        try db.read { (db) in
            try ErrorModel
                .order(Column("date").desc)
                .fetchAll(db)
        }
    }

    /// - returns: An error logger that logs all errors with the given scope.
    public func scoped(to scope: Scope) -> ScopedErrorLog {
        return ScopedErrorLog(scope: scope, log: self)
    }

    /// - returns: An error logger that logs all errors with the given scope.
    public func scoped(to scope: String) -> ScopedErrorLog {
        return scoped(to: Scope(name: scope))
    }
}
