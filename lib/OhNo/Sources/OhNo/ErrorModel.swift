//
//  Created by Charlie Osmer on 9/18/19.
//  Copyright © 2019 Charlie Osmer. All rights reserved.
//

import Foundation
import GRDB

struct ErrorModel: Codable {
    let date: Date
    let scope: String?
    let errorType: String
    let code: Int?
    let domain: String?
    let description: String?
    let userInfo: String?
    let caseName: String?
}

extension ErrorModel: PersistableRecord, FetchableRecord {
    static var databaseTableName: String { "error" }
}

extension ErrorModel {
    init(date: Date, scope: Scope?, error: Error) {
        self.date = date
        self.scope = scope?.name

        errorType = "\(type(of: error))"

        let isNSError = error.isNSError
        let nsError = error as NSError
        let mirror = Mirror(reflecting: error)

        if isNSError {
            description = nsError.localizedDescription
        } else if let error = error as? LocalizedError {
            description = error.localizedDescription
        } else {
            description = nil
        }

        if isNSError {
            userInfo = try? encodeUserInfo(nsError.userInfo)
            domain = nsError.domain // ObjC error domains don't need to be simplified.
        } else if let error = error as? CustomNSError {
            userInfo = try? encodeUserInfo(error.errorUserInfo)
            domain = simplifyDomain(type(of: error).errorDomain, withErrorType: errorType)
        } else {
            userInfo = nil
            domain = simplifyDomain(nsError.domain, withErrorType: errorType)
        }

        if isNSError {
            code = nsError.code
        } else if let error = error as? CustomNSError {
            code = error.errorCode
        } else if mirror.displayStyle == .enum {
            code = nsError.code
        } else {
            code = nil
        }

        if mirror.displayStyle == .enum {
            if let label = mirror.children.first?.label, !label.isEmpty {
                caseName = label
            } else {
                caseName = "\(error)"
            }
        } else {
            caseName = nil
        }
    }
}

private extension Error {
    var isNSError: Bool {
        let any: Any = self
        return String(cString: object_getClassName(self)) != "_SwiftNativeNSError" && any is NSObject
    }
}
