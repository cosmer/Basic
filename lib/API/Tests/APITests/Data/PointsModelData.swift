//
//  Created by Charlie Osmer on 8/4/19.
//  Copyright © 2019 Charlie Osmer. All rights reserved.
//

import Foundation

let pointsModelData =
#"""
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
    "id": "https://api.weather.gov/points/39.7456,-97.0892",
    "type": "Feature",
    "geometry": {
        "type": "Point",
        "coordinates": [
            -97.089200000000005,
            39.745600000000003
        ]
    },
    "properties": {
        "@id": "https://api.weather.gov/points/39.7456,-97.0892",
        "@type": "wx:Point",
        "cwa": "TOP",
        "forecastOffice": "https://api.weather.gov/offices/TOP",
        "gridX": 31,
        "gridY": 80,
        "forecast": "https://api.weather.gov/gridpoints/TOP/31,80/forecast",
        "forecastHourly": "https://api.weather.gov/gridpoints/TOP/31,80/forecast/hourly",
        "forecastGridData": "https://api.weather.gov/gridpoints/TOP/31,80",
        "observationStations": "https://api.weather.gov/gridpoints/TOP/31,80/stations",
        "relativeLocation": {
            "type": "Feature",
            "geometry": {
                "type": "Point",
                "coordinates": [
                    -97.086661000000007,
                    39.679375999999998
                ]
            },
            "properties": {
                "city": "Linn",
                "state": "KS",
                "distance": {
                    "value": 7366.9851976443715,
                    "unitCode": "unit:m"
                },
                "bearing": {
                    "value": 358,
                    "unitCode": "unit:degrees_true"
                }
            }
        },
        "forecastZone": "https://api.weather.gov/zones/forecast/KSZ009",
        "county": "https://api.weather.gov/zones/county/KSC201",
        "fireWeatherZone": "https://api.weather.gov/zones/fire/KSZ009",
        "timeZone": "America/Chicago",
        "radarStation": "KTWX"
    }
}
"""#
