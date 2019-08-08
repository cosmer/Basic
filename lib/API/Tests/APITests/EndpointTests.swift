//
//  Created by Charlie Osmer on 8/4/19.
//  Copyright © 2019 Charlie Osmer. All rights reserved.
//

import XCTest
@testable import API

final class EndpointTests: XCTestCase {
    func testPoints() {
        let endpoint = Endpoints.points(latitude: 43.12, longitude: -72.491)
        XCTAssertEqual(endpoint.url.path, "/points/43.12,-72.491")
    }
}
