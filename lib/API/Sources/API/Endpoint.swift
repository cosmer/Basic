//
//  Created by Charlie Osmer on 8/4/19.
//  Copyright © 2019 Charlie Osmer. All rights reserved.
//

import Foundation

private let baseURL = URL(string: "https://api.weather.gov")!

public struct Endpoint<Tag> where Tag: EndpointTag {
    typealias Tag = Tag
    typealias QueryItem = (name: String, value: String)

    private var url: URL
    var queryItems: [QueryItem]

    public func buildURL() -> URL {
        if queryItems.isEmpty {
            return url
        }

        var components = URLComponents(url: url, resolvingAgainstBaseURL: true)!
        components.queryItems = queryItems
            .map { URLQueryItem(name: $0.name, value: $0.value) }

        return components.url!
    }

    init(url: URL, queryItems: [QueryItem] = []) {
        self.url = url
        self.queryItems = queryItems
    }
}

public protocol EndpointTag {
    associatedtype Model
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
