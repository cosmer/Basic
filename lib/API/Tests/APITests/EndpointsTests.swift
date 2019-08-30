//
//  Created by Charlie Osmer on 8/4/19.
//  Copyright © 2019 Charlie Osmer. All rights reserved.
//

import XCTest
@testable import API

final class EndpointsTests: XCTestCase {
    func testPoints() {
        let endpoint = Endpoints.points(latitude: 43.12, longitude: -72.491)
        XCTAssertEqual(endpoint.buildURL().path, "/points/43.12,-72.491")
    }

    func testIcon() {
        let urlString = "https://api.weather.gov/icons/land/day/bkn?size=medium"
        let endpoint = Endpoints.Icon(url: URL(string: urlString)!)
            .with(.init(size: .large, fontSize: 16))

        let url = endpoint.buildURL()
        XCTAssertEqual(url.absoluteString, "https://api.weather.gov/icons/land/day/bkn?size=large&fontsize=16")
    }

    func testObservations() {
        let urlString = "https://api.weather.gov/zones/forecast/KSZ009"
        let endpoint = Endpoints.ForecastZone(url: URL(string: urlString)!)
            .observations()
            .with(limit: 1)

        let url = endpoint.buildURL()
        XCTAssertEqual(url.absoluteString, "https://api.weather.gov/zones/forecast/KSZ009/observations?limit=1")
    }

    func testProduct() {
        let endpoint = Endpoints.product(id: ProductID(rawValue: "id"))
        let url = endpoint.buildURL()
        XCTAssertEqual(url.absoluteString, "https://api.weather.gov/products/id")
    }

    func testProducts() {
        let endpoint = Endpoints.products(
            officeId: OfficeID(rawValue: "officeId")!,
            code: ProductCode(rawValue: "code")
        )

        let url = endpoint.buildURL()
        XCTAssertEqual(url.absoluteString, "https://api.weather.gov/products/types/code/locations/officeId")
    }

    func testProductTypes() {
        let endpoint = Endpoints.productTypes(officeId: OfficeID(rawValue: "officeId")!)
        let url = endpoint.buildURL()
        XCTAssertEqual(url.absoluteString, "https://api.weather.gov/products/locations/officeId/types")
    }

    func testExtractForecastOfficeId() {
        let urlString = "https://api.weather.gov/offices/TOP"
        let endpoint = Endpoints.ForecastOffice(url: URL(string: urlString)!)
        XCTAssertEqual(endpoint.officeId()?.rawValue, "TOP")
    }
}
