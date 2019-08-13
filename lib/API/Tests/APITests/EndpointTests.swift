//
//  Created by Charlie Osmer on 8/4/19.
//  Copyright © 2019 Charlie Osmer. All rights reserved.
//

import XCTest
@testable import API

final class EndpointTests: XCTestCase {
    func testPoints() {
        let endpoint = Endpoints.points(latitude: 43.12, longitude: -72.491)
        XCTAssertEqual(endpoint.buildURL().path, "/points/43.12,-72.491")
    }

    func testIcon() {
        let urlString = "https://api.weather.gov/icons/land/day/bkn?size=medium"
        let endpoint = Endpoints.Icon(url: URL(string: urlString)!)
            .with(IconMetrics(size: .large, fontSize: 16))

        let url = endpoint.buildURL()
        XCTAssertEqual(url.absoluteString, "https://api.weather.gov/icons/land/day/bkn?size=large&fontsize=16")
    }
}
