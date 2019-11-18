//
//  Created by Charlie Osmer on 9/5/19.
//  Copyright © 2019 Charlie Osmer. All rights reserved.
//

import Foundation
import API

struct WeatherAlertViewModel: Identifiable {
    var id: Tagged<String, Self>

    var title: String
    var headline: String
    @PrettyPrintParagraphs var description: String
    var area: String
    @PrettyPrintParagraphs var instruction: String

    var sent: Date
    var onset: Date
    var ends: Date?

    var severity: String
    var certainty: String
    var urgency: String
}

extension WeatherAlertViewModel {
    init(feature: AlertsModel.Feature) {
        id = Tagged(rawValue: feature.properties.id)

        title = feature.properties.event
        headline = feature.properties.headline
        description = feature.properties.description
        area = feature.properties.areaDesc
        instruction = feature.properties.instruction ?? ""

        sent = feature.properties.sent
        onset = feature.properties.onset
        ends = feature.properties.ends

        severity = feature.properties.severity
        certainty = feature.properties.certainty
        urgency = feature.properties.urgency
    }
}

extension WeatherAlertViewModel {
    static let previews: [WeatherAlertViewModel] = [
        .init(
            id: .init(rawValue: "1"),
            title: "Small Craft Advisory",
            headline: "Small Craft Advisory issued September 3 at 2:46AM PDT until September 4 at 9:00AM PDT by NWS San Francisco CA",
            description: "* WINDS...Northwest 15 to 20 kt with gusts up to 25 kt.\n\n* SEAS...7 to 10 feet.",
            area: "Waters from Point Pinos to Point Piedras Blancas 10-60 NM",
            instruction: "A Small Craft Advisory means that wind speeds of 21 to 33 knots\nand/or steep waves are expected to produce hazardous wave\nconditions to small craft. Inexperienced mariners...especially\nthose operating smaller vessels should avoid navigating in these\nconditions.",
            sent: Date(),
            onset: Date(),
            ends: Date().addingTimeInterval(10000),
            severity: "Minor",
            certainty: "Likely",
            urgency: "Expected"
        ),

        .init(
            id: .init(rawValue: "2"),
            title: "Rip Current Statement",
            headline: "Rip Current Statement issued September 3 at 5:42AM EDT until September 4 at 8:00PM EDT by NWS Tampa Bay Ruskin FL",
            description: "The National Weather Service in Tampa Bay Ruskin has issued a\nHigh Rip Current Risk, which is in effect from noon EDT today\nthrough Wednesday evening.\n\n* RIP CURRENT TIMING...Increasing onshore winds will create rip\ncurrents this afternoon and continuing through Wednesday\nevening.\n\n* RIP CURRENT IMPACTS...life threatening Rip Currents are\npossible. Always swim near a lifeguard, and never swim alone!",
            area: "Coastal Sarasota; Coastal Manatee; Coastal Hillsborough; Coastal Charlotte; Coastal Lee; Pinellas",
            instruction: "Rip currents are powerful channels of water flowing quickly away\nfrom shore...which occur most often at low spots or breaks in the\nsandbar and in the vicinity of structures such as groins...\njetties and piers. For maximum safety...swim near a lifeguard.\nPay attention to flags and signs.\n\nIf you become caught in a rip current...yell for help. Remain\ncalm...do not exhaust yourself and stay afloat while waiting for\nhelp. If you have to swim out of a rip current...swim parallel to\nshore and back toward the beach when possible. Do not attempt to\nswim directly against a rip current as you will tire quickly.",
            sent: Date(),
            onset: Date(),
            ends: nil,
            severity: "Moderate",
            certainty: "Likely",
            urgency: "Expected"
        ),
    ]
}
