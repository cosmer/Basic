//
//  Created by Charlie Osmer on 8/21/19.
//  Copyright © 2019 Charlie Osmer. All rights reserved.
//

import Foundation

let stationsModelData =
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
            },
            "observationStations": {
                "@container": "@list",
                "@type": "@id"
            }
        }
    ],
    "type": "FeatureCollection",
    "features": [
        {
            "id": "https://api.weather.gov/stations/KPWM",
            "type": "Feature",
            "geometry": {
                "type": "Point",
                "coordinates": [
                    -70.30444,
                    43.642220000000002
                ]
            },
            "properties": {
                "@id": "https://api.weather.gov/stations/KPWM",
                "@type": "wx:ObservationStation",
                "elevation": {
                    "value": 21.945600000000002,
                    "unitCode": "unit:m"
                },
                "stationIdentifier": "KPWM",
                "name": "Portland, Portland International Jetport",
                "timeZone": "America/New_York"
            }
        },
        {
            "id": "https://api.weather.gov/stations/KLEW",
            "type": "Feature",
            "geometry": {
                "type": "Point",
                "coordinates": [
                    -70.283330000000007,
                    44.049999999999997
                ]
            },
            "properties": {
                "@id": "https://api.weather.gov/stations/KLEW",
                "@type": "wx:ObservationStation",
                "elevation": {
                    "value": 88.08720000000001,
                    "unitCode": "unit:m"
                },
                "stationIdentifier": "KLEW",
                "name": "Auburn-Lewiston",
                "timeZone": "America/New_York"
            }
        },
        {
            "id": "https://api.weather.gov/stations/KSFM",
            "type": "Feature",
            "geometry": {
                "type": "Point",
                "coordinates": [
                    -70.716669899999999,
                    43.399999999999999
                ]
            },
            "properties": {
                "@id": "https://api.weather.gov/stations/KSFM",
                "@type": "wx:ObservationStation",
                "elevation": {
                    "value": 74.066400000000002,
                    "unitCode": "unit:m"
                },
                "stationIdentifier": "KSFM",
                "name": "Sanford, Sanford Regional Airport",
                "timeZone": "America/New_York"
            }
        },
        {
            "id": "https://api.weather.gov/stations/KIWI",
            "type": "Feature",
            "geometry": {
                "type": "Point",
                "coordinates": [
                    -69.710759899999999,
                    43.964010000000002
                ]
            },
            "properties": {
                "@id": "https://api.weather.gov/stations/KIWI",
                "@type": "wx:ObservationStation",
                "elevation": {
                    "value": 16.154400000000003,
                    "unitCode": "unit:m"
                },
                "stationIdentifier": "KIWI",
                "name": "Wiscasset Airport",
                "timeZone": "America/New_York"
            }
        },
        {
            "id": "https://api.weather.gov/stations/KDAW",
            "type": "Feature",
            "geometry": {
                "type": "Point",
                "coordinates": [
                    -70.924260000000004,
                    43.279389999999999
                ]
            },
            "properties": {
                "@id": "https://api.weather.gov/stations/KDAW",
                "@type": "wx:ObservationStation",
                "elevation": {
                    "value": 93.878399999999999,
                    "unitCode": "unit:m"
                },
                "stationIdentifier": "KDAW",
                "name": "Rochester - Skyhaven Airport",
                "timeZone": "America/New_York"
            }
        },
        {
            "id": "https://api.weather.gov/stations/KIZG",
            "type": "Feature",
            "geometry": {
                "type": "Point",
                "coordinates": [
                    -70.950280000000006,
                    43.989170000000001
                ]
            },
            "properties": {
                "@id": "https://api.weather.gov/stations/KIZG",
                "@type": "wx:ObservationStation",
                "elevation": {
                    "value": 136.8552,
                    "unitCode": "unit:m"
                },
                "stationIdentifier": "KIZG",
                "name": "Fryeburg, Eastern Slopes Regional Airport",
                "timeZone": "America/New_York"
            }
        },
        {
            "id": "https://api.weather.gov/stations/KPSM",
            "type": "Feature",
            "geometry": {
                "type": "Point",
                "coordinates": [
                    -70.816670000000002,
                    43.083329900000003
                ]
            },
            "properties": {
                "@id": "https://api.weather.gov/stations/KPSM",
                "@type": "wx:ObservationStation",
                "elevation": {
                    "value": 31.089600000000001,
                    "unitCode": "unit:m"
                },
                "stationIdentifier": "KPSM",
                "name": "Pease Air Force Base / Portsmouth",
                "timeZone": "America/New_York"
            }
        },
        {
            "id": "https://api.weather.gov/stations/KAUG",
            "type": "Feature",
            "geometry": {
                "type": "Point",
                "coordinates": [
                    -69.797219999999996,
                    44.32056
                ]
            },
            "properties": {
                "@id": "https://api.weather.gov/stations/KAUG",
                "@type": "wx:ObservationStation",
                "elevation": {
                    "value": 106.98480000000001,
                    "unitCode": "unit:m"
                },
                "stationIdentifier": "KAUG",
                "name": "Augusta, Augusta State Airport",
                "timeZone": "America/New_York"
            }
        },
        {
            "id": "https://api.weather.gov/stations/KRKD",
            "type": "Feature",
            "geometry": {
                "type": "Point",
                "coordinates": [
                    -69.099999999999994,
                    44.066670000000002
                ]
            },
            "properties": {
                "@id": "https://api.weather.gov/stations/KRKD",
                "@type": "wx:ObservationStation",
                "elevation": {
                    "value": 17.0688,
                    "unitCode": "unit:m"
                },
                "stationIdentifier": "KRKD",
                "name": "Rockland, Knox County Regional Airport",
                "timeZone": "America/New_York"
            }
        },
        {
            "id": "https://api.weather.gov/stations/KLCI",
            "type": "Feature",
            "geometry": {
                "type": "Point",
                "coordinates": [
                    -71.416669999999996,
                    43.566670000000002
                ]
            },
            "properties": {
                "@id": "https://api.weather.gov/stations/KLCI",
                "@type": "wx:ObservationStation",
                "elevation": {
                    "value": 166.11600000000001,
                    "unitCode": "unit:m"
                },
                "stationIdentifier": "KLCI",
                "name": "Laconia, Laconia Municipal Airport",
                "timeZone": "America/New_York"
            }
        },
        {
            "id": "https://api.weather.gov/stations/KWVL",
            "type": "Feature",
            "geometry": {
                "type": "Point",
                "coordinates": [
                    -69.683329999999998,
                    44.533329999999999
                ]
            },
            "properties": {
                "@id": "https://api.weather.gov/stations/KWVL",
                "@type": "wx:ObservationStation",
                "elevation": {
                    "value": 102.108,
                    "unitCode": "unit:m"
                },
                "stationIdentifier": "KWVL",
                "name": "Waterville, Waterville Robert LaFleur Airport",
                "timeZone": "America/New_York"
            }
        },
        {
            "id": "https://api.weather.gov/stations/KCON",
            "type": "Feature",
            "geometry": {
                "type": "Point",
                "coordinates": [
                    -71.502570000000006,
                    43.204889999999999
                ]
            },
            "properties": {
                "@id": "https://api.weather.gov/stations/KCON",
                "@type": "wx:ObservationStation",
                "elevation": {
                    "value": 103.0224,
                    "unitCode": "unit:m"
                },
                "stationIdentifier": "KCON",
                "name": "Concord Municipal Airport",
                "timeZone": "America/New_York"
            }
        },
        {
            "id": "https://api.weather.gov/stations/K1P1",
            "type": "Feature",
            "geometry": {
                "type": "Point",
                "coordinates": [
                    -71.7559799,
                    43.777140000000003
                ]
            },
            "properties": {
                "@id": "https://api.weather.gov/stations/K1P1",
                "@type": "wx:ObservationStation",
                "elevation": {
                    "value": 153.00960000000001,
                    "unitCode": "unit:m"
                },
                "stationIdentifier": "K1P1",
                "name": "Plymouth Municipal Airport",
                "timeZone": "America/New_York"
            }
        },
        {
            "id": "https://api.weather.gov/stations/KLWM",
            "type": "Feature",
            "geometry": {
                "type": "Point",
                "coordinates": [
                    -71.125829899999999,
                    42.713059999999999
                ]
            },
            "properties": {
                "@id": "https://api.weather.gov/stations/KLWM",
                "@type": "wx:ObservationStation",
                "elevation": {
                    "value": 45.110400000000006,
                    "unitCode": "unit:m"
                },
                "stationIdentifier": "KLWM",
                "name": "Lawrence, Lawrence Municipal Airport",
                "timeZone": "America/New_York"
            }
        },
        {
            "id": "https://api.weather.gov/stations/KMHT",
            "type": "Feature",
            "geometry": {
                "type": "Point",
                "coordinates": [
                    -71.435590000000005,
                    42.929639999999999
                ]
            },
            "properties": {
                "@id": "https://api.weather.gov/stations/KMHT",
                "@type": "wx:ObservationStation",
                "elevation": {
                    "value": 67.970399999999998,
                    "unitCode": "unit:m"
                },
                "stationIdentifier": "KMHT",
                "name": "Manchester Airport",
                "timeZone": "America/New_York"
            }
        },
        {
            "id": "https://api.weather.gov/stations/KBVY",
            "type": "Feature",
            "geometry": {
                "type": "Point",
                "coordinates": [
                    -70.916390000000007,
                    42.58361
                ]
            },
            "properties": {
                "@id": "https://api.weather.gov/stations/KBVY",
                "@type": "wx:ObservationStation",
                "elevation": {
                    "value": 32.918399999999998,
                    "unitCode": "unit:m"
                },
                "stationIdentifier": "KBVY",
                "name": "Beverly, Beverly Municipal Airport",
                "timeZone": "America/New_York"
            }
        },
        {
            "id": "https://api.weather.gov/stations/KBML",
            "type": "Feature",
            "geometry": {
                "type": "Point",
                "coordinates": [
                    -71.178610000000006,
                    44.57611
                ]
            },
            "properties": {
                "@id": "https://api.weather.gov/stations/KBML",
                "@type": "wx:ObservationStation",
                "elevation": {
                    "value": 352.95840000000004,
                    "unitCode": "unit:m"
                },
                "stationIdentifier": "KBML",
                "name": "Berlin, Berlin Municipal Airport",
                "timeZone": "America/New_York"
            }
        },
        {
            "id": "https://api.weather.gov/stations/KHIE",
            "type": "Feature",
            "geometry": {
                "type": "Point",
                "coordinates": [
                    -71.552180000000007,
                    44.365949999999998
                ]
            },
            "properties": {
                "@id": "https://api.weather.gov/stations/KHIE",
                "@type": "wx:ObservationStation",
                "elevation": {
                    "value": 319.12560000000002,
                    "unitCode": "unit:m"
                },
                "stationIdentifier": "KHIE",
                "name": "Whitefield - Mount Washington Regional Airport",
                "timeZone": "America/New_York"
            }
        },
        {
            "id": "https://api.weather.gov/stations/KASH",
            "type": "Feature",
            "geometry": {
                "type": "Point",
                "coordinates": [
                    -71.514089999999996,
                    42.779809999999998
                ]
            },
            "properties": {
                "@id": "https://api.weather.gov/stations/KASH",
                "@type": "wx:ObservationStation",
                "elevation": {
                    "value": 54.864000000000004,
                    "unitCode": "unit:m"
                },
                "stationIdentifier": "KASH",
                "name": "Nashua - Boire Field Airport",
                "timeZone": "America/New_York"
            }
        },
        {
            "id": "https://api.weather.gov/stations/KBED",
            "type": "Feature",
            "geometry": {
                "type": "Point",
                "coordinates": [
                    -71.294439999999994,
                    42.468330000000002
                ]
            },
            "properties": {
                "@id": "https://api.weather.gov/stations/KBED",
                "@type": "wx:ObservationStation",
                "elevation": {
                    "value": 39.928800000000003,
                    "unitCode": "unit:m"
                },
                "stationIdentifier": "KBED",
                "name": "Bedford, Hanscom Field",
                "timeZone": "America/New_York"
            }
        },
        {
            "id": "https://api.weather.gov/stations/KBGR",
            "type": "Feature",
            "geometry": {
                "type": "Point",
                "coordinates": [
                    -68.818610000000007,
                    44.797220000000003
                ]
            },
            "properties": {
                "@id": "https://api.weather.gov/stations/KBGR",
                "@type": "wx:ObservationStation",
                "elevation": {
                    "value": 57.912000000000006,
                    "unitCode": "unit:m"
                },
                "stationIdentifier": "KBGR",
                "name": "Bangor, Bangor International Airport",
                "timeZone": "America/New_York"
            }
        },
        {
            "id": "https://api.weather.gov/stations/KLEB",
            "type": "Feature",
            "geometry": {
                "type": "Point",
                "coordinates": [
                    -72.305369999999996,
                    43.627099999999999
                ]
            },
            "properties": {
                "@id": "https://api.weather.gov/stations/KLEB",
                "@type": "wx:ObservationStation",
                "elevation": {
                    "value": 170.07840000000002,
                    "unitCode": "unit:m"
                },
                "stationIdentifier": "KLEB",
                "name": "Lebanon Municipal Airport",
                "timeZone": "America/New_York"
            }
        },
        {
            "id": "https://api.weather.gov/stations/K1V4",
            "type": "Feature",
            "geometry": {
                "type": "Point",
                "coordinates": [
                    -72.019300000000001,
                    44.420099999999998
                ]
            },
            "properties": {
                "@id": "https://api.weather.gov/stations/K1V4",
                "@type": "wx:ObservationStation",
                "elevation": {
                    "value": 212.14080000000001,
                    "unitCode": "unit:m"
                },
                "stationIdentifier": "K1V4",
                "name": "St. Johnsbury - Fairbanks",
                "timeZone": "America/New_York"
            }
        },
        {
            "id": "https://api.weather.gov/stations/KBHB",
            "type": "Feature",
            "geometry": {
                "type": "Point",
                "coordinates": [
                    -68.366669999999999,
                    44.450000000000003
                ]
            },
            "properties": {
                "@id": "https://api.weather.gov/stations/KBHB",
                "@type": "wx:ObservationStation",
                "elevation": {
                    "value": 24.993600000000001,
                    "unitCode": "unit:m"
                },
                "stationIdentifier": "KBHB",
                "name": "Bar Harbor, Hancock County-Bar Harbor Airport",
                "timeZone": "America/New_York"
            }
        },
        {
            "id": "https://api.weather.gov/stations/KAFN",
            "type": "Feature",
            "geometry": {
                "type": "Point",
                "coordinates": [
                    -72.001270000000005,
                    42.806669900000003
                ]
            },
            "properties": {
                "@id": "https://api.weather.gov/stations/KAFN",
                "@type": "wx:ObservationStation",
                "elevation": {
                    "value": 307.84800000000001,
                    "unitCode": "unit:m"
                },
                "stationIdentifier": "KAFN",
                "name": "Jaffrey Airport-Silver Ranch",
                "timeZone": "America/New_York"
            }
        },
        {
            "id": "https://api.weather.gov/stations/KFIT",
            "type": "Feature",
            "geometry": {
                "type": "Point",
                "coordinates": [
                    -71.755830000000003,
                    42.551940000000002
                ]
            },
            "properties": {
                "@id": "https://api.weather.gov/stations/KFIT",
                "@type": "wx:ObservationStation",
                "elevation": {
                    "value": 106.07040000000001,
                    "unitCode": "unit:m"
                },
                "stationIdentifier": "KFIT",
                "name": "Fitchburg, Fitchburg Municipal Airport",
                "timeZone": "America/New_York"
            }
        },
        {
            "id": "https://api.weather.gov/stations/KEEN",
            "type": "Feature",
            "geometry": {
                "type": "Point",
                "coordinates": [
                    -72.266670000000005,
                    42.899999999999999
                ]
            },
            "properties": {
                "@id": "https://api.weather.gov/stations/KEEN",
                "@type": "wx:ObservationStation",
                "elevation": {
                    "value": 149.0472,
                    "unitCode": "unit:m"
                },
                "stationIdentifier": "KEEN",
                "name": "Keene, Dillant-Hopkins Airport",
                "timeZone": "America/New_York"
            }
        },
        {
            "id": "https://api.weather.gov/stations/KVSF",
            "type": "Feature",
            "geometry": {
                "type": "Point",
                "coordinates": [
                    -72.52167,
                    43.342500000000001
                ]
            },
            "properties": {
                "@id": "https://api.weather.gov/stations/KVSF",
                "@type": "wx:ObservationStation",
                "elevation": {
                    "value": 174.95520000000002,
                    "unitCode": "unit:m"
                },
                "stationIdentifier": "KVSF",
                "name": "Springfield, Hartness State Springfield Airport",
                "timeZone": "America/New_York"
            }
        },
        {
            "id": "https://api.weather.gov/stations/KMPV",
            "type": "Feature",
            "geometry": {
                "type": "Point",
                "coordinates": [
                    -72.566109999999995,
                    44.204720000000002
                ]
            },
            "properties": {
                "@id": "https://api.weather.gov/stations/KMPV",
                "@type": "wx:ObservationStation",
                "elevation": {
                    "value": 355.09200000000004,
                    "unitCode": "unit:m"
                },
                "stationIdentifier": "KMPV",
                "name": "Barre / Montpelier, Knapp State Airport",
                "timeZone": "America/New_York"
            }
        },
        {
            "id": "https://api.weather.gov/stations/KORE",
            "type": "Feature",
            "geometry": {
                "type": "Point",
                "coordinates": [
                    -72.277500000000003,
                    42.571669999999997
                ]
            },
            "properties": {
                "@id": "https://api.weather.gov/stations/KORE",
                "@type": "wx:ObservationStation",
                "elevation": {
                    "value": 168.85920000000002,
                    "unitCode": "unit:m"
                },
                "stationIdentifier": "KORE",
                "name": "Orange, Orange Municipal Airport",
                "timeZone": "America/New_York"
            }
        },
        {
            "id": "https://api.weather.gov/stations/KGNR",
            "type": "Feature",
            "geometry": {
                "type": "Point",
                "coordinates": [
                    -69.553799999999995,
                    45.464619900000002
                ]
            },
            "properties": {
                "@id": "https://api.weather.gov/stations/KGNR",
                "@type": "wx:ObservationStation",
                "elevation": {
                    "value": 424.89120000000003,
                    "unitCode": "unit:m"
                },
                "stationIdentifier": "KGNR",
                "name": "Greenville",
                "timeZone": "America/New_York"
            }
        },
        {
            "id": "https://api.weather.gov/stations/KMVL",
            "type": "Feature",
            "geometry": {
                "type": "Point",
                "coordinates": [
                    -72.6162499,
                    44.535890000000002
                ]
            },
            "properties": {
                "@id": "https://api.weather.gov/stations/KMVL",
                "@type": "wx:ObservationStation",
                "elevation": {
                    "value": 216.10320000000002,
                    "unitCode": "unit:m"
                },
                "stationIdentifier": "KMVL",
                "name": "Morrisville-Stowe State Airport",
                "timeZone": "America/New_York"
            }
        },
        {
            "id": "https://api.weather.gov/stations/KRUT",
            "type": "Feature",
            "geometry": {
                "type": "Point",
                "coordinates": [
                    -72.950000000000003,
                    43.533329999999999
                ]
            },
            "properties": {
                "@id": "https://api.weather.gov/stations/KRUT",
                "@type": "wx:ObservationStation",
                "elevation": {
                    "value": 239.8776,
                    "unitCode": "unit:m"
                },
                "stationIdentifier": "KRUT",
                "name": "Rutland-Southern Vermont Regional Airport",
                "timeZone": "America/New_York"
            }
        },
        {
            "id": "https://api.weather.gov/stations/KMLT",
            "type": "Feature",
            "geometry": {
                "type": "Point",
                "coordinates": [
                    -68.691940000000002,
                    45.647779999999997
                ]
            },
            "properties": {
                "@id": "https://api.weather.gov/stations/KMLT",
                "@type": "wx:ObservationStation",
                "elevation": {
                    "value": 124.0536,
                    "unitCode": "unit:m"
                },
                "stationIdentifier": "KMLT",
                "name": "Millinocket, Millinocket Municipal Airport",
                "timeZone": "America/New_York"
            }
        },
        {
            "id": "https://api.weather.gov/stations/KBTV",
            "type": "Feature",
            "geometry": {
                "type": "Point",
                "coordinates": [
                    -73.150279999999995,
                    44.468060000000001
                ]
            },
            "properties": {
                "@id": "https://api.weather.gov/stations/KBTV",
                "@type": "wx:ObservationStation",
                "elevation": {
                    "value": 100.8888,
                    "unitCode": "unit:m"
                },
                "stationIdentifier": "KBTV",
                "name": "Burlington, Burlington International Airport",
                "timeZone": "America/New_York"
            }
        },
        {
            "id": "https://api.weather.gov/stations/KDDH",
            "type": "Feature",
            "geometry": {
                "type": "Point",
                "coordinates": [
                    -73.248599999999996,
                    42.893549999999998
                ]
            },
            "properties": {
                "@id": "https://api.weather.gov/stations/KDDH",
                "@type": "wx:ObservationStation",
                "elevation": {
                    "value": 252.06960000000001,
                    "unitCode": "unit:m"
                },
                "stationIdentifier": "KDDH",
                "name": "Bennington Morse State Airport",
                "timeZone": "America/New_York"
            }
        },
        {
            "id": "https://api.weather.gov/stations/KAQW",
            "type": "Feature",
            "geometry": {
                "type": "Point",
                "coordinates": [
                    -73.169550000000001,
                    42.697310000000002
                ]
            },
            "properties": {
                "@id": "https://api.weather.gov/stations/KAQW",
                "@type": "wx:ObservationStation",
                "elevation": {
                    "value": 195.072,
                    "unitCode": "unit:m"
                },
                "stationIdentifier": "KAQW",
                "name": "North Adams Harriman-and-West Airport",
                "timeZone": "America/New_York"
            }
        },
        {
            "id": "https://api.weather.gov/stations/KGFL",
            "type": "Feature",
            "geometry": {
                "type": "Point",
                "coordinates": [
                    -73.610560000000007,
                    43.34111
                ]
            },
            "properties": {
                "@id": "https://api.weather.gov/stations/KGFL",
                "@type": "wx:ObservationStation",
                "elevation": {
                    "value": 99.974400000000003,
                    "unitCode": "unit:m"
                },
                "stationIdentifier": "KGFL",
                "name": "Glens Falls, Floyd Bennett Memorial Airport",
                "timeZone": "America/New_York"
            }
        },
        {
            "id": "https://api.weather.gov/stations/KPBG",
            "type": "Feature",
            "geometry": {
                "type": "Point",
                "coordinates": [
                    -73.466669899999999,
                    44.649999999999999
                ]
            },
            "properties": {
                "@id": "https://api.weather.gov/stations/KPBG",
                "@type": "wx:ObservationStation",
                "elevation": {
                    "value": 71.9328,
                    "unitCode": "unit:m"
                },
                "stationIdentifier": "KPBG",
                "name": "Plattsburgh International Airport ",
                "timeZone": "America/New_York"
            }
        },
        {
            "id": "https://api.weather.gov/stations/KALB",
            "type": "Feature",
            "geometry": {
                "type": "Point",
                "coordinates": [
                    -73.799120000000002,
                    42.747219999999999
                ]
            },
            "properties": {
                "@id": "https://api.weather.gov/stations/KALB",
                "@type": "wx:ObservationStation",
                "elevation": {
                    "value": 86.868000000000009,
                    "unitCode": "unit:m"
                },
                "stationIdentifier": "KALB",
                "name": "Albany International Airport",
                "timeZone": "America/New_York"
            }
        },
        {
            "id": "https://api.weather.gov/stations/KHUL",
            "type": "Feature",
            "geometry": {
                "type": "Point",
                "coordinates": [
                    -67.791939999999997,
                    46.123060000000002
                ]
            },
            "properties": {
                "@id": "https://api.weather.gov/stations/KHUL",
                "@type": "wx:ObservationStation",
                "elevation": {
                    "value": 149.0472,
                    "unitCode": "unit:m"
                },
                "stationIdentifier": "KHUL",
                "name": "Houlton, Houlton International Airport",
                "timeZone": "America/New_York"
            }
        }
    ],
    "observationStations": [
        "https://api.weather.gov/stations/KPWM",
        "https://api.weather.gov/stations/KLEW",
        "https://api.weather.gov/stations/KSFM",
        "https://api.weather.gov/stations/KIWI",
        "https://api.weather.gov/stations/KDAW",
        "https://api.weather.gov/stations/KIZG",
        "https://api.weather.gov/stations/KPSM",
        "https://api.weather.gov/stations/KAUG",
        "https://api.weather.gov/stations/KRKD",
        "https://api.weather.gov/stations/KLCI",
        "https://api.weather.gov/stations/KWVL",
        "https://api.weather.gov/stations/KCON",
        "https://api.weather.gov/stations/K1P1",
        "https://api.weather.gov/stations/KLWM",
        "https://api.weather.gov/stations/KMHT",
        "https://api.weather.gov/stations/KBVY",
        "https://api.weather.gov/stations/KBML",
        "https://api.weather.gov/stations/KHIE",
        "https://api.weather.gov/stations/KASH",
        "https://api.weather.gov/stations/KBED",
        "https://api.weather.gov/stations/KBGR",
        "https://api.weather.gov/stations/KLEB",
        "https://api.weather.gov/stations/K1V4",
        "https://api.weather.gov/stations/KBHB",
        "https://api.weather.gov/stations/KAFN",
        "https://api.weather.gov/stations/KFIT",
        "https://api.weather.gov/stations/KEEN",
        "https://api.weather.gov/stations/KVSF",
        "https://api.weather.gov/stations/KMPV",
        "https://api.weather.gov/stations/KORE",
        "https://api.weather.gov/stations/KGNR",
        "https://api.weather.gov/stations/KMVL",
        "https://api.weather.gov/stations/KRUT",
        "https://api.weather.gov/stations/KMLT",
        "https://api.weather.gov/stations/KBTV",
        "https://api.weather.gov/stations/KDDH",
        "https://api.weather.gov/stations/KAQW",
        "https://api.weather.gov/stations/KGFL",
        "https://api.weather.gov/stations/KPBG",
        "https://api.weather.gov/stations/KALB",
        "https://api.weather.gov/stations/KHUL"
    ]
}
"""
