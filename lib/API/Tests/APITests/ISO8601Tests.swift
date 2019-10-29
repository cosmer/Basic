//
//  Created by Charles Osmer on 10/27/19.
//  Copyright © 2019 Charlie Osmer. All rights reserved.
//

import XCTest
@testable import API

final class ISO8601Tests: XCTestCase {
    func testDateComponents() {
        XCTAssertNil(DateComponents(iso8601Duration: ""))
        XCTAssertNil(DateComponents(iso8601Duration: "Z"))
        XCTAssertNil(DateComponents(iso8601Duration: "T"))
        XCTAssertNil(DateComponents(iso8601Duration: "P"))

        XCTAssertEqual(DateComponents(iso8601Duration: "P1Y2M10DT2H30M12S"), DateComponents(
            year: 1,
            month: 2,
            day: 10,
            hour: 2,
            minute: 30,
            second: 12
        ))

        XCTAssertEqual(DateComponents(iso8601Duration: "P1M"), DateComponents(
            month: 1
        ))

        XCTAssertEqual(DateComponents(iso8601Duration: "PT1M"), DateComponents(
            minute: 1
        ))

        XCTAssertEqual(DateComponents(iso8601Duration: "PT36H"), DateComponents(
            hour: 36
        ))

        XCTAssertEqual(DateComponents(iso8601Duration: "P1DT12H"), DateComponents(
            day: 1,
            hour: 12
        ))

        XCTAssertEqual(DateComponents(iso8601Duration: "PT0S"), DateComponents(
            second: 0
        ))

        XCTAssertEqual(DateComponents(iso8601Duration: "P0D"), DateComponents(
            day: 0
        ))
    }
}
