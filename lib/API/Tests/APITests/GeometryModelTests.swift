//
//  Created by Charlie Osmer on 8/4/19.
//  Copyright © 2019 Charlie Osmer. All rights reserved.
//

import XCTest
@testable import API

final class GeometryModelTests: XCTestCase {
    let decoder = JSONDecoder()

    func testPoint() {
        let data =
            """
            {
                "type": "Point",
                "coordinates": [30, 10]
            }
            """
            .data(using: .utf8)!

        XCTAssertNoThrow(try decoder.decode(GeometryModel.self, from: data))
    }

    func testLineString() {
        let data =
            """
            {
                "type": "LineString",
                "coordinates": [
                    [30, 10], [10, 30], [40, 40]
                ]
            }
            """
            .data(using: .utf8)!

        XCTAssertNoThrow(try decoder.decode(GeometryModel.self, from: data))
    }

    func testPolygon() {
        let data =
            """
            {
                "type": "Polygon",
                "coordinates": [
                    [[30, 10], [40, 40], [20, 40], [10, 20], [30, 10]]
                ]
            }
            """
            .data(using: .utf8)!

        XCTAssertNoThrow(try decoder.decode(GeometryModel.self, from: data))
    }

    func testComplexPolygon() {
        let data =
            """
            {
                "type": "Polygon",
                "coordinates": [
                    [[35, 10], [45, 45], [15, 40], [10, 20], [35, 10]],
                    [[20, 30], [35, 35], [30, 20], [20, 30]]
                ]
            }
            """
            .data(using: .utf8)!

        XCTAssertNoThrow(try decoder.decode(GeometryModel.self, from: data))
    }

    func testMultiPoint() {
        let data =
            """
            {
                "type": "MultiPoint",
                "coordinates": [
                    [10, 40], [40, 30], [20, 20], [30, 10]
                ]
            }
            """
            .data(using: .utf8)!

        XCTAssertNoThrow(try decoder.decode(GeometryModel.self, from: data))
    }

    func testMultiLineString() {
        let data =
            """
            {
                "type": "MultiLineString",
                "coordinates": [
                    [[10, 10], [20, 20], [10, 40]],
                    [[40, 40], [30, 30], [40, 20], [30, 10]]
                ]
            }
            """
            .data(using: .utf8)!

        XCTAssertNoThrow(try decoder.decode(GeometryModel.self, from: data))
    }

    func testMultiPolygon() {
        let data =
            """
            {
                "type": "MultiPolygon",
                "coordinates": [
                    [
                        [[30, 20], [45, 40], [10, 40], [30, 20]]
                    ],
                    [
                        [[15, 5], [40, 10], [10, 20], [5, 10], [15, 5]]
                    ]
                ]
            }
            """
            .data(using: .utf8)!

        XCTAssertNoThrow(try decoder.decode(GeometryModel.self, from: data))
    }

    func testComplexMultiPolygon() {
        let data =
            """
            {
                "type": "MultiPolygon",
                "coordinates": [
                    [
                        [[40, 40], [20, 45], [45, 30], [40, 40]]
                    ],
                    [
                        [[20, 35], [10, 30], [10, 10], [30, 5], [45, 20], [20, 35]],
                        [[30, 20], [20, 15], [20, 25], [30, 20]]
                    ]
                ]
            }
            """
            .data(using: .utf8)!

        XCTAssertNoThrow(try decoder.decode(GeometryModel.self, from: data))
    }

    func testCollection() {
        let data =
            """
            {
                "type": "GeometryCollection",
                "geometries": [
                    {
                        "type": "Point",
                        "coordinates": [40, 10]
                    },
                    {
                        "type": "LineString",
                        "coordinates": [
                            [10, 10], [20, 20], [10, 40]
                        ]
                    },
                    {
                        "type": "Polygon",
                        "coordinates": [
                            [[40, 40], [20, 45], [45, 30], [40, 40]]
                        ]
                    }
                ]
            }
            """
            .data(using: .utf8)!

        XCTAssertNoThrow(try decoder.decode(GeometryModel.self, from: data))
    }
}
