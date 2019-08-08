//
//  Created by Charlie Osmer on 8/4/19.
//  Copyright © 2019 Charlie Osmer. All rights reserved.
//

import Foundation

let forecastModelData =
"""
{
    "@context": [
        "https://raw.githubusercontent.com/geojson/geojson-ld/master/contexts/geojson-base.jsonld",
        {
            "wx": "https://api.weather.gov/ontology#",
            "geo": "http://www.opengis.net/ont/geosparql#",
            "unit": "http://codes.wmo.int/common/unit/",
            "@vocab": "https://api.weather.gov/ontology#"
        }
    ],
    "type": "Feature",
    "geometry": {
        "type": "GeometryCollection",
        "geometries": [
            {
                "type": "Point",
                "coordinates": [
                    -97.094408400000006,
                    39.7559738
                ]
            },
            {
                "type": "Polygon",
                "coordinates": [
                    [
                        [
                            -97.1089731,
                            39.766826299999998
                        ],
                        [
                            -97.108526900000001,
                            39.744778799999999
                        ],
                        [
                            -97.079846700000004,
                            39.745119500000001
                        ],
                        [
                            -97.08028680000001,
                            39.767167000000001
                        ],
                        [
                            -97.1089731,
                            39.766826299999998
                        ]
                    ]
                ]
            }
        ]
    },
    "properties": {
        "updated": "2019-08-04T02:40:03+00:00",
        "units": "us",
        "forecastGenerator": "BaselineForecastGenerator",
        "generatedAt": "2019-08-04T10:18:13+00:00",
        "updateTime": "2019-08-04T02:40:03+00:00",
        "validTimes": "2019-08-03T20:00:00+00:00/P7DT5H",
        "elevation": {
            "value": 441.96000000000004,
            "unitCode": "unit:m"
        },
        "periods": [
            {
                "number": 1,
                "name": "Overnight",
                "startTime": "2019-08-04T05:00:00-05:00",
                "endTime": "2019-08-04T06:00:00-05:00",
                "isDaytime": false,
                "temperature": 66,
                "temperatureUnit": "F",
                "temperatureTrend": null,
                "windSpeed": "0 mph",
                "windDirection": "E",
                "icon": "https://api.weather.gov/icons/land/night/bkn?size=medium",
                "shortForecast": "Mostly Cloudy",
                "detailedForecast": "Mostly cloudy, with a low around 66. East wind around 0 mph."
            },
            {
                "number": 2,
                "name": "Sunday",
                "startTime": "2019-08-04T06:00:00-05:00",
                "endTime": "2019-08-04T18:00:00-05:00",
                "isDaytime": true,
                "temperature": 84,
                "temperatureUnit": "F",
                "temperatureTrend": null,
                "windSpeed": "0 to 5 mph",
                "windDirection": "SE",
                "icon": "https://api.weather.gov/icons/land/day/bkn?size=medium",
                "shortForecast": "Partly Sunny",
                "detailedForecast": "Partly sunny, with a high near 84. Southeast wind 0 to 5 mph."
            },
            {
                "number": 3,
                "name": "Sunday Night",
                "startTime": "2019-08-04T18:00:00-05:00",
                "endTime": "2019-08-05T06:00:00-05:00",
                "isDaytime": false,
                "temperature": 68,
                "temperatureUnit": "F",
                "temperatureTrend": null,
                "windSpeed": "0 to 5 mph",
                "windDirection": "S",
                "icon": "https://api.weather.gov/icons/land/night/sct?size=medium",
                "shortForecast": "Partly Cloudy",
                "detailedForecast": "Partly cloudy, with a low around 68. South wind 0 to 5 mph."
            },
            {
                "number": 4,
                "name": "Monday",
                "startTime": "2019-08-05T06:00:00-05:00",
                "endTime": "2019-08-05T18:00:00-05:00",
                "isDaytime": true,
                "temperature": 88,
                "temperatureUnit": "F",
                "temperatureTrend": null,
                "windSpeed": "0 to 5 mph",
                "windDirection": "S",
                "icon": "https://api.weather.gov/icons/land/day/sct?size=medium",
                "shortForecast": "Mostly Sunny",
                "detailedForecast": "Mostly sunny, with a high near 88. South wind 0 to 5 mph."
            },
            {
                "number": 5,
                "name": "Monday Night",
                "startTime": "2019-08-05T18:00:00-05:00",
                "endTime": "2019-08-06T06:00:00-05:00",
                "isDaytime": false,
                "temperature": 67,
                "temperatureUnit": "F",
                "temperatureTrend": null,
                "windSpeed": "0 to 5 mph",
                "windDirection": "S",
                "icon": "https://api.weather.gov/icons/land/night/tsra_sct,20/tsra_sct,50?size=medium",
                "shortForecast": "Chance Showers And Thunderstorms",
                "detailedForecast": "A chance of showers and thunderstorms after 7pm. Mostly cloudy, with a low around 67. South wind 0 to 5 mph. Chance of precipitation is 50%."
            },
            {
                "number": 6,
                "name": "Tuesday",
                "startTime": "2019-08-06T06:00:00-05:00",
                "endTime": "2019-08-06T18:00:00-05:00",
                "isDaytime": true,
                "temperature": 86,
                "temperatureUnit": "F",
                "temperatureTrend": null,
                "windSpeed": "0 to 5 mph",
                "windDirection": "SE",
                "icon": "https://api.weather.gov/icons/land/day/tsra_hi,50/tsra_hi,20?size=medium",
                "shortForecast": "Chance Showers And Thunderstorms",
                "detailedForecast": "A chance of showers and thunderstorms before 1pm. Mostly sunny, with a high near 86. Chance of precipitation is 50%."
            },
            {
                "number": 7,
                "name": "Tuesday Night",
                "startTime": "2019-08-06T18:00:00-05:00",
                "endTime": "2019-08-07T06:00:00-05:00",
                "isDaytime": false,
                "temperature": 68,
                "temperatureUnit": "F",
                "temperatureTrend": null,
                "windSpeed": "0 mph",
                "windDirection": "SE",
                "icon": "https://api.weather.gov/icons/land/night/sct?size=medium",
                "shortForecast": "Partly Cloudy",
                "detailedForecast": "Partly cloudy, with a low around 68."
            },
            {
                "number": 8,
                "name": "Wednesday",
                "startTime": "2019-08-07T06:00:00-05:00",
                "endTime": "2019-08-07T18:00:00-05:00",
                "isDaytime": true,
                "temperature": 88,
                "temperatureUnit": "F",
                "temperatureTrend": null,
                "windSpeed": "0 to 5 mph",
                "windDirection": "S",
                "icon": "https://api.weather.gov/icons/land/day/sct?size=medium",
                "shortForecast": "Mostly Sunny",
                "detailedForecast": "Mostly sunny, with a high near 88."
            },
            {
                "number": 9,
                "name": "Wednesday Night",
                "startTime": "2019-08-07T18:00:00-05:00",
                "endTime": "2019-08-08T06:00:00-05:00",
                "isDaytime": false,
                "temperature": 68,
                "temperatureUnit": "F",
                "temperatureTrend": null,
                "windSpeed": "0 to 5 mph",
                "windDirection": "S",
                "icon": "https://api.weather.gov/icons/land/night/tsra_hi,20/tsra_hi,30?size=medium",
                "shortForecast": "Chance Showers And Thunderstorms",
                "detailedForecast": "A chance of showers and thunderstorms after 7pm. Partly cloudy, with a low around 68. Chance of precipitation is 30%."
            },
            {
                "number": 10,
                "name": "Thursday",
                "startTime": "2019-08-08T06:00:00-05:00",
                "endTime": "2019-08-08T18:00:00-05:00",
                "isDaytime": true,
                "temperature": 87,
                "temperatureUnit": "F",
                "temperatureTrend": null,
                "windSpeed": "5 mph",
                "windDirection": "SE",
                "icon": "https://api.weather.gov/icons/land/day/tsra_hi,30/tsra_hi,20?size=medium",
                "shortForecast": "Chance Showers And Thunderstorms",
                "detailedForecast": "A chance of showers and thunderstorms. Mostly sunny, with a high near 87. Chance of precipitation is 30%."
            },
            {
                "number": 11,
                "name": "Thursday Night",
                "startTime": "2019-08-08T18:00:00-05:00",
                "endTime": "2019-08-09T06:00:00-05:00",
                "isDaytime": false,
                "temperature": 67,
                "temperatureUnit": "F",
                "temperatureTrend": null,
                "windSpeed": "0 to 5 mph",
                "windDirection": "E",
                "icon": "https://api.weather.gov/icons/land/night/tsra_hi,20/tsra_hi,30?size=medium",
                "shortForecast": "Chance Showers And Thunderstorms",
                "detailedForecast": "A chance of showers and thunderstorms. Partly cloudy, with a low around 67. Chance of precipitation is 30%."
            },
            {
                "number": 12,
                "name": "Friday",
                "startTime": "2019-08-09T06:00:00-05:00",
                "endTime": "2019-08-09T18:00:00-05:00",
                "isDaytime": true,
                "temperature": 85,
                "temperatureUnit": "F",
                "temperatureTrend": null,
                "windSpeed": "5 mph",
                "windDirection": "SE",
                "icon": "https://api.weather.gov/icons/land/day/tsra_hi,30/tsra_hi,20?size=medium",
                "shortForecast": "Chance Showers And Thunderstorms",
                "detailedForecast": "A chance of showers and thunderstorms before 1pm. Partly sunny, with a high near 85. Chance of precipitation is 30%."
            },
            {
                "number": 13,
                "name": "Friday Night",
                "startTime": "2019-08-09T18:00:00-05:00",
                "endTime": "2019-08-10T06:00:00-05:00",
                "isDaytime": false,
                "temperature": 66,
                "temperatureUnit": "F",
                "temperatureTrend": null,
                "windSpeed": "0 to 5 mph",
                "windDirection": "SE",
                "icon": "https://api.weather.gov/icons/land/night/sct/tsra_hi,20?size=medium",
                "shortForecast": "Partly Cloudy then Slight Chance Showers And Thunderstorms",
                "detailedForecast": "A slight chance of showers and thunderstorms after 1am. Partly cloudy, with a low around 66. Chance of precipitation is 20%."
            },
            {
                "number": 14,
                "name": "Saturday",
                "startTime": "2019-08-10T06:00:00-05:00",
                "endTime": "2019-08-10T18:00:00-05:00",
                "isDaytime": true,
                "temperature": 84,
                "temperatureUnit": "F",
                "temperatureTrend": null,
                "windSpeed": "5 mph",
                "windDirection": "SE",
                "icon": "https://api.weather.gov/icons/land/day/tsra_hi,20?size=medium",
                "shortForecast": "Slight Chance Showers And Thunderstorms",
                "detailedForecast": "A slight chance of showers and thunderstorms before 1pm. Mostly sunny, with a high near 84. Chance of precipitation is 20%."
            }
        ]
    }
}
"""
