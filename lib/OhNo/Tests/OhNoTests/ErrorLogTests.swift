import XCTest
import CoreLocation
@testable import OhNo

private enum TestError: CustomNSError, LocalizedError {
    case e1, e2

    static var errorDomain: String { "ErrorLogTests" }

    var errorCode: Int {
        switch self {
        case .e1:
            return 10
        case .e2:
            return 11
        }
    }

    var errorUserInfo: [String: Any] {
        ["a": "bar", "b": 12 as Int8]
    }

    var errorDescription: String? {
        return "enum error"
    }
}

final class ErrorLogTests: XCTestCase {
    private let queue = DispatchQueue(label: "test", qos: .utility)

    func testLog() {
        do {
            let config = ErrorLog.Config(targetQueue: queue)
            let log = try ErrorLog(store: .memory, config: config)

            let t1 = Date()
            let t2 = t1.addingTimeInterval(1)

            log.log(TestError.e1, at: t1, scope: Scope(name: "test"))
            log.log(TestError.e2, at: t2, scope: Scope(name: "test"))

            let errors = try log.errors()
            XCTAssertEqual(errors.count, 2)

            if errors.count == 2 {
                XCTAssertEqual(errors[0].caseName, "e2")
                XCTAssertEqual(errors[1].caseName, "e1")
            }
        } catch {
            XCTFail(error.localizedDescription)
        }
    }

    func testPrune() {
        struct CountableError: CustomNSError {
            var errorCode: Int
        }

        do {
            let config = ErrorLog.Config(targetQueue: queue)
            let log = try ErrorLog(store: .memory, config: config)

            let t0 = Date()
            for i in 0...config.maximumErrorRecordCount {
                log.log(CountableError(errorCode: i), at: t0.addingTimeInterval(TimeInterval(i)))
            }

            let errors = try log.errors()
            XCTAssertEqual(errors.count, config.minimumErrorRecordCount)

            if errors.count == config.minimumErrorRecordCount {
                XCTAssertEqual(errors.first!.code!, config.maximumErrorRecordCount)
                XCTAssertEqual(errors.last!.code!, config.maximumErrorRecordCount - config.minimumErrorRecordCount + 1)
            }
        } catch {
            XCTFail(error.localizedDescription)
        }
    }
}
