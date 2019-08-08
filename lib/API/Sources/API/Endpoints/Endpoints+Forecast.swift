//
//  Created by Charlie Osmer on 8/5/19.
//  Copyright © 2019 Charlie Osmer. All rights reserved.
//

import Foundation

extension Endpoints {
    public typealias Forecast = Endpoint<EndpointTags.Forecast>
}

extension EndpointTags {
    public enum Forecast: EndpointTag {
        public typealias Model = ForecastModel
    }
}
