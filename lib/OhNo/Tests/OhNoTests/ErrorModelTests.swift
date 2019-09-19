import XCTest
import CoreLocation
@testable import OhNo

private struct NotEncodable { }

/*private*/ struct MyLocalizedError: LocalizedError {
    var errorDescription: String? { "Oh no!" }
}

private struct CustomError: CustomNSError {
    static var errorDomain: String { "LOL" }

    var errorCode: Int { 999 }

    var errorUserInfo: [String: Any] {
        ["a": "foo", "b": 1, "x": NotEncodable()]
    }
}

private enum CustomLocalizedEnumError: CustomNSError, LocalizedError {
    case e1, e2

    static var errorDomain: String { "ROFL" }

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

final class ErrorModelTests: XCTestCase {
    private enum EnumError: Error {
        case e1, e2
    }

    func testEmptyError() {
        struct EmptyError: Error { }

        let model = ErrorModel(date: Date(), scope: nil, error: EmptyError())
        XCTAssertEqual(model.errorType, "EmptyError")
        XCTAssertEqual(model.code, nil)
        XCTAssertEqual(model.domain, "OhNoTests.ErrorModelTests.<>.<>")
        XCTAssertEqual(model.description, nil)
        XCTAssertEqual(model.userInfo, nil)
        XCTAssertEqual(model.caseName, nil)
    }

    func testLocalizedError() {
        let model = ErrorModel(date: Date(), scope: nil, error: MyLocalizedError())
        XCTAssertEqual(model.errorType, "MyLocalizedError")
        XCTAssertEqual(model.code, nil)
        XCTAssertEqual(model.domain, "OhNoTests")
        XCTAssertEqual(model.description, "Oh no!")
        XCTAssertEqual(model.userInfo, nil)
        XCTAssertEqual(model.caseName, nil)
    }

    func testCustomError() {
        let model = ErrorModel(date: Date(), scope: nil, error: CustomError())
        XCTAssertEqual(model.errorType, "CustomError")
        XCTAssertEqual(model.code, 999)
        XCTAssertEqual(model.domain, "LOL")
        XCTAssertEqual(model.description, nil)
        XCTAssertEqual(model.userInfo, try! encodeUserInfo(["a": "foo", "b": 1]))
        XCTAssertEqual(model.caseName, nil)
    }

    func testEnumError() {
        let model = ErrorModel(date: Date(), scope: nil, error: EnumError.e1)
        XCTAssertEqual(model.errorType, "EnumError")
        XCTAssertEqual(model.code, 0)
        XCTAssertEqual(model.domain, "OhNoTests.ErrorModelTests.<>")
        XCTAssertEqual(model.description, nil)
        XCTAssertEqual(model.userInfo, nil)
        XCTAssertEqual(model.caseName, "e1")
    }

    func testCustomLocalizedEnumError() {
        let model = ErrorModel(date: Date(), scope: nil, error: CustomLocalizedEnumError.e2)
        XCTAssertEqual(model.errorType, "CustomLocalizedEnumError")
        XCTAssertEqual(model.code, 11)
        XCTAssertEqual(model.domain, "ROFL")
        XCTAssertEqual(model.description, "enum error")
        XCTAssertEqual(model.userInfo, try! encodeUserInfo(["a": "bar", "b": 12]))
        XCTAssertEqual(model.caseName, "e2")
    }

    func testCLError() {
        let model = ErrorModel(date: Date(), scope: nil, error: CLError(.denied))
        XCTAssertEqual(model.errorType, "NSError")
        XCTAssertEqual(model.code, 1)
        XCTAssertEqual(model.domain, CLError.errorDomain)
        XCTAssertEqual(model.description, "The operation couldn’t be completed. (kCLErrorDomain error 1.)")
        XCTAssertEqual(model.userInfo, nil)
        XCTAssertEqual(model.caseName, nil)
    }

    func testURLError() {
        let model = ErrorModel(date: Date(), scope: nil, error: URLError(.notConnectedToInternet))
        XCTAssertEqual(model.errorType, "NSError")
        XCTAssertEqual(model.code, -1009)
        XCTAssertEqual(model.domain, URLError.errorDomain)
        XCTAssertEqual(model.description, "The operation couldn’t be completed. (NSURLErrorDomain error -1009.)")
        XCTAssertEqual(model.userInfo, nil)
        XCTAssertEqual(model.caseName, nil)
    }

    func testCocoaError() {
        let url = URL(string: "www.apple.com")!
        let model = ErrorModel(date: Date(), scope: nil, error: CocoaError(.fileNoSuchFile, userInfo: ["url": url]))
        XCTAssertEqual(model.errorType, "NSError")
        XCTAssertEqual(model.code, 4)
        XCTAssertEqual(model.domain, CocoaError.errorDomain)
        XCTAssertEqual(model.description, "The file doesn’t exist.")
        XCTAssertEqual(model.userInfo, try! encodeUserInfo(["url": url]))
        XCTAssertEqual(model.caseName, nil)
    }

    func testDecodingError() {
        struct Foo: Decodable {
            var value: Int
        }

        do {
            let decoder = JSONDecoder()
            _  = try decoder.decode(Foo.self, from: Data())
        } catch {
            let model = ErrorModel(date: Date(), scope: nil, error: error)
            XCTAssertEqual(model.errorType, "DecodingError")
            XCTAssertEqual(model.code, 4864)
            XCTAssertEqual(model.domain, CocoaError.errorDomain)
            XCTAssertEqual(model.description, "The data couldn’t be read because it isn’t in the correct format.")
            XCTAssertEqual(model.userInfo, nil)
            XCTAssertEqual(model.caseName, "dataCorrupted")
            return
        }

        XCTFail()
    }
}
