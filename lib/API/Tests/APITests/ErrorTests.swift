//
//  Created by Charlie Osmer on 8/5/19.
//  Copyright © 2019 Charlie Osmer. All rights reserved.
//

import XCTest
@testable import API

final class ErrorTests: XCTestCase {
    func testHTTPErrorWithProblem() {
        let decoder = JSONDecoder.makeEndpointDecoder()
        let data = problemModelData.data(using: .utf8)!
        guard let problem = try? decoder.decode(ProblemModel.self, from: data) else {
            XCTFail("Failed to decode problem model")
            return
        }

        let url = URL(string: "http://ooops.com")!
        let statusCode = 123

        let error = HTTPError(
            statusCode: statusCode,
            url: url,
            problem: problem
        )

        XCTAssertEqual(error.statusCode, statusCode)

        let userInfo = error.errorUserInfo
        XCTAssertEqual(userInfo.count, 8)
        XCTAssertEqual(userInfo["url"] as? URL, url)
        XCTAssertEqual(userInfo["status"] as? Int, statusCode)
        XCTAssertEqual(userInfo["problem_title"] as? String, problem.title)
        XCTAssertEqual(userInfo["problem_type"] as? URL, problem.type)
        XCTAssertEqual(userInfo["problem_status"] as? Int, problem.status)
        XCTAssertEqual(userInfo["problem_detail"] as? String, problem.detail)
        XCTAssertEqual(userInfo["problem_instance"] as? URL, problem.instance)
        XCTAssertEqual(userInfo["problem_correlationId"] as? UUID, problem.correlationId)
    }
}
