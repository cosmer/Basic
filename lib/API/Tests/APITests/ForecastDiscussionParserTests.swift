//
//  Created by Charles Osmer on 11/26/19.
//  Copyright © 2019 Charlie Osmer. All rights reserved.
//

import XCTest
import API

final class ForecastDiscussionParserTests: XCTestCase {
    func testEmpty() {
        let fragments = ForecastDiscussionParser(discussion: "").fragments()
        XCTAssertEqual(fragments, [:])
    }

    func testFoo() {
        let fragments = ForecastDiscussionParser(discussion: "foo").fragments()
        XCTAssertEqual(fragments, [.body: ["foo"]])
    }

    func testEx1() {
        let fragments = ForecastDiscussionParser(discussion: ForecastDiscussionText.ex1).fragments()

        XCTAssertEqual(fragments[.preamble] ?? [], [
            "000\nFXUS61 KGYX 261140\nAFDGYX\n\nArea Forecast Discussion\nNational Weather Service Gray ME\n640 AM EST Tue Nov 26 2019\n\n"
        ])

        XCTAssertEqual(fragments[.sectionHeader] ?? [], [
            "SYNOPSIS",
            "NEAR TERM /UNTIL 6 PM THIS EVENING/",
            "SHORT TERM /6 PM THIS EVENING THROUGH 6 PM WEDNESDAY/",
            "LONG TERM /WEDNESDAY NIGHT THROUGH MONDAY/",
            "AVIATION /12Z TUESDAY THROUGH SATURDAY/",
            "MARINE",
            "TIDES/COASTAL FLOODING",
            "GYX WATCHES/WARNINGS/ADVISORIES",
        ])

        XCTAssertEqual(fragments[.paragraphTitle] ?? [], [

        ])

        XCTAssertEqual(fragments[.sectionSeparator] ?? [], [
            "\n\n&&\n\n",
            "\n\n&&\n\n",
            "\n\n&&\n\n",
            "\n\n&&\n\n",
            "\n\n&&\n\n",
            "\n\n&&\n\n",
            "\n\n&&\n\n",
            "\n\n&&\n\n",
        ])

        XCTAssertEqual(fragments[.body] ?? [], [
            "A weak ridge of high pressure slides offshore by later today. Low pressure passing to our north will drag a weak moisture starved cold front across the area late today. Another weak ridge of high pressure follows for tonight and early Wednesday. Low pressure arrives for Wednesday and Wednesday night, producing rain for much of the area, but snow and mixed precipitation for the foothills and the mountains. Colder and unsettled weather lingers behind this system for Thursday and Friday.",
            "640 AM...Minor ESTF update to reflect the current mesonet in near term grids.\n\nPrev Disc... At 07z...a weak north-south ridge of high pressure was draped across the area. A 996 millibar low was centered over the northern Great Lakes with a trailing cold front through the lakes and upper midwest. GOES infrared imagery showed broken areas of warm air advection clouds crossing the region at moment. Along with the clouds some stratus and fog had developed over some of the interior valleys. For today...the warm air advection clouds will lift to our north by later this morning. Sunshine and a southwest flow will allow temperatures to warm a good five to ten degrees above average for the date. Highs will range from the 40s across the mountains to lower and mid 50s elsewhere. Late today the surface low will pass across Quebec with the trailing cold front dropping southeast into the area with a few more clouds. Any spotty rain or snow shower activity with the boundary should be limited to mountain sections.",
            "The weak front will settle to our south tonight with mainly clear skies allowing some patchy valley stratus and fog to develop once again. Lows will range from the mid 20s to lower 30s. On Wednesday...a quiet start to the day under a weak ridge of high pressure. However...warm air advection clouds arrive by afternoon ahead of the next storm system approaching from the Great Lakes. Onshore flow may also introduce some low clouds to southern and coastal sections by late morning. Light overrunning precipitation develops from southwest to northeast during the mid to late afternoon hours. The forecast column should initially be warm enough for rain. The exception will be near the international border where a mix of snow, sleet and rain is likely. Mountain sections will likely see a coating to as much as an inch of new snow and sleet by early evening. Highs will be in the 40s...except in the upper 30s near the international border.",
            "*** Impactful Winter Storm for Thanksgiving Morning Travel ***\n\nUpper level pattern is looking more active for the last week of November and the beginning of December. A powerful storm system will be in the process of crossing northern New England Wednesday night into Thanksgiving Day. Secondary cyclogenesis should occur over the Gulf of Maine Wednesday night, moving quickly east of the area. Much of the QPF will be over by daybreak Thanksgiving, but this storm has a large footprint as far as wrap-around moisture and wind fields are concerned, therefore there will be lingering effects throughout the day. On the whole looking for perhaps 4-6\" of fresh snow for the International border and the higher terrain, with much smaller amounts as one moves down elevation and p-type mixes with sleet, freezing rain, and rain in the foothills. The coastal plain still looks to get mainly rain from this event, with storm totals around a quarter to a half an inch. As for the freezing rain, this would be the perhaps most impactful to travel...however only negligible, patchy amounts are expected under 4,000 ft.\n\nAs mentioned the storm will wrap up by the morning hours for most  spots as drying from the SW arrives. Precipitation near the low center/coast will see mostly rain as the system exits east into the Atlantic south of Nova Scotia. Upslope portions of the mountains will continue to see snowfall into the afternoon hours. We\'ll see clouds decreasing from the southwest during the day, with temperatures reaching the lower 30s along the Canadian border to the low to mid 40s south. The main thing to note will be the gusty winds expected as the storm passes. These currently look to be around 25-30 mph, but would not be surprised if things change and a wind advisory was needed.\n\nThursday night will be cold with strong CAA and winds remaining gusty. Temperatures will be in the upper teens north to the mid 20s south. Friday will also be windy with the tight pressure gradient remaining. This is due to the Thanksgiving system becoming blocked downstream and deepened to a ~970mb storm south of Newfoundland. This will continue to pull frigid Arctic air into northern New England, with highs in the 20s and 30s Friday through early next week. Also expecting some extremely chilly nights, with overnight lows around 7 to 15 across the north, and in the lower 20s near the coast.\n\nThe next system to watch will move out of the Great Plains and begin affecting New England Sunday night. Currently the storm is passing south of us, which would give us snow across the entire area, especially with the cold air already in place.",
            "Short Term /through Wednesday/...Sct MVFR and IFR in cigs and fog through 12z this morning and again btw 06z and 12z Wed otw VFR expected. Widespread MVFR with areas of IFR developing aft 18z Wed in RA and fog...with a mix of SN PL and RA for mtn sections.\n\nLong Term...Expect widespread IFR conditions Thursday morning as a warm front lift through the area. A mix of snow and sleet is expected for the mountains with rain along the coast. Snow and MVFR conditions will continue along the Canadian border through Thursday as upslope snow showers develop. Conditions will clear with VFR returning late Thursday as high pressure builds in for the weekend.",
            "Short Term /through Wednesday/...SW flow will increase ahead of a weak cold front late today...but we should stay below SCA\'s even on the open waters. Onshore winds develop and increase Wednesday afternoon in advance of the next storm system. The open waters could approach SCAs towards evening.\n\nLong Term...A gale watch may be needed Thursday into Friday as a strong pressure gradient remains over the waters...mainly for the outer waters and Penobscot Bay.",
            "High astronomical tides will continue today. However...there should be little in the way of surge for the late morning high tide today as winds and seas will remain rather light.",
            "ME...None. NH...None. MARINE...None.",
        ])

        XCTAssertEqual(fragments[.footer] ?? [], [
            "$$\n\nES",
        ])
    }

