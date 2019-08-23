//
//  Created by Charlie Osmer on 8/21/19.
//  Copyright © 2019 Charlie Osmer. All rights reserved.
//

import Foundation

/// https://api.weather.gov/stations/KPWM/observations/latest
let observationModelData =
"""
{
    "@context": [
        "https://raw.githubusercontent.com/geojson/geojson-ld/master/contexts/geojson-base.jsonld",
        {
            "wx": "https://api.weather.gov/ontology#",
            "s": "https://schema.org/",
            "geo": "http://www.opengis.net/ont/geosparql#",
            "unit": "http://codes.wmo.int/common/unit/",
            "@vocab": "https://api.weather.gov/ontology#",
            "geometry": {
                "@id": "s:GeoCoordinates",
                "@type": "geo:wktLiteral"
            },
            "city": "s:addressLocality",
            "state": "s:addressRegion",
            "distance": {
                "@id": "s:Distance",
                "@type": "s:QuantitativeValue"
            },
            "bearing": {
                "@type": "s:QuantitativeValue"
            },
            "value": {
                "@id": "s:value"
            },
            "unitCode": {
                "@id": "s:unitCode",
                "@type": "@id"
            },
            "forecastOffice": {
                "@type": "@id"
            },
            "forecastGridData": {
                "@type": "@id"
            },
            "publicZone": {
                "@type": "@id"
            },
            "county": {
                "@type": "@id"
            }
        }
    ],
    "id": "https://api.weather.gov/stations/KPWM/observations/2019-08-21T09:51:00+00:00",
    "type": "Feature",
    "geometry": {
        "type": "Point",
        "coordinates": [
            -70.310000000000002,
            43.649999999999999
        ]
    },
    "properties": {
        "@id": "https://api.weather.gov/stations/KPWM/observations/2019-08-21T09:51:00+00:00",
        "@type": "wx:ObservationStation",
        "elevation": {
            "value": 19,
            "unitCode": "unit:m"
        },
        "station": "https://api.weather.gov/stations/KPWM",
        "timestamp": "2019-08-21T09:51:00+00:00",
        "rawMessage": "KPWM 210951Z 00000KT 10SM SCT250 16/14 A3000 RMK AO2 SLP158 T01560139",
        "textDescription": "Partly Cloudy",
        "icon": "https://api.weather.gov/icons/land/night/sct?size=medium",
        "presentWeather": [],
        "temperature": {
            "value": 15.600000000000023,
            "unitCode": "unit:degC",
            "qualityControl": "qc:V"
        },
        "dewpoint": {
            "value": 13.900000000000034,
            "unitCode": "unit:degC",
            "qualityControl": "qc:V"
        },
        "windDirection": {
            "value": 0,
            "unitCode": "unit:degree_(angle)",
            "qualityControl": "qc:V"
        },
        "windSpeed": {
            "value": 0,
            "unitCode": "unit:m_s-1",
            "qualityControl": "qc:V"
        },
        "windGust": {
            "value": null,
            "unitCode": "unit:m_s-1",
            "qualityControl": "qc:Z"
        },
        "barometricPressure": {
            "value": 101590,
            "unitCode": "unit:Pa",
            "qualityControl": "qc:V"
        },
        "seaLevelPressure": {
            "value": 101580,
            "unitCode": "unit:Pa",
            "qualityControl": "qc:V"
        },
        "visibility": {
            "value": 16090,
            "unitCode": "unit:m",
            "qualityControl": "qc:C"
        },
        "maxTemperatureLast24Hours": {
            "value": null,
            "unitCode": "unit:degC",
            "qualityControl": null
        },
        "minTemperatureLast24Hours": {
            "value": null,
            "unitCode": "unit:degC",
            "qualityControl": null
        },
        "precipitationLastHour": {
            "value": null,
            "unitCode": "unit:m",
            "qualityControl": "qc:Z"
        },
        "precipitationLast3Hours": {
            "value": null,
            "unitCode": "unit:m",
            "qualityControl": "qc:Z"
        },
        "precipitationLast6Hours": {
            "value": null,
            "unitCode": "unit:m",
            "qualityControl": "qc:Z"
        },
        "relativeHumidity": {
            "value": 89.621112131842494,
            "unitCode": "unit:percent",
            "qualityControl": "qc:C"
        },
        "windChill": {
            "value": null,
            "unitCode": "unit:degC",
            "qualityControl": "qc:V"
        },
        "heatIndex": {
            "value": null,
            "unitCode": "unit:degC",
            "qualityControl": "qc:V"
        },
        "cloudLayers": [
            {
                "base": {
                    "value": 7620,
                    "unitCode": "unit:m"
                },
                "amount": "SCT"
            }
        ]
    }
}
"""
