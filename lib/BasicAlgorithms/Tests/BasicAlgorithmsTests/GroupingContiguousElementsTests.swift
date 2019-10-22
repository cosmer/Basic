//
//  Created by Charles Osmer on 10/21/19.
//  Copyright © 2019 Charlie Osmer. All rights reserved.
//

import XCTest
@testable import BasicAlgorithms

class AlgorithmTests: XCTestCase {
    func testCollectionPredicate() {
        let p = { (_ a: Int, _ b: Int) in a == b }
        XCTAssertEqual(Array<Int>().groupingContiguousElements(by: p), [])
        XCTAssertEqual([1].groupingContiguousElements(by: p), [[1]])
        XCTAssertEqual([1, 1].groupingContiguousElements(by: p), [[1, 1]])
        XCTAssertEqual([1, 2].groupingContiguousElements(by: p), [[1], [2]])
        XCTAssertEqual([1, 1, 2, 3, 4, 4].groupingContiguousElements(by: p), [[1, 1], [2], [3], [4, 4]])
        XCTAssertEqual([1, 2, 2, 4, 4, 5].groupingContiguousElements(by: p), [[1], [2, 2], [4, 4], [5]])
        XCTAssertEqual([1, 5, 5, 5, 5, 5].groupingContiguousElements(by: p), [[1], [5, 5, 5, 5, 5]])
    }
}
