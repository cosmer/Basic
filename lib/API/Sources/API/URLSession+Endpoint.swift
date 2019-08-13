//
//  Created by Charlie Osmer on 8/5/19.
//  Copyright © 2019 Charlie Osmer. All rights reserved.
//

import Foundation
import Combine

public extension URLSession {
    func dataTaskPublisher<Tag>(for endpoint: Endpoint<Tag>) -> AnyPublisher<Tag.Model, Error> where Tag.Model: Decodable {
        typealias Model = Tag.Model

        let url = endpoint.buildURL()

        var request = URLRequest(url: url)
        request.setValue("application/geo+json", forHTTPHeaderField: "Accept")

        let decoder = JSONDecoder.makeEndpointDecoder()
        return dataTaskPublisher(for: request)
            .tryMap { (data, response) -> Data in
                if let response = response as? HTTPURLResponse {
                    if response.statusCode < 200 || response.statusCode >= 300 {
                        let problem = try? decoder.decode(ProblemModel.self, from: data)
                        throw HTTPError(statusCode: response.statusCode, url: url, problem: problem)
                    }
                }
                return data
            }
            .tryMap { (data) -> Model in
                do {
                    return try decoder.decode(Model.self, from: data)
                } catch let error as DecodingError {
                    throw WebServiceDecodingError(error: error, url: url, modelType: "\(Model.self)")
                } catch {
                    throw error
                }
            }
            .eraseToAnyPublisher()
    }
}
