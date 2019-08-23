//
//  Created by Charlie Osmer on 8/4/19.
//  Copyright © 2019 Charlie Osmer. All rights reserved.
//

import XCTest
@testable import API

final class TopLevelModelTests: XCTestCase {
    func testDecodePointsModel() {
        let decoder = JSONDecoder.makeEndpointDecoder()
        let data = pointsModelData.data(using: .utf8)!
        XCTAssertNoThrow(try decoder.decode(PointsModel.self, from: data))
    }

    func testDecodeForecastModel() {
        let decoder = JSONDecoder.makeEndpointDecoder()
        let data = forecastModelData.data(using: .utf8)!
        XCTAssertNoThrow(try decoder.decode(ForecastModel.self, from: data))
    }

    func testDecodeObservationModel() {
        let decoder = JSONDecoder.makeEndpointDecoder()
        let data = observationModelData.data(using: .utf8)!
        XCTAssertNoThrow(try decoder.decode(ObservationModel.self, from: data))
    }

    func testDecodeObservationsModel() {
        let decoder = JSONDecoder.makeEndpointDecoder()
        let data = observationsModelData.data(using: .utf8)!
        XCTAssertNoThrow(try decoder.decode(ObservationsModel.self, from: data))
    }

    func testDecodeStationsModel() {
        let decoder = JSONDecoder.makeEndpointDecoder()
        let data = stationsModelData.data(using: .utf8)!
        XCTAssertNoThrow(try decoder.decode(StationsModel.self, from: data))
    }

    func testDecodeProblemModel() {
        let decoder = JSONDecoder.makeEndpointDecoder()
        let data = problemModelData.data(using: .utf8)!
        XCTAssertNoThrow(try decoder.decode(ProblemModel.self, from: data))
    }
}
