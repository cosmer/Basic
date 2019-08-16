//
//  Created by Charlie Osmer on 8/4/19.
//  Copyright © 2019 Charlie Osmer. All rights reserved.
//

import Foundation

public struct GeometryModel {
    public struct Position {
        public var latitude: Double
        public var longitude: Double
    }

    public struct LineString {
        public var positions: [Position]
    }

    public struct Polygon {
        public struct Ring {
            public var positions: [Position]
        }

        public var rings: [Ring]
    }

    public enum Object {
        case point(Position)
        case multiPoint([Position])
        case lineString(LineString)
        case multiLineString([LineString])
        case polygon(Polygon)
        case multiPolygon([Polygon])
        case collection([Object])
    }

    public var object: Object
}

extension GeometryModel: Decodable {
    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)

        switch try container.decode(String.self, forKey: .type) {
        case "Point":
            object = try Self.decodePoint(from: container)
        case "MultiPoint":
            object = try Self.decodeMultiPoint(from: container)
        case "LineString":
            object = try Self.decodeLineString(from: container)
        case "MultiLineString":
            object = try Self.decodeMultiLineString(from: container)
        case "Polygon":
            object = try Self.decodePolygon(from: container)
        case "MultiPolygon":
            object = try Self.decodeMultiPolygon(from: container)
        case "GeometryCollection":
            object = try Self.decodeCollection(from: container)
        case let type:
            throw InvalidTypeError(value: type)
        }
    }

    enum CodingKeys: CodingKey {
        case type
        case coordinates
        case geometries
    }

    public struct InvalidTypeError: Error {
        var value: String
    }

    public struct InvalidCoordinatePair: Error {
        var componentCount: Int
    }

    private typealias CoordinatePair = [Double]

    private static func decodePosition(from coordinates: CoordinatePair) throws -> Position {
        guard coordinates.count == 2 else {
            throw InvalidCoordinatePair(componentCount: coordinates.count)
        }
        return Position(latitude: coordinates[1], longitude: coordinates[0])
    }

    private static func decodePoint(from container: KeyedDecodingContainer<CodingKeys>) throws -> Object {
        let coordinates = try container.decode(CoordinatePair.self, forKey: .coordinates)
        let position = try decodePosition(from: coordinates)
        return .point(position)
    }

    private static func decodeMultiPoint(from container: KeyedDecodingContainer<CodingKeys>) throws -> Object {
        let coordinates = try container.decode([CoordinatePair].self, forKey: .coordinates)
        let positions = try coordinates.map { try decodePosition(from: $0) }
        return .multiPoint(positions)
    }

    private static func decodeLineString(from container: KeyedDecodingContainer<CodingKeys>) throws -> Object {
        let coordinates = try container.decode([CoordinatePair].self, forKey: .coordinates)
        let positions = try coordinates.map { try decodePosition(from: $0) }
        return .lineString(LineString(positions: positions))
    }

    private static func decodeMultiLineString(from container: KeyedDecodingContainer<CodingKeys>) throws -> Object {
        let coordinates = try container.decode([[CoordinatePair]].self, forKey: .coordinates)
        let lineStrings = try coordinates.map { (coordinates) -> LineString in
            let positions = try coordinates.map { try decodePosition(from: $0) }
            return LineString(positions: positions)
        }
        return .multiLineString(lineStrings)
    }

    private static func decodePolygon(from container: KeyedDecodingContainer<CodingKeys>) throws -> Object {
        let coordinates = try container.decode([[CoordinatePair]].self, forKey: .coordinates)
        let rings = try coordinates.map { (coordinates) -> Polygon.Ring in
            let positions = try coordinates.map { try decodePosition(from: $0) }
            return Polygon.Ring(positions: positions)
        }
        return .polygon(Polygon(rings: rings))
    }

    private static func decodeMultiPolygon(from container: KeyedDecodingContainer<CodingKeys>) throws -> Object {
        let coordinates = try container.decode([[[CoordinatePair]]].self, forKey: .coordinates)
        let polygons = try coordinates.map { (coordinates) -> Polygon in
            let rings = try coordinates.map { (coordinates) -> Polygon.Ring in
                let positions = try coordinates.map { try decodePosition(from: $0) }
                return Polygon.Ring(positions: positions)
            }
            return Polygon(rings: rings)
        }
        return .multiPolygon(polygons)
    }

    private static func decodeCollection(from container: KeyedDecodingContainer<CodingKeys>) throws -> Object {
        let geometries = try container.decode([GeometryModel].self, forKey: .geometries)
        let objects = geometries.map { $0.object }
        return .collection(objects)
    }
}

extension GeometryModel.InvalidTypeError: LocalizedError, CustomNSError {
    public var errorDescription: String? {
        "Unknown geometry type '\(value)'."
    }

    public var errorUserInfo: [String: Any] {
        ["value": value]
    }
}

extension GeometryModel.InvalidCoordinatePair: LocalizedError, CustomNSError {
    public var errorDescription: String? {
        "Invalid component count '\(componentCount)'."
    }

    public var errorUserInfo: [String: Any] {
        ["component count": componentCount]
    }
}
