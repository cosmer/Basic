//
//  Created by Charlie Osmer on 8/4/19.
//  Copyright © 2019 Charlie Osmer. All rights reserved.
//

import XCTest
@testable import API

final class TopLevelModelTests: XCTestCase {
    let decoder = JSONDecoder.makeEndpointDecoder()

    func testDecodePointsModel() {
        let data = pointsModelData.data(using: .utf8)!
        XCTAssertNoThrow(try decoder.decode(PointsModel.self, from: data))
    }

    func testDecodeForecastModel() {
        let data = forecastModelData.data(using: .utf8)!
        XCTAssertNoThrow(try decoder.decode(ForecastModel.self, from: data))
    }

    func testDecodeHourlyForecastModel() {
        let data = hourlyForecastModelData.data(using: .utf8)!
        XCTAssertNoThrow(try decoder.decode(HourlyForecastModel.self, from: data))
    }

    func testDecodeObservationModel() {
        let data = observationModelData.data(using: .utf8)!
        XCTAssertNoThrow(try decoder.decode(ObservationModel.self, from: data))
    }

    func testDecodeObservationsModel() {
        let data = observationsModelData.data(using: .utf8)!
        XCTAssertNoThrow(try decoder.decode(ObservationsModel.self, from: data))
    }

    func testDecodeStationsModel() {
        let data = stationsModelData.data(using: .utf8)!
        XCTAssertNoThrow(try decoder.decode(StationsModel.self, from: data))
    }

    func testProductModel() {
        let data = productModelData.data(using: .utf8)!
        XCTAssertNoThrow(try decoder.decode(ProductModel.self, from: data))
    }

    func testProductsModel() {
        let data = productsModelData.data(using: .utf8)!
        XCTAssertNoThrow(try decoder.decode(ProductsModel.self, from: data))
    }

    func testProductTypesModel() {
        let data = productTypesModelData.data(using: .utf8)!
        XCTAssertNoThrow(try decoder.decode(ProductTypesModel.self, from: data))
    }

    func testAlertsModel() {
        let data = alertsModelData.data(using: .utf8)!
        XCTAssertNoThrow(try decoder.decode(AlertsModel.self, from: data))
    }

    func testDecodeProblemModel() {
        let data = problemModelData.data(using: .utf8)!
        XCTAssertNoThrow(try decoder.decode(ProblemModel.self, from: data))
    }
}
