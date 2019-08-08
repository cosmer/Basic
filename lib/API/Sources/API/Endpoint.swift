//
//  Created by Charlie Osmer on 8/4/19.
//  Copyright © 2019 Charlie Osmer. All rights reserved.
//

import Foundation

private let baseURL = URL(string: "https://api.weather.gov")!

public struct Endpoint<Tag> where Tag: EndpointTag {
    typealias Tag = Tag

    var url: URL
}

public protocol EndpointTag {
    associatedtype Model where Model: Decodable
}

extension Endpoint: Decodable {
    public init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        let url = try container.decode(URL.self)
        self.init(url: url)
    }
}

extension Endpoint {
    init(pathComponents: [String]) {
        let url = pathComponents.reduce(into: baseURL) { $0.appendPathComponent($1) }
        self.init(url: url)
    }
}
