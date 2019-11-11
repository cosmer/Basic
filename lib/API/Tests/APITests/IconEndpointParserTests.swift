//
//  Created by Charles Osmer on 11/7/19.
//  Copyright © 2019 Charlie Osmer. All rights reserved.
//

import XCTest
@testable import API

// https://api.weather.gov/icons/land/night/sct
// https://api.weather.gov/icons/land/night/tsra_sct,20/tsra_sct,50
// https://api.weather.gov/icons/land/night/tsra_sct,20/tsra_sct
// https://api.weather.gov/icons/land/night/tsra_sct/tsra_sct,20
// https://api.weather.gov/icons/land/night/tsra_sct,20/tsra_sct,20
// https://api.weather.gov/icons/land/night/tsra_sct/tsra_sct

final class IconEndpointParserTests: XCTestCase {
    func testExtractPrecipitationChance() {
        let parse = IconEndpointParser.extractPreciptationChance

        XCTAssertNil(parse(Endpoint(url: URL(string: "https://api.weather.gov")!)))
        XCTAssertNil(parse(Endpoint(url: URL(string: "https://api.weather.gov/icons/land/night")!)))
        XCTAssertNil(parse(Endpoint(url: URL(string: "https://api.weather.gov/icons/land/foo/sct")!)))
        XCTAssertNil(parse(Endpoint(url: URL(string: "https://api.weather.gov/icons/notland/night/sct")!)))
        XCTAssertNil(parse(Endpoint(url: URL(string: "https://api.weather.gov/icons/land/night/sct/sct/sct")!)))

        do {
            if let (endpoint, chance) = parse(Endpoint(url: URL(string: "https://api.weather.gov/icons/land/day/sct")!)) {
                XCTAssertEqual(endpoint.buildURL().absoluteString, "https://api.weather.gov/icons/land/day/sct")
                XCTAssertNil(chance)
            } else {
                XCTFail("expected value")
            }
        }

        do {
            if let (endpoint, chance) = parse(Endpoint(url: URL(string: "https://api.weather.gov/icons/land/night/sct")!)) {
                XCTAssertEqual(endpoint.buildURL().absoluteString, "https://api.weather.gov/icons/land/night/sct")
                XCTAssertNil(chance)
            } else {
                XCTFail("expected value")
            }
        }

        do {
            if let (endpoint, chance) = parse(Endpoint(url: URL(string: "https://api.weather.gov/icons/land/night/tsra_hi/tsra_hi?size=medium")!)) {
                XCTAssertEqual(endpoint.buildURL().absoluteString, "https://api.weather.gov/icons/land/night/tsra_hi/tsra_hi?size=medium")
                XCTAssertNil(chance)
            } else {
                XCTFail("expected value")
            }
        }

        do {
            if let (endpoint, chance) = parse(Endpoint(url: URL(string: "https://api.weather.gov/icons/land/night/sct/tsra_sct")!)) {
                XCTAssertEqual(endpoint.buildURL().absoluteString, "https://api.weather.gov/icons/land/night/sct/tsra_sct")
                XCTAssertNil(chance)
            } else {
                XCTFail("expected value")
            }
        }

        do {
            if let (endpoint, chance) = parse(Endpoint(url: URL(string: "https://api.weather.gov/icons/land/night/tsra_sct,20/tsra_sct,50")!)) {
                XCTAssertEqual(endpoint.buildURL().absoluteString, "https://api.weather.gov/icons/land/night/tsra_sct/tsra_sct")
                XCTAssertEqual(chance, .transition(20, 50))
            } else {
                XCTFail("expected value")
            }
        }

        do {
            if let (endpoint, chance) = parse(Endpoint(url: URL(string: "https://api.weather.gov/icons/land/night/tsra_sct,20/tsra_sct")!)) {
                XCTAssertEqual(endpoint.buildURL().absoluteString, "https://api.weather.gov/icons/land/night/tsra_sct/tsra_sct")
                XCTAssertEqual(chance, .transition(20, nil))
            } else {
                XCTFail("expected value")
            }
        }

        do {
            if let (endpoint, chance) = parse(Endpoint(url: URL(string: "https://api.weather.gov/icons/land/night/tsra_sct/tsra_sct,50")!)) {
                XCTAssertEqual(endpoint.buildURL().absoluteString, "https://api.weather.gov/icons/land/night/tsra_sct/tsra_sct")
                XCTAssertEqual(chance, .transition(nil, 50))
            } else {
                XCTFail("expected value")
            }
        }

        do {
            if let (endpoint, chance) = parse(Endpoint(url: URL(string: "https://api.weather.gov/icons/land/night/tsra_sct,20/sct,50")!)) {
                XCTAssertEqual(endpoint.buildURL().absoluteString, "https://api.weather.gov/icons/land/night/tsra_sct/sct")
                XCTAssertEqual(chance, .split(20, 50))
            } else {
                XCTFail("expected value")
            }
        }

        do {
            if let (endpoint, chance) = parse(Endpoint(url: URL(string: "https://api.weather.gov/icons/land/night/tsra_sct,20/sct")!)) {
                XCTAssertEqual(endpoint.buildURL().absoluteString, "https://api.weather.gov/icons/land/night/tsra_sct/sct")
                XCTAssertEqual(chance, .split(20, nil))
            } else {
                XCTFail("expected value")
            }
        }

        do {
            if let (endpoint, chance) = parse(Endpoint(url: URL(string: "https://api.weather.gov/icons/land/night/tsra_sct/sct,50")!)) {
                XCTAssertEqual(endpoint.buildURL().absoluteString, "https://api.weather.gov/icons/land/night/tsra_sct/sct")
                XCTAssertEqual(chance, .split(nil, 50))
            } else {
                XCTFail("expected value")
            }
        }
    }
}
