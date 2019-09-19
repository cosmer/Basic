//
//  Created by Charlie Osmer on 9/18/19.
//  Copyright © 2019 Charlie Osmer. All rights reserved.
//

import Foundation

enum AnyEncodable {
    case bool(Bool)
    case string(String)
    case double(Double)
    case float(Float)
    case int(Int)
    case int8(Int8)
    case int16(Int16)
    case int32(Int32)
    case int64(Int64)
    case uint(UInt)
    case uint8(UInt8)
    case uint16(UInt16)
    case uint32(UInt32)
    case uint64(UInt64)
    case encodable(Encodable)

    init?(value: Any) {
        switch value {
        case let value as Bool:
            self = .bool(value)
        case let value as String:
            self = .string(value)
        case let value as Double:
            self = .double(value)
        case let value as Float:
            self = .float(value)
        case let value as Int:
            self = .int(value)
        case let value as Int8:
            self = .int8(value)
        case let value as Int16:
            self = .int16(value)
        case let value as Int32:
            self = .int32(value)
        case let value as Int64:
            self = .int64(value)
        case let value as UInt:
            self = .uint(value)
        case let value as UInt8:
            self = .uint8(value)
        case let value as UInt16:
            self = .uint16(value)
        case let value as UInt32:
            self = .uint32(value)
        case let value as UInt64:
            self = .uint64(value)
        case let value as Encodable:
            self = .encodable(value)
        default:
            return nil
        }
    }
}

extension AnyEncodable: Encodable {
    func encode(to encoder: Encoder) throws {
        var container = encoder.singleValueContainer()
        switch self {
        case let .bool(value):
            try container.encode(value)
        case let .string(value):
            try container.encode(value)
        case let .double(value):
            try container.encode(value)
        case let .float(value):
            try container.encode(value)
        case let .int(value):
            try container.encode(value)
        case let .int8(value):
            try container.encode(value)
        case let .int16(value):
            try container.encode(value)
        case let .int32(value):
            try container.encode(value)
        case let .int64(value):
            try container.encode(value)
        case let .uint(value):
            try container.encode(value)
        case let .uint8(value):
            try container.encode(value)
        case let .uint16(value):
            try container.encode(value)
        case let .uint32(value):
            try container.encode(value)
        case let .uint64(value):
            try container.encode(value)
        case let .encodable(value):
            try value.encode(to: &container)
        }
    }
}

private extension Encodable {
    func encode(to container: inout SingleValueEncodingContainer) throws {
        try container.encode(self)
    }
}