    func testEx2() {
        let fragments = ForecastDiscussionParser(discussion: ForecastDiscussionText.ex2).fragments()

        XCTAssertEqual(fragments[.preamble] ?? [], [
            "000\nFXUS66 KMTR 261203\nAFDMTR\n\nArea Forecast Discussion\nNational Weather Service San Francisco Bay Area\n403 AM PST Tue Nov 26 2019\n\n"
        ])

        XCTAssertEqual(fragments[.sectionHeader] ?? [], [
            "SYNOPSIS",
            "DISCUSSION",
            "AVIATION",
            "MARINE",
            "MTR WATCHES/WARNINGS/ADVISORIES",
        ])

        XCTAssertEqual(fragments[.paragraphTitle] ?? [], [

        ])

        XCTAssertEqual(fragments[.sectionSeparator] ?? [], [
            "\n\n&&\n\n",
            "\n\n&&\n\n",
            "\n\n&&\n\n",
            "\n\n&&\n\n",
            "\n\n&&\n\n",
        ])

        XCTAssertEqual(fragments[.body] ?? [], [
            "A strong cold front will bring widespread rain to the entire region Tuesday afternoon and evening. Strong and gusty south to southwest winds will precede the front late Tuesday. Winds will then switch to the west to northwest and remain gusty through Tuesday night. Showers, lowering snow levels, and possible thunderstorms are forecast for Wednesday. Showers will taper off from north to south on Thanksgiving. Below normal temperatures are expected for the remainder of the week and nighttime freezing temperatures are possible later in the week, especially Thursday night. Another system may bring more rain to the region next weekend.",
            "As of 3:31 AM PST Tuesday...Winds have mostly subsided throughout much of the region over the past 6-10 hours, especially in the valleys and near sea level. There remain some isolated gusts in the 20-30 mph range in the higher elevations, allowing for near-critical fire weather conditions to continue at this time. Expect these north to northeast winds in the hills to continue diminishing through sunrise.\n\nFire weather concerns will quickly disappear over the next 24 hours an midlatitude cyclone will undergo bombogenesis (24 mb drop in 24 hours) as it approaches the California-Oregon coast. This storm will bring rain, snow, wind, cold temperatures, and the threat of thunderstorms to the region over the next several days.\n\nFirst, the wind concerns. The latest 06Z 3 km NAM shows pressure dropping from 1000 mb at 12Z today down to 970 mb at 00Z Tuesday. This rapid pressure drop will allow for surface winds to increase throughout much of coastal Oregon as well coastal northern and central California through the next 24 hours. Locally, the San Francisco Bay Area and central California coast will see south to southwest winds increase during the afternoon hours ahead of the cold front that will subsequently sweep through the area during the evening hours. These strong, gusty south-southwesterly winds will be sustained in the 20 to 30 mph range with gusts of 45 to 50 mph, and will primarily impact coastal locations as well as the hills and mountains surrounding the Bay Area. And behind the frontal passage in the evening, winds will become west to northwest around 15 to 25 mph with gusts to 45 mph, and remain gusty through the overnight hours. As a result, a Wind Advisory is in effect from 4 PM PST Tuesday to 4 AM PST Wednesday for the Pacific shoreline from Sonoma through Monterey County, as well as for the higher elevations including the North Bay Mountains, Santa Cruz Mountains, East Bay Hills and Diablo Range, the Santa Lucias, and Interior San Benito and Monterey County.\n\nPrecipitation chances will initially increase in the North Bay around mid-day Tuesday, extending south through the afternoon hours to the core Bay Area, and to the Monterey area in the evening. Rainfall intensity will start off light to moderate, but then become briefly heavy as the cold front comes in from the northwest sometime around 4-7 pm in the North Bay (per the 3 km NAM) and 6-9 pm in San Francisco, Oakland, and San Jose. While the heaviest rainfall intensity will only occur during a brief period of time, it is very well possible rates may exceed 0.5 inches per hour in northern Sonoma County over the Kincade Fire burn area. Consequently, there are concerns about flash flooding and debris flows on this very recent burn scar. Will be issuing a Flash Flood Watch for the burn area and locations immediately downstream. It\'s quite remarkable how fast we will swing from elevated fire weather conditions to flash flood/debris flow concerns in less than a 24 hour period.\n\nAs the upper level low drops southward, temperatures at 500 mb will plummet from -17 deg C from now to -32 deg C by mid-day Wednesday. Most unstable CAPE values will rise to the 200-400 J/kg range throughout most of the Bay Area and central California coast. Thus, there is a very good possibility that there will be numerous showers and even scattered thunderstorms from late Tuesday night through Wednesday, and possibly into Thanksgiving Day.\n\nThe cold air advection will also allow for snow levels to drop throughout the state. As the scattered showers continue on Wednesday, the Santa Lucias and Diablo Range will likely see the precipitation fall in the form of snow above 3,000-3,500 ft. Snow levels will continue dropping overnight Wednesday and into Thanksgiving Day to as low as 2,000 ft in some places. Big question at that point if the showers will continue. At this point, at least several inches of accumulating snow seems very likely above 3,000 ft in the Santa Lucias and possibly in the Diablo Range. Can\'t rule out some light snowfall in the peaks of the Santa Cruz Mountains as well. Will be launching a Winter Weather Advisory for the Santa Lucia Mountains and Los Padres National Forest above 2,500 ft as a result of the forecast accumulating snowfall. Hikers, campers, and outdoor enthusiasts with plans in the mountains above Big Sur on Wednesday and Thursday are urged to closely monitor the weather conditions as winter-like conditions are likely climbing with elevation. Thanksgiving travelers throughout the Western United States should closely monitor the weather as travel impacts over the next several days are expected.\n\nCold temperatures will impact many populated areas by late week with near-freezing or below-freezing overnight low temperatures. The coldest temperatures will likely be observed in the North Bay Valleys with 20s and low 30s likely by Thursday or Friday morning. The Santa Clara Valley, East Bay Valleys, and Salinas Valley may also see temperatures drop to the low-to-middle 30s on Friday morning when clearing will be more pronounced. Frost and/or freeze headlines may be necessary in the coming days.\n\nThe unsettled pattern will continue into this upcoming weekend as another storm system will begin impacting central and northern California on Saturday.",
            "as of 4:05 AM PST Tuesday...Quiet this morning ahead of an approaching weather system. Clouds increasing in the afternoon in the Bay Area becoming MVFR cigs. Light rain initially becoming briefly heavy early this evening. Frontal system should be through the Bay Area after 06Z with rain turning to light to moderate showers. Southerly winds this afternoon reaching its maximum speed just ahead of the frontal passage. Could see gusts to 30 kt at the surface but gusts to 50 kt above the surface will cause LLWS. Model guidance suggest a 20-25 percent chance of thunderstorms during the evening hours.\n\nVicinity of KSFO...VFR this morning. MVFR cigs after 20Z with rain beginning shortly afterwards. A brief period of heavy rain sometime between 00Z and 06Z as the front passes. Bases initially at 3000 ft but lowering to 1000 to 1500 ft during heavier rains. Light northwest winds becoming south to southeast after 20Z. Winds up to 20 kt with gusts to 30 kt just ahead of frontal passage. Winds above the surface could be as high as 50 kt causing LLWS. Winds switching to southwest after 06Z. Showers and a possibility of thunderstorms in the post-frontal environment.\n\nSFO Bridge Approach...Similar to KSFO.\n\nMonterey Bay Terminals...VFR for today. Rain could arrive by 00Z with cigs gradually lowering to MVFR. Brief period of moderate to heavy rain between 04Z and 08Z with southerly winds gusting to 20 kt. Winds above the surface could be as high as 40 kt causing LLWS. Rain turning to showers after 08-09Z and winds becoming southwest and decreasing.",
            "as of 03:38 AM PST Tuesday...A surface low will deepen rapidly off the Oregon coast today and tonight. An associated cold front will move across the coastal waters early tonight. Strong southerly winds ahead of the front will bring gale force winds to the northern and outer waters.  There is a slight chance of thunderstorms tonight into Wednesday morning. Winds will slowly decrease on Wednesday as the low moves into Oregon. The strong winds will generate large swells that will peak on Wednesday.",
            ".Tday...Wind Advisory...CAZ006-505-507-509-511-512-517-518 Flash Flood Watch...CAZ506-507 SCA...Pigeon Pt to Pt Pinos 0-10 nm until 6 AM SCA...Pigeon Pt to Pt Pinos 0-10 nm from 4 PM SCA...Pt Arena to Pigeon Pt 10-60 nm until 2 PM GLW...Pt Arena to Pigeon Pt 10-60 nm from 2 PM SCA...Pt Arena to Pt Reyes 0-10 nm SCA...Pt Reyes to Pigeon Pt 0-10 nm SCA...Pigeon Pt to Pt Piedras Blancas 10-60 nm GLW...SF Bay from 4 PM GLW...Pt Arena to Pt Reyes 0-10 nm from 4 PM GLW...Pt Reyes to Pigeon Pt 0-10 nm from 4 PM GLW...Pigeon Pt to Pt Piedras Blancas 10-60 nm from 4 PM SCA...Rough Bar Advisory for SF Bar SCA...Pt Pinos to Pt Piedras Blancas 0-10 nm",
        ])

        XCTAssertEqual(fragments[.footer] ?? [], [
            "$$\n\nPUBLIC FORECAST: Rowe\nAVIATION: W Pi\nMARINE: W Pi\n\nVisit us at www.weather.gov/sanfrancisco\n\nFollow us on Facebook, Twitter, and YouTube at:\nwww.facebook.com/nwsbayarea\nwww.twitter.com/nwsbayarea\nwww.youtube.com/nwsbayarea",
        ])
    }

