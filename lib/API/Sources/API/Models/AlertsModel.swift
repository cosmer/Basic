//
//  Created by Charlie Osmer on 9/3/19.
//  Copyright © 2019 Charlie Osmer. All rights reserved.
//

import Foundation

public struct AlertsModel: Decodable {
    public struct FeatureProperties: Decodable {
        public var id: String
        public var areaDesc: String
        public var sent: Date
        public var effective: Date
        public var onset: Date
        public var expires: Date
        public var ends: Date?
        public var messageType: String
        public var severity: String
        public var certainty: String
        public var urgency: String
        public var event: String
        public var senderName: String
        public var headline: String
        public var description: String
        public var instruction: String?
    }

    public struct Feature: Decodable {
        public var id: URL
        public var geometry: GeometryModel?
        public var properties: FeatureProperties
    }

    public var features: [Feature]
}
