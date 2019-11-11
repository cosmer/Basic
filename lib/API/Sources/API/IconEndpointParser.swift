//
//  Created by Charles Osmer on 11/6/19.
//  Copyright © 2019 Charlie Osmer. All rights reserved.
//

import Foundation

public enum IconEndpointParser {
    public static func extractPreciptationChance(from endpoint: Endpoints.Icon) -> (Endpoints.Icon, IconPrecipitationChance?)? {
        guard let urlComponents = URLComponents(url: endpoint.buildURL(), resolvingAgainstBaseURL: true) else {
            return nil
        }

        let pathComponents = urlComponents.path.split(separator: "/")
        guard (4...5).contains(pathComponents.count) else {
            return nil
        }

        guard pathComponents[1] == "land" else {
            return nil
        }

        guard pathComponents[2] == "day" || pathComponents[2] == "night" else {
            return nil
        }

        func extractChance(from component: Substring) -> (condition: Substring, chance: Int?)? {
            let components = component.split(separator: ",")
            switch components.count {
            case 1:
                return (components[0], nil)
            case 2:
                guard let chance = Int(components[1]) else {
                    return nil
                }
                return (components[0], chance)
            default:
                return nil
            }
        }

        guard let v1 = extractChance(from: pathComponents[3]) else {
            return nil
        }

        if pathComponents.count == 5 {
            guard let v2 = extractChance(from: pathComponents[4]) else {
                return nil
            }

            var urlComponents = urlComponents
            urlComponents.path = "/" + (Array(pathComponents[0...2]) + [v1.condition, v2.condition]).joined(separator: "/")

            guard let url = urlComponents.url else {
                return nil
            }

            let chance: IconPrecipitationChance?
            if v1.chance == nil && v2.chance == nil {
                chance = nil
            } else if v1.condition == v2.condition {
                chance = .transition(v1.chance, v2.chance)
            } else {
                chance = .split(v1.chance, v2.chance)
            }

            return (Endpoint(url: url), chance)
        } else {
            var urlComponents = urlComponents
            urlComponents.path = "/" + (Array(pathComponents[0...2]) + [v1.condition]).joined(separator: "/")

            guard let url = urlComponents.url else {
                return nil
            }

            let chance = v1.chance.map(IconPrecipitationChance.full)
            return (Endpoint(url: url), chance)
        }
    }
}