    func testEx3() {
        let fragments = ForecastDiscussionParser(discussion: ForecastDiscussionText.ex3).fragments()

        XCTAssertEqual(fragments[.preamble] ?? [], [
            "000\nFXUS61 KGYX 011204\nAFDGYX\n\nArea Forecast Discussion\nNational Weather Service Gray ME\n704 AM EST Sun Dec 1 2019\n\n"
        ])

        XCTAssertEqual(fragments[.sectionHeader] ?? [], [
            "SYNOPSIS",
            "NEAR TERM /TODAY/",
            "SHORT TERM /SUNDAY NIGHT THROUGH TUESDAY/",
            "LONG TERM /TUESDAY NIGHT THROUGH SATURDAY/",
            "AVIATION /09Z SUNDAY THROUGH THURSDAY/",
            "MARINE",
            "TIDES/COASTAL FLOODING",
            "GYX WATCHES/WARNINGS/ADVISORIES",
        ])

        XCTAssertEqual(fragments[.paragraphTitle] ?? [], [
            "7AM UPDATE",
            "ORIGINAL DISCUSSION",
        ])

        XCTAssertEqual(fragments[.sectionSeparator] ?? [], [
            "\n\n&&\n\n",
            "\n\n&&\n\n",
            "\n\n&&\n\n",
            "\n\n&&\n\n",
            "\n\n&&\n\n",
            "\n\n&&\n\n",
            "\n\n&&\n\n",
            "\n\n&&\n\n",
        ])

        XCTAssertEqual(fragments[.body] ?? [], [
            "Low pressure tracks south of Cape Cod tonight and shifts into the Gulf of Monday and intensifies, before exiting into the maritimes late Tuesday. This system will bring significant snow to parts of the region late today through Tuesday. Cold weather continues through the end of the week.",
            "Have updated the forecast to pull in early morning temperature observations. Clouds finally dissipated up north allowing Berlin, NH to drop to 2 below. No significant changes to the current forecast.\n\n",
            "Central axis of Canadian high pressure is crossing our area this morning. Meanwhile to our west a large upper level low is spinning east through the Midwest and toward the Great Lakes. Ahead of this low we will find ourselves beneath a shortwave ridge axis today with mostly clear skies becoming cloudier from southwest to northeast as the day goes on and moisture streaming northeast ahead of the low reaches our area. Temperatures today will top out right around freezing for most areas. Although temperatures aloft are warming, we will start out quite cold and increasing clouds will limit heating.",
            "...COMPLEX WINTER STORM WILL IMPACT THE AREA THROUGH TUESDAY...\n\nThe forecast for tonight through Tuesday is complex and still wrought with uncertainty in some aspects. We expect a long duration snowfall event featuring primarily two rounds of heavier snowfall. The first round of heavy snowfall tonight has fairly high confidence associated with it, while the next round Monday night into Tuesday has much more uncertainty. We have issued Winter Storm Warnings and Winter Weather Advisories for areas most likely to be affected by the heavier snowfall tonight. Meanwhile, areas further east which have a better chance of being affected by Monday night and Tuesday\'s snowfall have a Winter Storm Watch for the potential for heavy snow.\n\nAs the large upper level low pressure system moves out of the Midwest and through the lower Great Lakes a new surface low will form off the Mid Atlantic coast and track slowly toward the Gulf of Maine. Expect an initial round of warm/moist advection snowfall to lift northward through southern New England and into southern New Hampshire tonight. This will provide the bulk of the snowfall for New Hampshire with 6 to 10 inches expected in southern New Hampshire. Preceding very dry air mass will likely create a sharp cut off in the northward extent of snowfall. The snow should decrease in intensity Monday morning as the moist advection shifts eastward. However, as the surface low moves east and the upper level low hangs back to the west, we expect a stream of moisture and lift to persist across southwest Maine and much of New Hampshire through the day on Monday. Meteorologists call this a TROWAL, or trough of warm air aloft, and it forms as a connection between the low level moisture stream east of the surface low feeding back toward the upper level low. Within this area we will likely see persistent light snowfall across the southern half of our forecast area.\n\nBy Monday evening the upper level low will move east toward the Gulf of Maine, catching up to the lingering surface low. As it does so models are indicating a renewed round of heavier snowfall is possible along and to the northwest of the low. Winds may also increase within this band of snow as well. There is still a good deal of variation among the models on where to set up this band of snowfall and how intense it will be, though there is broad agreement that it will form. Best estimate at this time is that this will affect the coastal plain of Maine roughly from the Portland area northeast toward Bangor. This second round of heavier snowfall could produce another 6 inches or more of snow. Again, though, there is considerable uncertainty on where this will set up and how intense it will be. For that reason, the area we expect to be affected is currently under a Winter Storm Watch.\n\nAs for storm total snowfall amounts we must consider the fact that this includes snowfall from Sunday evening through Tuesday... nearly 60 hours. This inserts a high amount of uncertainty in the total amounts, and it will make it hard for observers to measure as well due to compaction. For such long duration winter weather events, we have a higher 9 inch criteria for winter storm warnings. Although for this forecast we attempted to hone in on the two primary periods of heavier snowfall with Warnings and Watches issued for areas expected to see 6 or more inches within those shorter periods of time. With light snow continuing for most of the time from Sunday night through Tuesday we can expect that even as snow intensity wanes, snowy travel conditions will persist.",
            "500 MB pattern across NOAM stays with the trend toward troughing thru the week, as upstream and downstream ridges stay in place. Overall this will make for below normals temps, with some fast moving waves that will bring a couple bouts of snow showers, but the persistent downslope flow should make them most likely in the mountains. There are signs of our upstream block over the Pacific breaking down, which in turn allows Atlantic ridging to build back toward the east coast early next week, which if it pans out, would mean a warming trend.\n\nDeep sfc cyclone will finally be moving N and E through the maritimes Tue night, so expect some clearing outside the mountains, but still a little on the breezy side with lows mostly in the teens to around 20. Another 500 MB wave approaches Wed and moves across the CWA Wed night and Thu. A sfc low develops from this system, but far enough offshore where it\'s only impacts will be clouds, but the the upper low could produce some SHSN in the mountains on Thu. Highs Wed and Thu will be similar, generally ranging from the low 30s in the N, to near 40 in the S, with overnight lows Thu morning generally ranging from around 20 in the n to the mid 20s in the S.\n\nYet another fast moving trough could bring SHSN to the entire CWA Fri night, with a blast of colder air for Saturday. A warming trend is then possible Sunday into early next week.",
            "Short Term...VFR today but will see increasing clouds and lowering ceilings beginning in southern New Hampshire this evening. Expect a period of snow, possibly heavy at times, affecting the Manchester, Concord, and Portsmouth areas early Monday morning. Snow intensity weakens and spreads to a broader area on Monday, with another round of heavier snow possible for the coastal plain of Maine Monday night into Tuesday.\n\nLong Term...Mainly VFR outside of the mtns Wed thru Friday. KHIE will likely see some periods of MVFR in SHSN.",
            "Short Term...Low pressure forming off the Mid Atlantic coast and tracking into the Gulf of Maine will bring gale force winds beginning early Monday morning and lasting into Tuesday morning. Casco Bay will be somewhat protected from these winds and will likely only reach 30KT gusts or so.\n\nLong Term...Lingering SCA conditions expected Tue night, but expect sub-SCA Wed into Thu morning, with SCA possible late Thu and Thu night.",
            "Although tides will be near their astronomical minimum for the month, the strong system in the Gulf of Maine will bring building waves and a storm surge. The combination could lead to periods of minor splash over late Monday into Tuesday.",
            "ME...Winter Storm Watch from 1 PM EST this afternoon through Tuesday afternoon for MEZ018-019-021>028. NH...Winter Weather Advisory from 1 PM this afternoon to 7 AM EST Tuesday for NHZ003>006-009. Winter Storm Warning from 4 PM this afternoon to 7 AM EST Tuesday for NHZ007-008-010>015. MARINE...Small Craft Advisory from 4 AM Monday to 6 PM EST Tuesday for ANZ153. Gale Warning from 4 AM Monday to noon EST Tuesday for ANZ150>152-154."
        ])

        XCTAssertEqual(fragments[.footer] ?? [], [
            "$$\n\nNEAR TERM...Kimble\nSHORT TERM...Kimble\nLONG TERM...Cempa",
        ])
    }
}

private extension ForecastDiscussionParser {
    func fragments() -> [FragmentType: [String]] {
        var fragments: [FragmentType: [String]] = [:]
        parse { (type, text) in
            fragments[type, default: []].append(text)
        }
        return fragments
    }
}
