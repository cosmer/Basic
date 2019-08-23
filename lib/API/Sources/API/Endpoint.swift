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
    private var queryItems: [QueryItem]?

    init(url: URL, queryItems: [QueryItem]? = nil) {
        self.url = url
        self.queryItems = queryItems
    }

    public func buildURL() -> URL {
        guard let queryItems = queryItems else {
            return url
        }

        var components = URLComponents(url: url, resolvingAgainstBaseURL: true)!
        if !queryItems.isEmpty {
            components.queryItems = queryItems
                .map { URLQueryItem(name: $0.name, value: $0.value) }
        } else {
            components.queryItems = nil
        }

        return components.url!
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

    func appending<ResultTag>(pathComponent: String) -> Endpoint<ResultTag> {
        let url = self.url.appendingPathComponent(pathComponent)
        return Endpoint<ResultTag>(url: url, queryItems: [])
    }

    func appending<ResultTag>(pathComponents: [String]) -> Endpoint<ResultTag> {
        let url = pathComponents.reduce(into: self.url) { $0.appendPathComponent($1) }
        return Endpoint<ResultTag>(url: url, queryItems: [])
    }

    func replacingQueryItems(with queryItems: [QueryItem]) -> Self {
        var endpoint = self
        endpoint.queryItems = queryItems
        return endpoint
    }
}
