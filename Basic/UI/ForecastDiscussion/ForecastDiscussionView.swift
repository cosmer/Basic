//
//  Created by Charlie Osmer on 8/27/19.
//  Copyright © 2019 Charlie Osmer. All rights reserved.
//

import SwiftUI

struct ForecastDiscussionView: View {
    @ObservedObject var model: ForecastDiscussionViewModel

    var body: some View {
        Group {
            if model.isLoading {
                LoadingView()
            } else {
                model.text.buildView(
                    success: {
                        ScrollableText(text: $0)
                            .padding(.horizontal)
                    },
                    failure: {
                        ErrorView(error: $0)
                    }
                )
            }
        }
        .navigationBarTitle("Forecast Discussion", displayMode: .inline)
        .onAppear(perform: model.load)
    }
}

struct ForecastDiscussionView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            ForecastDiscussionView(model: model)
        }
    }

    static let model = ForecastDiscussionViewModel(
        model: .init(officeId: .grayME),
        text: .success(text)
    )

    static let text =
        """
        \n000\nFXUS61 KGYX 251000\nAFDGYX\n\nArea Forecast Discussion\nNational Weather Service Gray ME\n600 AM EDT Sun Aug 25 2019\n\n.SYNOPSIS...\nHigh pressure will remain across region through the first half\nof the week. This will provide dry weather and seasonably cool \ntemperatures. A series of frontal systems will cross the region\nbeginning mid week providing several chances for showers.\n\n&&\n\n.NEAR TERM /UNTIL 6 PM THIS EVENING/...\n\n600 AM...Minor ESTF update to reflect the current mesonet in\nnear term grids. \n\nPrev Disc...\nAt 06z...a sprawling 1029 millibar high covered the Great Lakes\nand northeast CONUS. GOES water vapor imagery showed a developing\nupper low vicinity of the mid Atlantic coast. GOES infrared\nshowed some patchy low cloud mainly over southern and western\nsections of the forecast area. Where skies are currently clear\nthe light winds should allow areas of valley stratus and fog to\ndevelop through dawn. For today...the high remains anchored to \nour north with the onshore flow to continue. Expect a few fair \nweather clouds to develop across the interior...especially over \nsouthern sections that will be closest to the developing upper \nlow. Highs today will be in the lower and mid 70s...with a few \nupper 60s along the immediate coast.\n\n&&\n\n.SHORT TERM /6 PM THIS EVENING THROUGH 6 PM MONDAY/...\nFor tonight and Monday...the upper low meanders north and east \nacross the Gulf of Maine. Meanwhile...the surface high is\nanchored to our north with the onshore flow to continue. Expect\nmainly clear skies and cool temperatures tonight with valley\nstratus and fog likely towards dawn once again. Lows will be\nmainly in the 40s...with a few 50 degree readings in urban\ncenters. Mostly sunny and cool Monday with high temperatures\nsimilar to today.\n\n&&\n\n.LONG TERM /MONDAY NIGHT THROUGH SATURDAY/...\nMainly fair weather is expected Tuesday into Wednesday with high\npressure in place. However, increasing low level moisture and\ndeveloping onshore flow may allow for some stratus to invade the\ncoastline. Otherwise, a short wave trough approaching from the\nwest on Wednesday will aid in pushing a SFC cold front eastward\nand increasing our chances for showers later Wednesday and\nThursday. There is some potential that moisture from well- \noffshore tropical low pressure could get entrained into the\nfrontal boundary across ME and NH Wednesday night and Thursday\nif the approaching short wave trough is amplified enough. This\ncould lead to a period of heavy rain. However at this time it's\ntoo early too tell how the two systems will interact, if at all.\nThereafter, Friday and Saturday, generally benign weather is\nexpected aside from a few showers with another approaching\nfront.\n\n&&\n\n.AVIATION /10Z SUNDAY THROUGH THURSDAY/...\nShort Term /Through Monday/...VFR. Lcl IFR btw 08 and 12z vcnty\nof KLEB and KHIE in stratus and fog this morning and Monday\nmorning. \n\nLong Term...Mainly VFR Monday night through Wednesday. However,\nincreasing low level moisture and winds potentially turning\nonshore may mean increased chances for low stratus and fog along\nthe coastal plain Tuesday night and again Wednesday night. In\naddition, showers and possible thunder may lower conditions\nWednesday night into Thursday.\n\n&&\n\n.MARINE...\nShort Term /Through Monday/...Onshore flow continues through\nMonday with gradually building seas. Winds should stay below 25\nkt but seas may reach 5 ft by Monday for the open waters south\nof Casco Bay as the NE flow continues. \n\nLong Term...A few 5 footers may be present on the ocean waters\nMonday night before subsiding Tuesday. Offshore tropical low\npressure could bring higher swells once again Thu and Fri.\n\n&&\n\n.GYX WATCHES/WARNINGS/ADVISORIES...\nME...None.\nNH...None.\nMARINE...None.\n\n&&\n\n$$\n\nES\n
        """
}
