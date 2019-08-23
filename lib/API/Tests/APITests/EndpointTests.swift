//
//  Created by Charlie Osmer on 8/17/19.
//  Copyright © 2019 Charlie Osmer. All rights reserved.
//

import XCTest
@testable import API

final class EndpointTests: XCTestCase {
    func testDecode() {
        struct Container: Decodable {
            var endpoint: Endpoints.Test
        }

        // Decoding should preserve query items.
        let url = "https://api.weather.gov/icons/land/day/bkn?size=medium"

        let json =
        """
        { "endpoint": "\(url)" }
        """

        do {
            let decoder = JSONDecoder.makeEndpointDecoder()
            let container = try decoder.decode(Container.self, from: json.data(using: .utf8)!)
            XCTAssertEqual(container.endpoint.buildURL().absoluteString, url)
        } catch {
            XCTFail(error.localizedDescription)
        }
    }

    func testAppendingPathComponent() {
        // Appending a path component should remove query items.
        let initial = "https://api.weather.gov/a?foo=bar"
        let expected = "https://api.weather.gov/a/b"

        let endpoint: Endpoints.Test = Endpoints.Test(url: URL(string: initial)!)
            .appending(pathComponent: "b")

        XCTAssertEqual(endpoint.buildURL().absoluteString, expected)
    }

    func testReplacingQueryItems() {
        let base = Endpoints.Test(url: URL(string: "https://api.weather.gov")!)

        let e1 = base.replacingQueryItems(with: [(name: "p1", value: "foo")])
        XCTAssertEqual(e1.buildURL().absoluteString, "https://api.weather.gov?p1=foo")

        let e2 = e1.replacingQueryItems(with: [(name: "p2", value: "bar")])
        XCTAssertEqual(e2.buildURL().absoluteString, "https://api.weather.gov?p2=bar")

        let e3 = e2.replacingQueryItems(with: [])
        XCTAssertEqual(e3.buildURL().absoluteString, "https://api.weather.gov")

        let e4 = e3.replacingQueryItems(with: [(name: "p1", value: "foo"), (name: "p2", value: "bar")])
        XCTAssertEqual(e4.buildURL().absoluteString, "https://api.weather.gov?p1=foo&p2=bar")
    }
}

private extension Endpoints {
    typealias Test = Endpoint<EndpointTags.Test>
}

private extension EndpointTags {
    enum Test: EndpointTag {
        typealias Model = Never
    }
}
