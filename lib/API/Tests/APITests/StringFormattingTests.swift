//
//  Created by Charles Osmer on 12/3/19.
//  Copyright © 2019 Charlie Osmer. All rights reserved.
//

import XCTest
@testable import API

final class StringFormattingTests: XCTestCase {
    func testRemovingManualLineBreaks() {
        XCTAssertEqual("".removingManualLineBreaks(), "")

        XCTAssertEqual(" ".removingManualLineBreaks(), "")
        XCTAssertEqual("\n".removingManualLineBreaks(), "")
        XCTAssertEqual(" \n ".removingManualLineBreaks(), "")
        XCTAssertEqual(" a ".removingManualLineBreaks(), "a")

        XCTAssertEqual("\n\n".removingManualLineBreaks(), "\n\n")
        XCTAssertEqual("\n\n ".removingManualLineBreaks(), "\n\n")

        XCTAssertEqual("a\n\nb".removingManualLineBreaks(), "a\n\nb")
        XCTAssertEqual(" a\n b\n\nc".removingManualLineBreaks(), "a b\n\nc")
    }
}
