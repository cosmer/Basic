//
//  Created by Charlie Osmer on 8/16/19.
//  Copyright © 2019 Charlie Osmer. All rights reserved.
//

import Foundation

let observationsModelData =
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
    "type": "FeatureCollection",
    "features": [
        {
            "id": "https://api.weather.gov/stations/KCNK/observations/2019-08-17T11:55:00+00:00",
            "type": "Feature",
            "geometry": {
                "type": "Point",
                "coordinates": [
                    -97.650000000000006,
                    39.539999999999999
                ]
            },
            "properties": {
                "@id": "https://api.weather.gov/stations/KCNK/observations/2019-08-17T11:55:00+00:00",
                "@type": "wx:ObservationStation",
                "elevation": {
                    "value": 452,
                    "unitCode": "unit:m"
                },
                "station": "https://api.weather.gov/stations/KCNK",
                "timestamp": "2019-08-17T11:55:00+00:00",
                "rawMessage": "KCNK 171155Z AUTO 11004KT 10SM CLR 20/18 A2982 RMK AO2 SLP081 60048 70049 T02000178 10256 20200 55023",
                "textDescription": "Clear",
                "icon": "https://api.weather.gov/icons/land/day/skc?size=medium",
                "presentWeather": [],
                "temperature": {
                    "value": 20,
                    "unitCode": "unit:degC",
                    "qualityControl": "qc:V"
                },
                "dewpoint": {
                    "value": 17.800000000000011,
                    "unitCode": "unit:degC",
                    "qualityControl": "qc:V"
                },
                "windDirection": {
                    "value": 110,
                    "unitCode": "unit:degree_(angle)",
                    "qualityControl": "qc:V"
                },
                "windSpeed": {
                    "value": 2.1000000000000001,
                    "unitCode": "unit:m_s-1",
                    "qualityControl": "qc:V"
                },
                "windGust": {
                    "value": null,
                    "unitCode": "unit:m_s-1",
                    "qualityControl": "qc:Z"
                },
                "barometricPressure": {
                    "value": 100980,
                    "unitCode": "unit:Pa",
                    "qualityControl": "qc:V"
                },
                "seaLevelPressure": {
                    "value": 100810,
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
                    "value": 0.012200000000000001,
                    "unitCode": "unit:m",
                    "qualityControl": "qc:C"
                },
                "relativeHumidity": {
                    "value": 87.166373588392688,
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
                            "value": null,
                            "unitCode": "unit:m"
                        },
                        "amount": "CLR"
                    }
                ]
            }
        },
        {
            "id": "https://api.weather.gov/stations/KCNK/observations/2019-08-17T10:55:00+00:00",
            "type": "Feature",
            "geometry": {
                "type": "Point",
                "coordinates": [
                    -97.650000000000006,
                    39.539999999999999
                ]
            },
            "properties": {
                "@id": "https://api.weather.gov/stations/KCNK/observations/2019-08-17T10:55:00+00:00",
                "@type": "wx:ObservationStation",
                "elevation": {
                    "value": 452,
                    "unitCode": "unit:m"
                },
                "station": "https://api.weather.gov/stations/KCNK",
                "timestamp": "2019-08-17T10:55:00+00:00",
                "rawMessage": "KCNK 171055Z AUTO VRB03KT 10SM FEW055 FEW070 FEW100 21/18 A2979 RMK AO2 RAE48 SLP070 P0001 T02060178",
                "textDescription": "Mostly Clear",
                "icon": "https://api.weather.gov/icons/land/night/few?size=medium",
                "presentWeather": [],
                "temperature": {
                    "value": 20.600000000000023,
                    "unitCode": "unit:degC",
                    "qualityControl": "qc:V"
                },
                "dewpoint": {
                    "value": 17.800000000000011,
                    "unitCode": "unit:degC",
                    "qualityControl": "qc:V"
                },
                "windDirection": {
                    "value": null,
                    "unitCode": "unit:degree_(angle)",
                    "qualityControl": "qc:Z"
                },
                "windSpeed": {
                    "value": 1.5,
                    "unitCode": "unit:m_s-1",
                    "qualityControl": "qc:V"
                },
                "windGust": {
                    "value": null,
                    "unitCode": "unit:m_s-1",
                    "qualityControl": "qc:Z"
                },
                "barometricPressure": {
                    "value": 100880,
                    "unitCode": "unit:Pa",
                    "qualityControl": "qc:V"
                },
                "seaLevelPressure": {
                    "value": 100700,
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
                    "value": 0.00029999999999999997,
                    "unitCode": "unit:m",
                    "qualityControl": "qc:C"
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
                    "value": 83.994973551120907,
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
                            "value": 1680,
                            "unitCode": "unit:m"
                        },
                        "amount": "FEW"
                    },
                    {
                        "base": {
                            "value": 2130,
                            "unitCode": "unit:m"
                        },
                        "amount": "FEW"
                    },
                    {
                        "base": {
                            "value": 3050,
                            "unitCode": "unit:m"
                        },
                        "amount": "FEW"
                    }
                ]
            }
        },
        {
            "id": "https://api.weather.gov/stations/KCNK/observations/2019-08-17T09:55:00+00:00",
            "type": "Feature",
            "geometry": {
                "type": "Point",
                "coordinates": [
                    -97.650000000000006,
                    39.539999999999999
                ]
            },
            "properties": {
                "@id": "https://api.weather.gov/stations/KCNK/observations/2019-08-17T09:55:00+00:00",
                "@type": "wx:ObservationStation",
                "elevation": {
                    "value": 452,
                    "unitCode": "unit:m"
                },
                "station": "https://api.weather.gov/stations/KCNK",
                "timestamp": "2019-08-17T09:55:00+00:00",
                "rawMessage": "KCNK 170955Z AUTO 09004KT 10SM -RA BKN110 21/19 A2983 RMK AO2 SLP084 P0001 T02060189",
                "textDescription": "Light Rain",
                "icon": "https://api.weather.gov/icons/land/night/rain?size=medium",
                "presentWeather": [
                    {
                        "intensity": "light",
                        "modifier": null,
                        "weather": "rain",
                        "rawString": "-RA"
                    }
                ],
                "temperature": {
                    "value": 20.600000000000023,
                    "unitCode": "unit:degC",
                    "qualityControl": "qc:V"
                },
                "dewpoint": {
                    "value": 18.900000000000034,
                    "unitCode": "unit:degC",
                    "qualityControl": "qc:V"
                },
                "windDirection": {
                    "value": 90,
                    "unitCode": "unit:degree_(angle)",
                    "qualityControl": "qc:V"
                },
                "windSpeed": {
                    "value": 2.1000000000000001,
                    "unitCode": "unit:m_s-1",
                    "qualityControl": "qc:V"
                },
                "windGust": {
                    "value": null,
                    "unitCode": "unit:m_s-1",
                    "qualityControl": "qc:Z"
                },
                "barometricPressure": {
                    "value": 101020,
                    "unitCode": "unit:Pa",
                    "qualityControl": "qc:V"
                },
                "seaLevelPressure": {
                    "value": 100840,
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
                    "value": 0.00029999999999999997,
                    "unitCode": "unit:m",
                    "qualityControl": "qc:C"
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
                    "value": 89.992032132584185,
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
                            "value": 3350,
                            "unitCode": "unit:m"
                        },
                        "amount": "BKN"
                    }
                ]
            }
        },
        {
            "id": "https://api.weather.gov/stations/KCNK/observations/2019-08-17T09:04:00+00:00",
            "type": "Feature",
            "geometry": {
                "type": "Point",
                "coordinates": [
                    -97.650000000000006,
                    39.539999999999999
                ]
            },
            "properties": {
                "@id": "https://api.weather.gov/stations/KCNK/observations/2019-08-17T09:04:00+00:00",
                "@type": "wx:ObservationStation",
                "elevation": {
                    "value": 452,
                    "unitCode": "unit:m"
                },
                "station": "https://api.weather.gov/stations/KCNK",
                "timestamp": "2019-08-17T09:04:00+00:00",
                "rawMessage": "KCNK 170904Z AUTO 23011G30KT 10SM -RA FEW007 SCT023 BKN100 21/18 A2986 RMK AO2 LTG DSNT ALQDS PRESFR P0001 T02110183",
                "textDescription": "Light Rain",
                "icon": "https://api.weather.gov/icons/land/night/rain?size=medium",
                "presentWeather": [
                    {
                        "intensity": "light",
                        "modifier": null,
                        "weather": "rain",
                        "rawString": "-RA"
                    }
                ],
                "temperature": {
                    "value": 21.100000000000023,
                    "unitCode": "unit:degC",
                    "qualityControl": "qc:V"
                },
                "dewpoint": {
                    "value": 18.300000000000011,
                    "unitCode": "unit:degC",
                    "qualityControl": "qc:V"
                },
                "windDirection": {
                    "value": 230,
                    "unitCode": "unit:degree_(angle)",
                    "qualityControl": "qc:V"
                },
                "windSpeed": {
                    "value": 5.7000000000000002,
                    "unitCode": "unit:m_s-1",
                    "qualityControl": "qc:V"
                },
                "windGust": {
                    "value": null,
                    "unitCode": "unit:m_s-1",
                    "qualityControl": "qc:Z"
                },
                "barometricPressure": {
                    "value": 101120,
                    "unitCode": "unit:Pa",
                    "qualityControl": "qc:V"
                },
                "seaLevelPressure": {
                    "value": null,
                    "unitCode": "unit:Pa",
                    "qualityControl": "qc:Z"
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
                    "value": 0.00029999999999999997,
                    "unitCode": "unit:m",
                    "qualityControl": "qc:C"
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
                    "value": 84.050698469602409,
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
                            "value": 210,
                            "unitCode": "unit:m"
                        },
                        "amount": "FEW"
                    },
                    {
                        "base": {
                            "value": 700,
                            "unitCode": "unit:m"
                        },
                        "amount": "SCT"
                    },
                    {
                        "base": {
                            "value": 3050,
                            "unitCode": "unit:m"
                        },
                        "amount": "BKN"
                    }
                ]
            }
        },
        {
            "id": "https://api.weather.gov/stations/KCNK/observations/2019-08-17T08:55:00+00:00",
            "type": "Feature",
            "geometry": {
                "type": "Point",
                "coordinates": [
                    -97.650000000000006,
                    39.539999999999999
                ]
            },
            "properties": {
                "@id": "https://api.weather.gov/stations/KCNK/observations/2019-08-17T08:55:00+00:00",
                "@type": "wx:ObservationStation",
                "elevation": {
                    "value": 452,
                    "unitCode": "unit:m"
                },
                "station": "https://api.weather.gov/stations/KCNK",
                "timestamp": "2019-08-17T08:55:00+00:00",
                "rawMessage": "KCNK 170855Z AUTO 24020G32KT 7SM VCTS -RA SCT010 BKN047 OVC100 21/19 A2989 RMK AO2 PK WND 25032/0851 WSHFT 0829 LTG DSNT NE AND E RAB04 TSB31E52 SLP105 P0029 60046 T02110189 53031",
                "textDescription": "Light Rain",
                "icon": "https://api.weather.gov/icons/land/night/rain?size=medium",
                "presentWeather": [
                    {
                        "intensity": "light",
                        "modifier": null,
                        "weather": "rain",
                        "rawString": "-RA"
                    }
                ],
                "temperature": {
                    "value": 21.100000000000023,
                    "unitCode": "unit:degC",
                    "qualityControl": "qc:V"
                },
                "dewpoint": {
                    "value": 18.900000000000034,
                    "unitCode": "unit:degC",
                    "qualityControl": "qc:V"
                },
                "windDirection": {
                    "value": null,
                    "unitCode": "unit:degree_(angle)",
                    "qualityControl": "qc:Z"
                },
                "windSpeed": {
                    "value": null,
                    "unitCode": "unit:m_s-1",
                    "qualityControl": "qc:Z"
                },
                "windGust": {
                    "value": null,
                    "unitCode": "unit:m_s-1",
                    "qualityControl": "qc:Z"
                },
                "barometricPressure": {
                    "value": 101220,
                    "unitCode": "unit:Pa",
                    "qualityControl": "qc:V"
                },
                "seaLevelPressure": {
                    "value": 101050,
                    "unitCode": "unit:Pa",
                    "qualityControl": "qc:V"
                },
                "visibility": {
                    "value": 11270,
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
                    "value": 0.0074000000000000003,
                    "unitCode": "unit:m",
                    "qualityControl": "qc:C"
                },
                "precipitationLast3Hours": {
                    "value": 0.0117,
                    "unitCode": "unit:m",
                    "qualityControl": "qc:C"
                },
                "precipitationLast6Hours": {
                    "value": null,
                    "unitCode": "unit:m",
                    "qualityControl": "qc:Z"
                },
                "relativeHumidity": {
                    "value": 87.266357692714038,
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
                            "value": 300,
                            "unitCode": "unit:m"
                        },
                        "amount": "SCT"
                    },
                    {
                        "base": {
                            "value": 1430,
                            "unitCode": "unit:m"
                        },
                        "amount": "BKN"
                    },
                    {
                        "base": {
                            "value": 3050,
                            "unitCode": "unit:m"
                        },
                        "amount": "OVC"
                    }
                ]
            }
        },
        {
            "id": "https://api.weather.gov/stations/KCNK/observations/2019-08-17T08:52:00+00:00",
            "type": "Feature",
            "geometry": {
                "type": "Point",
                "coordinates": [
                    -97.650000000000006,
                    39.539999999999999
                ]
            },
            "properties": {
                "@id": "https://api.weather.gov/stations/KCNK/observations/2019-08-17T08:52:00+00:00",
                "@type": "wx:ObservationStation",
                "elevation": {
                    "value": 452,
                    "unitCode": "unit:m"
                },
                "station": "https://api.weather.gov/stations/KCNK",
                "timestamp": "2019-08-17T08:52:00+00:00",
                "rawMessage": "KCNK 170852Z AUTO 24021G32KT 5SM VCTS RA BR FEW006 BKN024 OVC090 22/20 A2989 RMK AO2 PK WND 25032/0851 WSHFT 0829 LTG DSNT ALQDS RAB04 TSB31E52 P0029",
                "textDescription": "Rain and Fog/Mist",
                "icon": "https://api.weather.gov/icons/land/night/rain?size=medium",
                "presentWeather": [
                    {
                        "intensity": null,
                        "modifier": null,
                        "weather": "rain",
                        "rawString": "RA"
                    },
                    {
                        "intensity": null,
                        "modifier": null,
                        "weather": "fog_mist",
                        "rawString": "BR"
                    }
                ],
                "temperature": {
                    "value": 22,
                    "unitCode": "unit:degC",
                    "qualityControl": "qc:V"
                },
                "dewpoint": {
                    "value": 20,
                    "unitCode": "unit:degC",
                    "qualityControl": "qc:V"
                },
                "windDirection": {
                    "value": null,
                    "unitCode": "unit:degree_(angle)",
                    "qualityControl": "qc:Z"
                },
                "windSpeed": {
                    "value": null,
                    "unitCode": "unit:m_s-1",
                    "qualityControl": "qc:Z"
                },
                "windGust": {
                    "value": null,
                    "unitCode": "unit:m_s-1",
                    "qualityControl": "qc:Z"
                },
                "barometricPressure": {
                    "value": 101220,
                    "unitCode": "unit:Pa",
                    "qualityControl": "qc:V"
                },
                "seaLevelPressure": {
                    "value": null,
                    "unitCode": "unit:Pa",
                    "qualityControl": "qc:Z"
                },
                "visibility": {
                    "value": 8050,
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
                    "value": 0.0074000000000000003,
                    "unitCode": "unit:m",
                    "qualityControl": "qc:C"
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
                    "value": 88.436416127981786,
                    "unitCode": "unit:percent",
                    "qualityControl": "qc:C"
                },
                "windChill": {
                    "value": null,
                    "unitCode": "unit:degC",
                    "qualityControl": "qc:V"
                },
                "heatIndex": {
                    "value": 22.564728643341766,
                    "unitCode": "unit:degC",
                    "qualityControl": "qc:V"
                },
                "cloudLayers": [
                    {
                        "base": {
                            "value": 180,
                            "unitCode": "unit:m"
                        },
                        "amount": "FEW"
                    },
                    {
                        "base": {
                            "value": 730,
                            "unitCode": "unit:m"
                        },
                        "amount": "BKN"
                    },
                    {
                        "base": {
                            "value": 2740,
                            "unitCode": "unit:m"
                        },
                        "amount": "OVC"
                    }
                ]
            }
        },
        {
            "id": "https://api.weather.gov/stations/KCNK/observations/2019-08-17T08:49:00+00:00",
            "type": "Feature",
            "geometry": {
                "type": "Point",
                "coordinates": [
                    -97.650000000000006,
                    39.539999999999999
                ]
            },
            "properties": {
                "@id": "https://api.weather.gov/stations/KCNK/observations/2019-08-17T08:49:00+00:00",
                "@type": "wx:ObservationStation",
                "elevation": {
                    "value": 452,
                    "unitCode": "unit:m"
                },
                "station": "https://api.weather.gov/stations/KCNK",
                "timestamp": "2019-08-17T08:49:00+00:00",
                "rawMessage": "KCNK 170849Z AUTO 25015G27KT 3SM TSRA BR SCT011 BKN030 OVC080 22/20 A2988 RMK AO2 PK WND 28027/0844 WSHFT 0829 LTG DSNT ALQDS RAB04 TSB31 P0028",
                "textDescription": "Thunderstorms and Rain and Fog/Mist",
                "icon": "https://api.weather.gov/icons/land/night/rain?size=medium",
                "presentWeather": [
                    {
                        "intensity": null,
                        "modifier": null,
                        "weather": "thunderstorms",
                        "rawString": "TS"
                    },
                    {
                        "intensity": null,
                        "modifier": null,
                        "weather": "rain",
                        "rawString": "TSRA"
                    },
                    {
                        "intensity": null,
                        "modifier": null,
                        "weather": "fog_mist",
                        "rawString": "BR"
                    }
                ],
                "temperature": {
                    "value": 22,
                    "unitCode": "unit:degC",
                    "qualityControl": "qc:V"
                },
                "dewpoint": {
                    "value": 20,
                    "unitCode": "unit:degC",
                    "qualityControl": "qc:V"
                },
                "windDirection": {
                    "value": 250.00000000000003,
                    "unitCode": "unit:degree_(angle)",
                    "qualityControl": "qc:V"
                },
                "windSpeed": {
                    "value": 7.7000000000000002,
                    "unitCode": "unit:m_s-1",
                    "qualityControl": "qc:V"
                },
                "windGust": {
                    "value": null,
                    "unitCode": "unit:m_s-1",
                    "qualityControl": "qc:Z"
                },
                "barometricPressure": {
                    "value": 101190,
                    "unitCode": "unit:Pa",
                    "qualityControl": "qc:V"
                },
                "seaLevelPressure": {
                    "value": null,
                    "unitCode": "unit:Pa",
                    "qualityControl": "qc:Z"
                },
                "visibility": {
                    "value": 4830,
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
                    "value": 0.0071000000000000004,
                    "unitCode": "unit:m",
                    "qualityControl": "qc:C"
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
                    "value": 88.436416127981786,
                    "unitCode": "unit:percent",
                    "qualityControl": "qc:C"
                },
                "windChill": {
                    "value": null,
                    "unitCode": "unit:degC",
                    "qualityControl": "qc:V"
                },
                "heatIndex": {
                    "value": 22.564728643341766,
                    "unitCode": "unit:degC",
                    "qualityControl": "qc:V"
                },
                "cloudLayers": [
                    {
                        "base": {
                            "value": 340,
                            "unitCode": "unit:m"
                        },
                        "amount": "SCT"
                    },
                    {
                        "base": {
                            "value": 910,
                            "unitCode": "unit:m"
                        },
                        "amount": "BKN"
                    },
                    {
                        "base": {
                            "value": 2440,
                            "unitCode": "unit:m"
                        },
                        "amount": "OVC"
                    }
                ]
            }
        },
        {
            "id": "https://api.weather.gov/stations/KCNK/observations/2019-08-17T08:47:00+00:00",
            "type": "Feature",
            "geometry": {
                "type": "Point",
                "coordinates": [
                    -97.650000000000006,
                    39.539999999999999
                ]
            },
            "properties": {
                "@id": "https://api.weather.gov/stations/KCNK/observations/2019-08-17T08:47:00+00:00",
                "@type": "wx:ObservationStation",
                "elevation": {
                    "value": 452,
                    "unitCode": "unit:m"
                },
                "station": "https://api.weather.gov/stations/KCNK",
                "timestamp": "2019-08-17T08:47:00+00:00",
                "rawMessage": "KCNK 170847Z AUTO 26016G27KT 2SM +TSRA BR FEW007 BKN023 OVC075 21/20 A2987 RMK AO2 PK WND 28027/0844 WSHFT 0829 LTG DSNT ALQDS RAB04 TSB31 P0027 T02110200",
                "textDescription": "Thunderstorms and Heavy Rain and Fog/Mist",
                "icon": "https://api.weather.gov/icons/land/night/rain?size=medium",
                "presentWeather": [
                    {
                        "intensity": null,
                        "modifier": null,
                        "weather": "thunderstorms",
                        "rawString": "TS"
                    },
                    {
                        "intensity": "heavy",
                        "modifier": null,
                        "weather": "rain",
                        "rawString": "+TSRA"
                    },
                    {
                        "intensity": null,
                        "modifier": null,
                        "weather": "fog_mist",
                        "rawString": "BR"
                    }
                ],
                "temperature": {
                    "value": 21.100000000000023,
                    "unitCode": "unit:degC",
                    "qualityControl": "qc:V"
                },
                "dewpoint": {
                    "value": 20,
                    "unitCode": "unit:degC",
                    "qualityControl": "qc:V"
                },
                "windDirection": {
                    "value": 260,
                    "unitCode": "unit:degree_(angle)",
                    "qualityControl": "qc:V"
                },
                "windSpeed": {
                    "value": 8.1999999999999993,
                    "unitCode": "unit:m_s-1",
                    "qualityControl": "qc:V"
                },
                "windGust": {
                    "value": null,
                    "unitCode": "unit:m_s-1",
                    "qualityControl": "qc:Z"
                },
                "barometricPressure": {
                    "value": 101150,
                    "unitCode": "unit:Pa",
                    "qualityControl": "qc:V"
                },
                "seaLevelPressure": {
                    "value": null,
                    "unitCode": "unit:Pa",
                    "qualityControl": "qc:Z"
                },
                "visibility": {
                    "value": 3220,
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
                    "value": 0.0068999999999999999,
                    "unitCode": "unit:m",
                    "qualityControl": "qc:C"
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
                    "value": 93.443072582485158,
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
                            "value": 210,
                            "unitCode": "unit:m"
                        },
                        "amount": "FEW"
                    },
                    {
                        "base": {
                            "value": 700,
                            "unitCode": "unit:m"
                        },
                        "amount": "BKN"
                    },
                    {
                        "base": {
                            "value": 2290,
                            "unitCode": "unit:m"
                        },
                        "amount": "OVC"
                    }
                ]
            }
        },
        {
            "id": "https://api.weather.gov/stations/KCNK/observations/2019-08-17T08:43:00+00:00",
            "type": "Feature",
            "geometry": {
                "type": "Point",
                "coordinates": [
                    -97.650000000000006,
                    39.539999999999999
                ]
            },
            "properties": {
                "@id": "https://api.weather.gov/stations/KCNK/observations/2019-08-17T08:43:00+00:00",
                "@type": "wx:ObservationStation",
                "elevation": {
                    "value": 452,
                    "unitCode": "unit:m"
                },
                "station": "https://api.weather.gov/stations/KCNK",
                "timestamp": "2019-08-17T08:43:00+00:00",
                "rawMessage": "KCNK 170843Z AUTO 26015G23KT 1 3/4SM +TSRA BR SCT009 BKN030 OVC050 21/19 A2988 RMK AO2 WSHFT 0829 VIS 3/4V4 LTG DSNT ALQDS RAB04 TSB31 P0026 T02110194",
                "textDescription": "Thunderstorms and Heavy Rain and Fog/Mist",
                "icon": "https://api.weather.gov/icons/land/night/rain?size=medium",
                "presentWeather": [
                    {
                        "intensity": null,
                        "modifier": null,
                        "weather": "thunderstorms",
                        "rawString": "TS"
                    },
                    {
                        "intensity": "heavy",
                        "modifier": null,
                        "weather": "rain",
                        "rawString": "+TSRA"
                    },
                    {
                        "intensity": null,
                        "modifier": null,
                        "weather": "fog_mist",
                        "rawString": "BR"
                    }
                ],
                "temperature": {
                    "value": 21.100000000000023,
                    "unitCode": "unit:degC",
                    "qualityControl": "qc:V"
                },
                "dewpoint": {
                    "value": 19.400000000000034,
                    "unitCode": "unit:degC",
                    "qualityControl": "qc:V"
                },
                "windDirection": {
                    "value": null,
                    "unitCode": "unit:degree_(angle)",
                    "qualityControl": "qc:Z"
                },
                "windSpeed": {
                    "value": null,
                    "unitCode": "unit:m_s-1",
                    "qualityControl": "qc:Z"
                },
                "windGust": {
                    "value": null,
                    "unitCode": "unit:m_s-1",
                    "qualityControl": "qc:Z"
                },
                "barometricPressure": {
                    "value": 101190,
                    "unitCode": "unit:Pa",
                    "qualityControl": "qc:V"
                },
                "seaLevelPressure": {
                    "value": null,
                    "unitCode": "unit:Pa",
                    "qualityControl": "qc:Z"
                },
                "visibility": {
                    "value": 2820,
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
                    "value": 0.0066,
                    "unitCode": "unit:m",
                    "qualityControl": "qc:C"
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
                    "value": 90.028047779447178,
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
                            "value": 270,
                            "unitCode": "unit:m"
                        },
                        "amount": "SCT"
                    },
                    {
                        "base": {
                            "value": 910,
                            "unitCode": "unit:m"
                        },
                        "amount": "BKN"
                    },
                    {
                        "base": {
                            "value": 1520,
                            "unitCode": "unit:m"
                        },
                        "amount": "OVC"
                    }
                ]
            }
        },
        {
            "id": "https://api.weather.gov/stations/KCNK/observations/2019-08-17T08:39:00+00:00",
            "type": "Feature",
            "geometry": {
                "type": "Point",
                "coordinates": [
                    -97.650000000000006,
                    39.539999999999999
                ]
            },
            "properties": {
                "@id": "https://api.weather.gov/stations/KCNK/observations/2019-08-17T08:39:00+00:00",
                "@type": "wx:ObservationStation",
                "elevation": {
                    "value": 452,
                    "unitCode": "unit:m"
                },
                "station": "https://api.weather.gov/stations/KCNK",
                "timestamp": "2019-08-17T08:39:00+00:00",
                "rawMessage": "KCNK 170839Z AUTO 22015G24KT 2SM +TSRA BR FEW006 BKN031 OVC065 21/20 A2986 RMK AO2 VIS 3/4V5 LTG DSNT ALQDS RAB04 TSB31 P0013 T02110200",
                "textDescription": "Thunderstorms and Heavy Rain and Fog/Mist",
                "icon": "https://api.weather.gov/icons/land/night/rain?size=medium",
                "presentWeather": [
                    {
                        "intensity": null,
                        "modifier": null,
                        "weather": "thunderstorms",
                        "rawString": "TS"
                    },
                    {
                        "intensity": "heavy",
                        "modifier": null,
                        "weather": "rain",
                        "rawString": "+TSRA"
                    },
                    {
                        "intensity": null,
                        "modifier": null,
                        "weather": "fog_mist",
                        "rawString": "BR"
                    }
                ],
                "temperature": {
                    "value": 21.100000000000023,
                    "unitCode": "unit:degC",
                    "qualityControl": "qc:V"
                },
                "dewpoint": {
                    "value": 20,
                    "unitCode": "unit:degC",
                    "qualityControl": "qc:V"
                },
                "windDirection": {
                    "value": 220,
                    "unitCode": "unit:degree_(angle)",
                    "qualityControl": "qc:V"
                },
                "windSpeed": {
                    "value": 7.7000000000000002,
                    "unitCode": "unit:m_s-1",
                    "qualityControl": "qc:V"
                },
                "windGust": {
                    "value": null,
                    "unitCode": "unit:m_s-1",
                    "qualityControl": "qc:Z"
                },
                "barometricPressure": {
                    "value": 101120,
                    "unitCode": "unit:Pa",
                    "qualityControl": "qc:V"
                },
                "seaLevelPressure": {
                    "value": null,
                    "unitCode": "unit:Pa",
                    "qualityControl": "qc:Z"
                },
                "visibility": {
                    "value": 3220,
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
                    "value": 0.0033,
                    "unitCode": "unit:m",
                    "qualityControl": "qc:C"
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
                    "value": 93.443072582485158,
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
                            "value": 180,
                            "unitCode": "unit:m"
                        },
                        "amount": "FEW"
                    },
                    {
                        "base": {
                            "value": 940,
                            "unitCode": "unit:m"
                        },
                        "amount": "BKN"
                    },
                    {
                        "base": {
                            "value": 1980,
                            "unitCode": "unit:m"
                        },
                        "amount": "OVC"
                    }
                ]
            }
        },
        {
            "id": "https://api.weather.gov/stations/KCNK/observations/2019-08-17T08:37:00+00:00",
            "type": "Feature",
            "geometry": {
                "type": "Point",
                "coordinates": [
                    -97.650000000000006,
                    39.539999999999999
                ]
            },
            "properties": {
                "@id": "https://api.weather.gov/stations/KCNK/observations/2019-08-17T08:37:00+00:00",
                "@type": "wx:ObservationStation",
                "elevation": {
                    "value": 452,
                    "unitCode": "unit:m"
                },
                "station": "https://api.weather.gov/stations/KCNK",
                "timestamp": "2019-08-17T08:37:00+00:00",
                "rawMessage": "KCNK 170837Z AUTO 23013G24KT 3SM +TSRA BR SCT011 BKN028 OVC080 22/21 A2987 RMK AO2 LTG DSNT ALQDS RAB04 TSB31 P0013 T02170206",
                "textDescription": "Thunderstorms and Heavy Rain and Fog/Mist",
                "icon": "https://api.weather.gov/icons/land/night/rain?size=medium",
                "presentWeather": [
                    {
                        "intensity": null,
                        "modifier": null,
                        "weather": "thunderstorms",
                        "rawString": "TS"
                    },
                    {
                        "intensity": "heavy",
                        "modifier": null,
                        "weather": "rain",
                        "rawString": "+TSRA"
                    },
                    {
                        "intensity": null,
                        "modifier": null,
                        "weather": "fog_mist",
                        "rawString": "BR"
                    }
                ],
                "temperature": {
                    "value": 21.700000000000045,
                    "unitCode": "unit:degC",
                    "qualityControl": "qc:V"
                },
                "dewpoint": {
                    "value": 20.600000000000023,
                    "unitCode": "unit:degC",
                    "qualityControl": "qc:V"
                },
                "windDirection": {
                    "value": 230,
                    "unitCode": "unit:degree_(angle)",
                    "qualityControl": "qc:V"
                },
                "windSpeed": {
                    "value": 6.7000000000000002,
                    "unitCode": "unit:m_s-1",
                    "qualityControl": "qc:V"
                },
                "windGust": {
                    "value": null,
                    "unitCode": "unit:m_s-1",
                    "qualityControl": "qc:Z"
                },
                "barometricPressure": {
                    "value": 101150,
                    "unitCode": "unit:Pa",
                    "qualityControl": "qc:V"
                },
                "seaLevelPressure": {
                    "value": null,
                    "unitCode": "unit:Pa",
                    "qualityControl": "qc:Z"
                },
                "visibility": {
                    "value": 4830,
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
                    "value": 0.0033,
                    "unitCode": "unit:m",
                    "qualityControl": "qc:C"
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
                    "value": 93.471828738842888,
                    "unitCode": "unit:percent",
                    "qualityControl": "qc:C"
                },
                "windChill": {
                    "value": null,
                    "unitCode": "unit:degC",
                    "qualityControl": "qc:V"
                },
                "heatIndex": {
                    "value": 22.366208861514224,
                    "unitCode": "unit:degC",
                    "qualityControl": "qc:V"
                },
                "cloudLayers": [
                    {
                        "base": {
                            "value": 340,
                            "unitCode": "unit:m"
                        },
                        "amount": "SCT"
                    },
                    {
                        "base": {
                            "value": 850,
                            "unitCode": "unit:m"
                        },
                        "amount": "BKN"
                    },
                    {
                        "base": {
                            "value": 2440,
                            "unitCode": "unit:m"
                        },
                        "amount": "OVC"
                    }
                ]
            }
        },
        {
            "id": "https://api.weather.gov/stations/KCNK/observations/2019-08-17T08:05:00+00:00",
            "type": "Feature",
            "geometry": {
                "type": "Point",
                "coordinates": [
                    -97.650000000000006,
                    39.539999999999999
                ]
            },
            "properties": {
                "@id": "https://api.weather.gov/stations/KCNK/observations/2019-08-17T08:05:00+00:00",
                "@type": "wx:ObservationStation",
                "elevation": {
                    "value": 452,
                    "unitCode": "unit:m"
                },
                "station": "https://api.weather.gov/stations/KCNK",
                "timestamp": "2019-08-17T08:05:00+00:00",
                "rawMessage": "KCNK 170805Z AUTO 02004KT 8SM VCTS -RA FEW005 SCT029 BKN045 23/22 A2985 RMK AO2 LTG DSNT ALQDS RAB04 P0000 T02330217",
                "textDescription": "Light Rain",
                "icon": "https://api.weather.gov/icons/land/night/rain?size=medium",
                "presentWeather": [
                    {
                        "intensity": "light",
                        "modifier": null,
                        "weather": "rain",
                        "rawString": "-RA"
                    }
                ],
                "temperature": {
                    "value": 23.300000000000011,
                    "unitCode": "unit:degC",
                    "qualityControl": "qc:V"
                },
                "dewpoint": {
                    "value": 21.700000000000045,
                    "unitCode": "unit:degC",
                    "qualityControl": "qc:V"
                },
                "windDirection": {
                    "value": 20,
                    "unitCode": "unit:degree_(angle)",
                    "qualityControl": "qc:V"
                },
                "windSpeed": {
                    "value": 2.1000000000000001,
                    "unitCode": "unit:m_s-1",
                    "qualityControl": "qc:V"
                },
                "windGust": {
                    "value": null,
                    "unitCode": "unit:m_s-1",
                    "qualityControl": "qc:Z"
                },
                "barometricPressure": {
                    "value": 101080,
                    "unitCode": "unit:Pa",
                    "qualityControl": "qc:V"
                },
                "seaLevelPressure": {
                    "value": null,
                    "unitCode": "unit:Pa",
                    "qualityControl": "qc:Z"
                },
                "visibility": {
                    "value": 12870,
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
                    "value": 0,
                    "unitCode": "unit:m",
                    "qualityControl": "qc:C"
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
                    "value": 90.737357078739123,
                    "unitCode": "unit:percent",
                    "qualityControl": "qc:C"
                },
                "windChill": {
                    "value": null,
                    "unitCode": "unit:degC",
                    "qualityControl": "qc:V"
                },
                "heatIndex": {
                    "value": 24.054808768167049,
                    "unitCode": "unit:degC",
                    "qualityControl": "qc:V"
                },
                "cloudLayers": [
                    {
                        "base": {
                            "value": 150,
                            "unitCode": "unit:m"
                        },
                        "amount": "FEW"
                    },
                    {
                        "base": {
                            "value": 880,
                            "unitCode": "unit:m"
                        },
                        "amount": "SCT"
                    },
                    {
                        "base": {
                            "value": 1370,
                            "unitCode": "unit:m"
                        },
                        "amount": "BKN"
                    }
                ]
            }
        },
        {
            "id": "https://api.weather.gov/stations/KCNK/observations/2019-08-17T07:55:00+00:00",
            "type": "Feature",
            "geometry": {
                "type": "Point",
                "coordinates": [
                    -97.650000000000006,
                    39.539999999999999
                ]
            },
            "properties": {
                "@id": "https://api.weather.gov/stations/KCNK/observations/2019-08-17T07:55:00+00:00",
                "@type": "wx:ObservationStation",
                "elevation": {
                    "value": 452,
                    "unitCode": "unit:m"
                },
                "station": "https://api.weather.gov/stations/KCNK",
                "timestamp": "2019-08-17T07:55:00+00:00",
                "rawMessage": "KCNK 170755Z AUTO 03006KT 10SM FEW004 SCT040 BKN048 23/22 A2983 RMK AO2 LTG DSNT ALQDS RAE0657B07E18 PRESRR SLP083 P0000 T02330222",
                "textDescription": "Mostly Cloudy",
                "icon": "https://api.weather.gov/icons/land/night/bkn?size=medium",
                "presentWeather": [],
                "temperature": {
                    "value": 23.300000000000011,
                    "unitCode": "unit:degC",
                    "qualityControl": "qc:V"
                },
                "dewpoint": {
                    "value": 22.200000000000045,
                    "unitCode": "unit:degC",
                    "qualityControl": "qc:V"
                },
                "windDirection": {
                    "value": 29.999999999999996,
                    "unitCode": "unit:degree_(angle)",
                    "qualityControl": "qc:V"
                },
                "windSpeed": {
                    "value": 3.1000000000000001,
                    "unitCode": "unit:m_s-1",
                    "qualityControl": "qc:V"
                },
                "windGust": {
                    "value": null,
                    "unitCode": "unit:m_s-1",
                    "qualityControl": "qc:Z"
                },
                "barometricPressure": {
                    "value": 101020,
                    "unitCode": "unit:Pa",
                    "qualityControl": "qc:V"
                },
                "seaLevelPressure": {
                    "value": 100830,
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
                    "value": 0,
                    "unitCode": "unit:m",
                    "qualityControl": "qc:C"
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
                    "value": 93.547604353079791,
                    "unitCode": "unit:percent",
                    "qualityControl": "qc:C"
                },
                "windChill": {
                    "value": null,
                    "unitCode": "unit:degC",
                    "qualityControl": "qc:V"
                },
                "heatIndex": {
                    "value": 24.12818744699706,
                    "unitCode": "unit:degC",
                    "qualityControl": "qc:V"
                },
                "cloudLayers": [
                    {
                        "base": {
                            "value": 120,
                            "unitCode": "unit:m"
                        },
                        "amount": "FEW"
                    },
                    {
                        "base": {
                            "value": 1220,
                            "unitCode": "unit:m"
                        },
                        "amount": "SCT"
                    },
                    {
                        "base": {
                            "value": 1460,
                            "unitCode": "unit:m"
                        },
                        "amount": "BKN"
                    }
                ]
            }
        },
        {
            "id": "https://api.weather.gov/stations/KCNK/observations/2019-08-17T07:47:00+00:00",
            "type": "Feature",
            "geometry": {
                "type": "Point",
                "coordinates": [
                    -97.650000000000006,
                    39.539999999999999
                ]
            },
            "properties": {
                "@id": "https://api.weather.gov/stations/KCNK/observations/2019-08-17T07:47:00+00:00",
                "@type": "wx:ObservationStation",
                "elevation": {
                    "value": 452,
                    "unitCode": "unit:m"
                },
                "station": "https://api.weather.gov/stations/KCNK",
                "timestamp": "2019-08-17T07:47:00+00:00",
                "rawMessage": "KCNK 170747Z AUTO 04008KT 9SM FEW004 SCT025 SCT033 24/23 A2979 RMK AO2 LTG DSNT ALQDS RAE0657B07E18 PRESRR P0000 T02390228",
                "textDescription": "Partly Cloudy",
                "icon": "https://api.weather.gov/icons/land/night/sct?size=medium",
                "presentWeather": [],
                "temperature": {
                    "value": 23.900000000000034,
                    "unitCode": "unit:degC",
                    "qualityControl": "qc:V"
                },
                "dewpoint": {
                    "value": 22.800000000000011,
                    "unitCode": "unit:degC",
                    "qualityControl": "qc:V"
                },
                "windDirection": {
                    "value": 40,
                    "unitCode": "unit:degree_(angle)",
                    "qualityControl": "qc:V"
                },
                "windSpeed": {
                    "value": 4.0999999999999996,
                    "unitCode": "unit:m_s-1",
                    "qualityControl": "qc:V"
                },
                "windGust": {
                    "value": null,
                    "unitCode": "unit:m_s-1",
                    "qualityControl": "qc:Z"
                },
                "barometricPressure": {
                    "value": 100880,
                    "unitCode": "unit:Pa",
                    "qualityControl": "qc:V"
                },
                "seaLevelPressure": {
                    "value": null,
                    "unitCode": "unit:Pa",
                    "qualityControl": "qc:Z"
                },
                "visibility": {
                    "value": 14480,
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
                    "value": 0,
                    "unitCode": "unit:m",
                    "qualityControl": "qc:C"
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
                    "value": 93.575684398805166,
                    "unitCode": "unit:percent",
                    "qualityControl": "qc:C"
                },
                "windChill": {
                    "value": null,
                    "unitCode": "unit:degC",
                    "qualityControl": "qc:V"
                },
                "heatIndex": {
                    "value": 24.788920648191038,
                    "unitCode": "unit:degC",
                    "qualityControl": "qc:V"
                },
                "cloudLayers": [
                    {
                        "base": {
                            "value": 120,
                            "unitCode": "unit:m"
                        },
                        "amount": "FEW"
                    },
                    {
                        "base": {
                            "value": 760,
                            "unitCode": "unit:m"
                        },
                        "amount": "SCT"
                    },
                    {
                        "base": {
                            "value": 1010,
                            "unitCode": "unit:m"
                        },
                        "amount": "SCT"
                    }
                ]
            }
        },
        {
            "id": "https://api.weather.gov/stations/KCNK/observations/2019-08-17T07:34:00+00:00",
            "type": "Feature",
            "geometry": {
                "type": "Point",
                "coordinates": [
                    -97.650000000000006,
                    39.539999999999999
                ]
            },
            "properties": {
                "@id": "https://api.weather.gov/stations/KCNK/observations/2019-08-17T07:34:00+00:00",
                "@type": "wx:ObservationStation",
                "elevation": {
                    "value": 452,
                    "unitCode": "unit:m"
                },
                "station": "https://api.weather.gov/stations/KCNK",
                "timestamp": "2019-08-17T07:34:00+00:00",
                "rawMessage": "KCNK 170734Z AUTO 14007KT 8SM FEW017 SCT025 BKN030 24/23 A2977 RMK AO2 LTG DSNT ALQDS RAE0657B07E18 P0000 T02440233",
                "textDescription": "Mostly Cloudy",
                "icon": "https://api.weather.gov/icons/land/night/bkn?size=medium",
                "presentWeather": [],
                "temperature": {
                    "value": 24.400000000000034,
                    "unitCode": "unit:degC",
                    "qualityControl": "qc:V"
                },
                "dewpoint": {
                    "value": 23.300000000000011,
                    "unitCode": "unit:degC",
                    "qualityControl": "qc:V"
                },
                "windDirection": {
                    "value": 140,
                    "unitCode": "unit:degree_(angle)",
                    "qualityControl": "qc:V"
                },
                "windSpeed": {
                    "value": 3.6000000000000001,
                    "unitCode": "unit:m_s-1",
                    "qualityControl": "qc:V"
                },
                "windGust": {
                    "value": null,
                    "unitCode": "unit:m_s-1",
                    "qualityControl": "qc:Z"
                },
                "barometricPressure": {
                    "value": 100810,
                    "unitCode": "unit:Pa",
                    "qualityControl": "qc:V"
                },
                "seaLevelPressure": {
                    "value": null,
                    "unitCode": "unit:Pa",
                    "qualityControl": "qc:Z"
                },
                "visibility": {
                    "value": 12870,
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
                    "value": 0,
                    "unitCode": "unit:m",
                    "qualityControl": "qc:C"
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
                    "value": 93.598946294905417,
                    "unitCode": "unit:percent",
                    "qualityControl": "qc:C"
                },
                "windChill": {
                    "value": null,
                    "unitCode": "unit:degC",
                    "qualityControl": "qc:V"
                },
                "heatIndex": {
                    "value": 25.339528042144821,
                    "unitCode": "unit:degC",
                    "qualityControl": "qc:V"
                },
                "cloudLayers": [
                    {
                        "base": {
                            "value": 520,
                            "unitCode": "unit:m"
                        },
                        "amount": "FEW"
                    },
                    {
                        "base": {
                            "value": 760,
                            "unitCode": "unit:m"
                        },
                        "amount": "SCT"
                    },
                    {
                        "base": {
                            "value": 910,
                            "unitCode": "unit:m"
                        },
                        "amount": "BKN"
                    }
                ]
            }
        },
        {
            "id": "https://api.weather.gov/stations/KCNK/observations/2019-08-17T07:16:00+00:00",
            "type": "Feature",
            "geometry": {
                "type": "Point",
                "coordinates": [
                    -97.650000000000006,
                    39.539999999999999
                ]
            },
            "properties": {
                "@id": "https://api.weather.gov/stations/KCNK/observations/2019-08-17T07:16:00+00:00",
                "@type": "wx:ObservationStation",
                "elevation": {
                    "value": 452,
                    "unitCode": "unit:m"
                },
                "station": "https://api.weather.gov/stations/KCNK",
                "timestamp": "2019-08-17T07:16:00+00:00",
                "rawMessage": "KCNK 170716Z AUTO 03009KT 9SM -RA FEW008 SCT019 OVC025 24/23 A2976 RMK AO2 LTG DSNT ALQDS RAE0657B07 P0000 T02440233",
                "textDescription": "Light Rain",
                "icon": "https://api.weather.gov/icons/land/night/rain?size=medium",
                "presentWeather": [
                    {
                        "intensity": "light",
                        "modifier": null,
                        "weather": "rain",
                        "rawString": "-RA"
                    }
                ],
                "temperature": {
                    "value": 24.400000000000034,
                    "unitCode": "unit:degC",
                    "qualityControl": "qc:V"
                },
                "dewpoint": {
                    "value": 23.300000000000011,
                    "unitCode": "unit:degC",
                    "qualityControl": "qc:V"
                },
                "windDirection": {
                    "value": 29.999999999999996,
                    "unitCode": "unit:degree_(angle)",
                    "qualityControl": "qc:V"
                },
                "windSpeed": {
                    "value": 4.5999999999999996,
                    "unitCode": "unit:m_s-1",
                    "qualityControl": "qc:V"
                },
                "windGust": {
                    "value": null,
                    "unitCode": "unit:m_s-1",
                    "qualityControl": "qc:Z"
                },
                "barometricPressure": {
                    "value": 100780,
                    "unitCode": "unit:Pa",
                    "qualityControl": "qc:V"
                },
                "seaLevelPressure": {
                    "value": null,
                    "unitCode": "unit:Pa",
                    "qualityControl": "qc:Z"
                },
                "visibility": {
                    "value": 14480,
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
                    "value": 0,
                    "unitCode": "unit:m",
                    "qualityControl": "qc:C"
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
                    "value": 93.598946294905417,
                    "unitCode": "unit:percent",
                    "qualityControl": "qc:C"
                },
                "windChill": {
                    "value": null,
                    "unitCode": "unit:degC",
                    "qualityControl": "qc:V"
                },
                "heatIndex": {
                    "value": 25.339528042144821,
                    "unitCode": "unit:degC",
                    "qualityControl": "qc:V"
                },
                "cloudLayers": [
                    {
                        "base": {
                            "value": 240,
                            "unitCode": "unit:m"
                        },
                        "amount": "FEW"
                    },
                    {
                        "base": {
                            "value": 580,
                            "unitCode": "unit:m"
                        },
                        "amount": "SCT"
                    },
                    {
                        "base": {
                            "value": 760,
                            "unitCode": "unit:m"
                        },
                        "amount": "OVC"
                    }
                ]
            }
        },
        {
            "id": "https://api.weather.gov/stations/KCNK/observations/2019-08-17T07:02:00+00:00",
            "type": "Feature",
            "geometry": {
                "type": "Point",
                "coordinates": [
                    -97.650000000000006,
                    39.539999999999999
                ]
            },
            "properties": {
                "@id": "https://api.weather.gov/stations/KCNK/observations/2019-08-17T07:02:00+00:00",
                "@type": "wx:ObservationStation",
                "elevation": {
                    "value": 452,
                    "unitCode": "unit:m"
                },
                "station": "https://api.weather.gov/stations/KCNK",
                "timestamp": "2019-08-17T07:02:00+00:00",
                "rawMessage": "KCNK 170702Z AUTO 00000KT 10SM VCTS BKN025 BKN048 BKN110 24/23 A2975 RMK AO2 LTG DSNT ALQDS RAE0657 P0000 T02440233",
                "textDescription": "Mostly Cloudy",
                "icon": "https://api.weather.gov/icons/land/night/bkn?size=medium",
                "presentWeather": [],
                "temperature": {
                    "value": 24.400000000000034,
                    "unitCode": "unit:degC",
                    "qualityControl": "qc:V"
                },
                "dewpoint": {
                    "value": 23.300000000000011,
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
                    "value": 100750,
                    "unitCode": "unit:Pa",
                    "qualityControl": "qc:V"
                },
                "seaLevelPressure": {
                    "value": null,
                    "unitCode": "unit:Pa",
                    "qualityControl": "qc:Z"
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
                    "value": 0,
                    "unitCode": "unit:m",
                    "qualityControl": "qc:C"
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
                    "value": 93.598946294905417,
                    "unitCode": "unit:percent",
                    "qualityControl": "qc:C"
                },
                "windChill": {
                    "value": null,
                    "unitCode": "unit:degC",
                    "qualityControl": "qc:V"
                },
                "heatIndex": {
                    "value": 25.339528042144821,
                    "unitCode": "unit:degC",
                    "qualityControl": "qc:V"
                },
                "cloudLayers": [
                    {
                        "base": {
                            "value": 760,
                            "unitCode": "unit:m"
                        },
                        "amount": "BKN"
                    },
                    {
                        "base": {
                            "value": 1460,
                            "unitCode": "unit:m"
                        },
                        "amount": "BKN"
                    },
                    {
                        "base": {
                            "value": 3350,
                            "unitCode": "unit:m"
                        },
                        "amount": "BKN"
                    }
                ]
            }
        },
        {
            "id": "https://api.weather.gov/stations/KCNK/observations/2019-08-17T06:55:00+00:00",
            "type": "Feature",
            "geometry": {
                "type": "Point",
                "coordinates": [
                    -97.650000000000006,
                    39.539999999999999
                ]
            },
            "properties": {
                "@id": "https://api.weather.gov/stations/KCNK/observations/2019-08-17T06:55:00+00:00",
                "@type": "wx:ObservationStation",
                "elevation": {
                    "value": 452,
                    "unitCode": "unit:m"
                },
                "station": "https://api.weather.gov/stations/KCNK",
                "timestamp": "2019-08-17T06:55:00+00:00",
                "rawMessage": "KCNK 170655Z AUTO 01004KT 10SM VCTS -RA SCT023 BKN043 BKN110 24/23 A2977 RMK AO2 LTG DSNT ALQDS RAB06 TSB10E55 SLP062 P0017 T02440233",
                "textDescription": "Light Rain",
                "icon": "https://api.weather.gov/icons/land/night/rain?size=medium",
                "presentWeather": [
                    {
                        "intensity": "light",
                        "modifier": null,
                        "weather": "rain",
                        "rawString": "-RA"
                    }
                ],
                "temperature": {
                    "value": 24.400000000000034,
                    "unitCode": "unit:degC",
                    "qualityControl": "qc:V"
                },
                "dewpoint": {
                    "value": 23.300000000000011,
                    "unitCode": "unit:degC",
                    "qualityControl": "qc:V"
                },
                "windDirection": {
                    "value": 10,
                    "unitCode": "unit:degree_(angle)",
                    "qualityControl": "qc:V"
                },
                "windSpeed": {
                    "value": 2.1000000000000001,
                    "unitCode": "unit:m_s-1",
                    "qualityControl": "qc:V"
                },
                "windGust": {
                    "value": null,
                    "unitCode": "unit:m_s-1",
                    "qualityControl": "qc:Z"
                },
                "barometricPressure": {
                    "value": 100810,
                    "unitCode": "unit:Pa",
                    "qualityControl": "qc:V"
                },
                "seaLevelPressure": {
                    "value": 100620,
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
                    "value": 0.0043,
                    "unitCode": "unit:m",
                    "qualityControl": "qc:C"
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
                    "value": 93.598946294905417,
                    "unitCode": "unit:percent",
                    "qualityControl": "qc:C"
                },
                "windChill": {
                    "value": null,
                    "unitCode": "unit:degC",
                    "qualityControl": "qc:V"
                },
                "heatIndex": {
                    "value": 25.339528042144821,
                    "unitCode": "unit:degC",
                    "qualityControl": "qc:V"
                },
                "cloudLayers": [
                    {
                        "base": {
                            "value": 700,
                            "unitCode": "unit:m"
                        },
                        "amount": "SCT"
                    },
                    {
                        "base": {
                            "value": 1310,
                            "unitCode": "unit:m"
                        },
                        "amount": "BKN"
                    },
                    {
                        "base": {
                            "value": 3350,
                            "unitCode": "unit:m"
                        },
                        "amount": "BKN"
                    }
                ]
            }
        },
        {
            "id": "https://api.weather.gov/stations/KCNK/observations/2019-08-17T06:10:00+00:00",
            "type": "Feature",
            "geometry": {
                "type": "Point",
                "coordinates": [
                    -97.650000000000006,
                    39.539999999999999
                ]
            },
            "properties": {
                "@id": "https://api.weather.gov/stations/KCNK/observations/2019-08-17T06:10:00+00:00",
                "@type": "wx:ObservationStation",
                "elevation": {
                    "value": 452,
                    "unitCode": "unit:m"
                },
                "station": "https://api.weather.gov/stations/KCNK",
                "timestamp": "2019-08-17T06:10:00+00:00",
                "rawMessage": "KCNK 170610Z AUTO VRB05KT 9SM -TSRA FEW021 BKN037 OVC100 25/23 A2979 RMK AO2 LTG DSNT ALQDS RAB06 TSB10 P0000 T02500233",
                "textDescription": "Thunderstorms and Rain",
                "icon": "https://api.weather.gov/icons/land/night/rain?size=medium",
                "presentWeather": [
                    {
                        "intensity": null,
                        "modifier": null,
                        "weather": "thunderstorms",
                        "rawString": "TS"
                    },
                    {
                        "intensity": null,
                        "modifier": null,
                        "weather": "rain",
                        "rawString": "TSRA"
                    }
                ],
                "temperature": {
                    "value": 25,
                    "unitCode": "unit:degC",
                    "qualityControl": "qc:V"
                },
                "dewpoint": {
                    "value": 23.300000000000011,
                    "unitCode": "unit:degC",
                    "qualityControl": "qc:V"
                },
                "windDirection": {
                    "value": null,
                    "unitCode": "unit:degree_(angle)",
                    "qualityControl": "qc:Z"
                },
                "windSpeed": {
                    "value": 2.6000000000000001,
                    "unitCode": "unit:m_s-1",
                    "qualityControl": "qc:V"
                },
                "windGust": {
                    "value": null,
                    "unitCode": "unit:m_s-1",
                    "qualityControl": "qc:Z"
                },
                "barometricPressure": {
                    "value": 100880,
                    "unitCode": "unit:Pa",
                    "qualityControl": "qc:V"
                },
                "seaLevelPressure": {
                    "value": null,
                    "unitCode": "unit:Pa",
                    "qualityControl": "qc:Z"
                },
                "visibility": {
                    "value": 14480,
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
                    "value": 0,
                    "unitCode": "unit:m",
                    "qualityControl": "qc:C"
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
                    "value": 90.302538889004069,
                    "unitCode": "unit:percent",
                    "qualityControl": "qc:C"
                },
                "windChill": {
                    "value": null,
                    "unitCode": "unit:degC",
                    "qualityControl": "qc:V"
                },
                "heatIndex": {
                    "value": 25.913455182101757,
                    "unitCode": "unit:degC",
                    "qualityControl": "qc:V"
                },
                "cloudLayers": [
                    {
                        "base": {
                            "value": 640,
                            "unitCode": "unit:m"
                        },
                        "amount": "FEW"
                    },
                    {
                        "base": {
                            "value": 1130,
                            "unitCode": "unit:m"
                        },
                        "amount": "BKN"
                    },
                    {
                        "base": {
                            "value": 3050,
                            "unitCode": "unit:m"
                        },
                        "amount": "OVC"
                    }
                ]
            }
        },
        {
            "id": "https://api.weather.gov/stations/KCNK/observations/2019-08-17T06:06:00+00:00",
            "type": "Feature",
            "geometry": {
                "type": "Point",
                "coordinates": [
                    -97.650000000000006,
                    39.539999999999999
                ]
            },
            "properties": {
                "@id": "https://api.weather.gov/stations/KCNK/observations/2019-08-17T06:06:00+00:00",
                "@type": "wx:ObservationStation",
                "elevation": {
                    "value": 452,
                    "unitCode": "unit:m"
                },
                "station": "https://api.weather.gov/stations/KCNK",
                "timestamp": "2019-08-17T06:06:00+00:00",
                "rawMessage": "KCNK 170606Z AUTO 36008KT 10SM -RA SCT024 BKN034 OVC100 26/23 A2979 RMK AO2 LTG DSNT ALQDS RAB06 P0000 T02560233",
                "textDescription": "Light Rain",
                "icon": "https://api.weather.gov/icons/land/night/rain?size=medium",
                "presentWeather": [
                    {
                        "intensity": "light",
                        "modifier": null,
                        "weather": "rain",
                        "rawString": "-RA"
                    }
                ],
                "temperature": {
                    "value": 25.600000000000023,
                    "unitCode": "unit:degC",
                    "qualityControl": "qc:V"
                },
                "dewpoint": {
                    "value": 23.300000000000011,
                    "unitCode": "unit:degC",
                    "qualityControl": "qc:V"
                },
                "windDirection": {
                    "value": 360,
                    "unitCode": "unit:degree_(angle)",
                    "qualityControl": "qc:V"
                },
                "windSpeed": {
                    "value": 4.0999999999999996,
                    "unitCode": "unit:m_s-1",
                    "qualityControl": "qc:V"
                },
                "windGust": {
                    "value": null,
                    "unitCode": "unit:m_s-1",
                    "qualityControl": "qc:Z"
                },
                "barometricPressure": {
                    "value": 100880,
                    "unitCode": "unit:Pa",
                    "qualityControl": "qc:V"
                },
                "seaLevelPressure": {
                    "value": null,
                    "unitCode": "unit:Pa",
                    "qualityControl": "qc:Z"
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
                    "value": 0,
                    "unitCode": "unit:m",
                    "qualityControl": "qc:C"
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
                    "value": 87.136180006788251,
                    "unitCode": "unit:percent",
                    "qualityControl": "qc:C"
                },
                "windChill": {
                    "value": null,
                    "unitCode": "unit:degC",
                    "qualityControl": "qc:V"
                },
                "heatIndex": {
                    "value": 26.490778033510537,
                    "unitCode": "unit:degC",
                    "qualityControl": "qc:V"
                },
                "cloudLayers": [
                    {
                        "base": {
                            "value": 730,
                            "unitCode": "unit:m"
                        },
                        "amount": "SCT"
                    },
                    {
                        "base": {
                            "value": 1040,
                            "unitCode": "unit:m"
                        },
                        "amount": "BKN"
                    },
                    {
                        "base": {
                            "value": 3050,
                            "unitCode": "unit:m"
                        },
                        "amount": "OVC"
                    }
                ]
            }
        },
        {
            "id": "https://api.weather.gov/stations/KCNK/observations/2019-08-17T05:55:00+00:00",
            "type": "Feature",
            "geometry": {
                "type": "Point",
                "coordinates": [
                    -97.650000000000006,
                    39.539999999999999
                ]
            },
            "properties": {
                "@id": "https://api.weather.gov/stations/KCNK/observations/2019-08-17T05:55:00+00:00",
                "@type": "wx:ObservationStation",
                "elevation": {
                    "value": 452,
                    "unitCode": "unit:m"
                },
                "station": "https://api.weather.gov/stations/KCNK",
                "timestamp": "2019-08-17T05:55:00+00:00",
                "rawMessage": "KCNK 170555Z AUTO 14007KT 9SM VCTS FEW021 BKN028 OVC060 25/23 A2979 RMK AO2 LTG DSNT ALQDS RAB11E25 TSB0457E12 SLP071 P0001 60001 T02500233 10289 20250 403000200 58012",
                "textDescription": "Cloudy",
                "icon": "https://api.weather.gov/icons/land/night/ovc?size=medium",
                "presentWeather": [],
                "temperature": {
                    "value": 25,
                    "unitCode": "unit:degC",
                    "qualityControl": "qc:V"
                },
                "dewpoint": {
                    "value": 23.300000000000011,
                    "unitCode": "unit:degC",
                    "qualityControl": "qc:V"
                },
                "windDirection": {
                    "value": 140,
                    "unitCode": "unit:degree_(angle)",
                    "qualityControl": "qc:V"
                },
                "windSpeed": {
                    "value": 3.6000000000000001,
                    "unitCode": "unit:m_s-1",
                    "qualityControl": "qc:V"
                },
                "windGust": {
                    "value": null,
                    "unitCode": "unit:m_s-1",
                    "qualityControl": "qc:Z"
                },
                "barometricPressure": {
                    "value": 100880,
                    "unitCode": "unit:Pa",
                    "qualityControl": "qc:V"
                },
                "seaLevelPressure": {
                    "value": 100710,
                    "unitCode": "unit:Pa",
                    "qualityControl": "qc:V"
                },
                "visibility": {
                    "value": 14480,
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
                    "value": 0.00029999999999999997,
                    "unitCode": "unit:m",
                    "qualityControl": "qc:C"
                },
                "precipitationLast3Hours": {
                    "value": null,
                    "unitCode": "unit:m",
                    "qualityControl": "qc:Z"
                },
                "precipitationLast6Hours": {
                    "value": 0.00029999999999999997,
                    "unitCode": "unit:m",
                    "qualityControl": "qc:C"
                },
                "relativeHumidity": {
                    "value": 90.302538889004069,
                    "unitCode": "unit:percent",
                    "qualityControl": "qc:C"
                },
                "windChill": {
                    "value": null,
                    "unitCode": "unit:degC",
                    "qualityControl": "qc:V"
                },
                "heatIndex": {
                    "value": 25.913455182101757,
                    "unitCode": "unit:degC",
                    "qualityControl": "qc:V"
                },
                "cloudLayers": [
                    {
                        "base": {
                            "value": 640,
                            "unitCode": "unit:m"
                        },
                        "amount": "FEW"
                    },
                    {
                        "base": {
                            "value": 850,
                            "unitCode": "unit:m"
                        },
                        "amount": "BKN"
                    },
                    {
                        "base": {
                            "value": 1830,
                            "unitCode": "unit:m"
                        },
                        "amount": "OVC"
                    }
                ]
            }
        },
        {
            "id": "https://api.weather.gov/stations/KCNK/observations/2019-08-17T05:18:00+00:00",
            "type": "Feature",
            "geometry": {
                "type": "Point",
                "coordinates": [
                    -97.650000000000006,
                    39.539999999999999
                ]
            },
            "properties": {
                "@id": "https://api.weather.gov/stations/KCNK/observations/2019-08-17T05:18:00+00:00",
                "@type": "wx:ObservationStation",
                "elevation": {
                    "value": 452,
                    "unitCode": "unit:m"
                },
                "station": "https://api.weather.gov/stations/KCNK",
                "timestamp": "2019-08-17T05:18:00+00:00",
                "rawMessage": "KCNK 170518Z AUTO 36011G16KT 9SM VCTS -RA BKN043 BKN060 25/23 A2978 RMK AO2 LTG DSNT ALQDS RAB11 TSB0457E12 P0001 T02500233",
                "textDescription": "Light Rain",
                "icon": "https://api.weather.gov/icons/land/night/rain?size=medium",
                "presentWeather": [
                    {
                        "intensity": "light",
                        "modifier": null,
                        "weather": "rain",
                        "rawString": "-RA"
                    }
                ],
                "temperature": {
                    "value": 25,
                    "unitCode": "unit:degC",
                    "qualityControl": "qc:V"
                },
                "dewpoint": {
                    "value": 23.300000000000011,
                    "unitCode": "unit:degC",
                    "qualityControl": "qc:V"
                },
                "windDirection": {
                    "value": 360,
                    "unitCode": "unit:degree_(angle)",
                    "qualityControl": "qc:V"
                },
                "windSpeed": {
                    "value": 5.7000000000000002,
                    "unitCode": "unit:m_s-1",
                    "qualityControl": "qc:V"
                },
                "windGust": {
                    "value": null,
                    "unitCode": "unit:m_s-1",
                    "qualityControl": "qc:Z"
                },
                "barometricPressure": {
                    "value": 100850,
                    "unitCode": "unit:Pa",
                    "qualityControl": "qc:V"
                },
                "seaLevelPressure": {
                    "value": null,
                    "unitCode": "unit:Pa",
                    "qualityControl": "qc:Z"
                },
                "visibility": {
                    "value": 14480,
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
                    "value": 0.00029999999999999997,
                    "unitCode": "unit:m",
                    "qualityControl": "qc:C"
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
                    "value": 90.302538889004069,
                    "unitCode": "unit:percent",
                    "qualityControl": "qc:C"
                },
                "windChill": {
                    "value": null,
                    "unitCode": "unit:degC",
                    "qualityControl": "qc:V"
                },
                "heatIndex": {
                    "value": 25.913455182101757,
                    "unitCode": "unit:degC",
                    "qualityControl": "qc:V"
                },
                "cloudLayers": [
                    {
                        "base": {
                            "value": 1310,
                            "unitCode": "unit:m"
                        },
                        "amount": "BKN"
                    },
                    {
                        "base": {
                            "value": 1830,
                            "unitCode": "unit:m"
                        },
                        "amount": "BKN"
                    }
                ]
            }
        },
        {
            "id": "https://api.weather.gov/stations/KCNK/observations/2019-08-17T05:03:00+00:00",
            "type": "Feature",
            "geometry": {
                "type": "Point",
                "coordinates": [
                    -97.650000000000006,
                    39.539999999999999
                ]
            },
            "properties": {
                "@id": "https://api.weather.gov/stations/KCNK/observations/2019-08-17T05:03:00+00:00",
                "@type": "wx:ObservationStation",
                "elevation": {
                    "value": 452,
                    "unitCode": "unit:m"
                },
                "station": "https://api.weather.gov/stations/KCNK",
                "timestamp": "2019-08-17T05:03:00+00:00",
                "rawMessage": "KCNK 170503Z AUTO 06003KT 10SM TS FEW035 BKN043 OVC060 26/23 A2977 RMK AO2 LTG DSNT ALQDS TSB0457 PRESFR T02560233",
                "textDescription": "Thunderstorms",
                "icon": "https://api.weather.gov/icons/land/night/ovc?size=medium",
                "presentWeather": [
                    {
                        "intensity": null,
                        "modifier": null,
                        "weather": "thunderstorms",
                        "rawString": "TS"
                    }
                ],
                "temperature": {
                    "value": 25.600000000000023,
                    "unitCode": "unit:degC",
                    "qualityControl": "qc:V"
                },
                "dewpoint": {
                    "value": 23.300000000000011,
                    "unitCode": "unit:degC",
                    "qualityControl": "qc:V"
                },
                "windDirection": {
                    "value": 59.999999999999993,
                    "unitCode": "unit:degree_(angle)",
                    "qualityControl": "qc:V"
                },
                "windSpeed": {
                    "value": 1.5,
                    "unitCode": "unit:m_s-1",
                    "qualityControl": "qc:V"
                },
                "windGust": {
                    "value": null,
                    "unitCode": "unit:m_s-1",
                    "qualityControl": "qc:Z"
                },
                "barometricPressure": {
                    "value": 100810,
                    "unitCode": "unit:Pa",
                    "qualityControl": "qc:V"
                },
                "seaLevelPressure": {
                    "value": null,
                    "unitCode": "unit:Pa",
                    "qualityControl": "qc:Z"
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
                    "value": 87.136180006788251,
                    "unitCode": "unit:percent",
                    "qualityControl": "qc:C"
                },
                "windChill": {
                    "value": null,
                    "unitCode": "unit:degC",
                    "qualityControl": "qc:V"
                },
                "heatIndex": {
                    "value": 26.490778033510537,
                    "unitCode": "unit:degC",
                    "qualityControl": "qc:V"
                },
                "cloudLayers": [
                    {
                        "base": {
                            "value": 1070,
                            "unitCode": "unit:m"
                        },
                        "amount": "FEW"
                    },
                    {
                        "base": {
                            "value": 1310,
                            "unitCode": "unit:m"
                        },
                        "amount": "BKN"
                    },
                    {
                        "base": {
                            "value": 1830,
                            "unitCode": "unit:m"
                        },
                        "amount": "OVC"
                    }
                ]
            }
        },
        {
            "id": "https://api.weather.gov/stations/KCNK/observations/2019-08-17T04:55:00+00:00",
            "type": "Feature",
            "geometry": {
                "type": "Point",
                "coordinates": [
                    -97.650000000000006,
                    39.539999999999999
                ]
            },
            "properties": {
                "@id": "https://api.weather.gov/stations/KCNK/observations/2019-08-17T04:55:00+00:00",
                "@type": "wx:ObservationStation",
                "elevation": {
                    "value": 452,
                    "unitCode": "unit:m"
                },
                "station": "https://api.weather.gov/stations/KCNK",
                "timestamp": "2019-08-17T04:55:00+00:00",
                "rawMessage": "KCNK 170455Z AUTO 05005KT 10SM VCTS BKN035 OVC043 26/23 A2979 RMK AO2 LTG DSNT ALQDS PRESFR SLP071 T02560228",
                "textDescription": "Cloudy",
                "icon": "https://api.weather.gov/icons/land/night/ovc?size=medium",
                "presentWeather": [],
                "temperature": {
                    "value": 25.600000000000023,
                    "unitCode": "unit:degC",
                    "qualityControl": "qc:V"
                },
                "dewpoint": {
                    "value": 22.800000000000011,
                    "unitCode": "unit:degC",
                    "qualityControl": "qc:V"
                },
                "windDirection": {
                    "value": 50,
                    "unitCode": "unit:degree_(angle)",
                    "qualityControl": "qc:V"
                },
                "windSpeed": {
                    "value": 2.6000000000000001,
                    "unitCode": "unit:m_s-1",
                    "qualityControl": "qc:V"
                },
                "windGust": {
                    "value": null,
                    "unitCode": "unit:m_s-1",
                    "qualityControl": "qc:Z"
                },
                "barometricPressure": {
                    "value": 100880,
                    "unitCode": "unit:Pa",
                    "qualityControl": "qc:V"
                },
                "seaLevelPressure": {
                    "value": 100710,
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
                    "value": 84.53980982614371,
                    "unitCode": "unit:percent",
                    "qualityControl": "qc:C"
                },
                "windChill": {
                    "value": null,
                    "unitCode": "unit:degC",
                    "qualityControl": "qc:V"
                },
                "heatIndex": {
                    "value": 26.422983923238235,
                    "unitCode": "unit:degC",
                    "qualityControl": "qc:V"
                },
                "cloudLayers": [
                    {
                        "base": {
                            "value": 1070,
                            "unitCode": "unit:m"
                        },
                        "amount": "BKN"
                    },
                    {
                        "base": {
                            "value": 1310,
                            "unitCode": "unit:m"
                        },
                        "amount": "OVC"
                    }
                ]
            }
        },
        {
            "id": "https://api.weather.gov/stations/KCNK/observations/2019-08-17T04:44:00+00:00",
            "type": "Feature",
            "geometry": {
                "type": "Point",
                "coordinates": [
                    -97.650000000000006,
                    39.539999999999999
                ]
            },
            "properties": {
                "@id": "https://api.weather.gov/stations/KCNK/observations/2019-08-17T04:44:00+00:00",
                "@type": "wx:ObservationStation",
                "elevation": {
                    "value": 452,
                    "unitCode": "unit:m"
                },
                "station": "https://api.weather.gov/stations/KCNK",
                "timestamp": "2019-08-17T04:44:00+00:00",
                "rawMessage": "KCNK 170444Z AUTO 06005KT 10SM VCTS BKN035 OVC043 26/23 A2982 RMK AO2 LTG DSNT N AND NE T02560233",
                "textDescription": "Cloudy",
                "icon": "https://api.weather.gov/icons/land/night/ovc?size=medium",
                "presentWeather": [],
                "temperature": {
                    "value": 25.600000000000023,
                    "unitCode": "unit:degC",
                    "qualityControl": "qc:V"
                },
                "dewpoint": {
                    "value": 23.300000000000011,
                    "unitCode": "unit:degC",
                    "qualityControl": "qc:V"
                },
                "windDirection": {
                    "value": 59.999999999999993,
                    "unitCode": "unit:degree_(angle)",
                    "qualityControl": "qc:V"
                },
                "windSpeed": {
                    "value": 2.6000000000000001,
                    "unitCode": "unit:m_s-1",
                    "qualityControl": "qc:V"
                },
                "windGust": {
                    "value": null,
                    "unitCode": "unit:m_s-1",
                    "qualityControl": "qc:Z"
                },
                "barometricPressure": {
                    "value": 100980,
                    "unitCode": "unit:Pa",
                    "qualityControl": "qc:V"
                },
                "seaLevelPressure": {
                    "value": null,
                    "unitCode": "unit:Pa",
                    "qualityControl": "qc:Z"
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
                    "value": 87.136180006788251,
                    "unitCode": "unit:percent",
                    "qualityControl": "qc:C"
                },
                "windChill": {
                    "value": null,
                    "unitCode": "unit:degC",
                    "qualityControl": "qc:V"
                },
                "heatIndex": {
                    "value": 26.490778033510537,
                    "unitCode": "unit:degC",
                    "qualityControl": "qc:V"
                },
                "cloudLayers": [
                    {
                        "base": {
                            "value": 1070,
                            "unitCode": "unit:m"
                        },
                        "amount": "BKN"
                    },
                    {
                        "base": {
                            "value": 1310,
                            "unitCode": "unit:m"
                        },
                        "amount": "OVC"
                    }
                ]
            }
        },
        {
            "id": "https://api.weather.gov/stations/KCNK/observations/2019-08-17T03:55:00+00:00",
            "type": "Feature",
            "geometry": {
                "type": "Point",
                "coordinates": [
                    -97.650000000000006,
                    39.539999999999999
                ]
            },
            "properties": {
                "@id": "https://api.weather.gov/stations/KCNK/observations/2019-08-17T03:55:00+00:00",
                "@type": "wx:ObservationStation",
                "elevation": {
                    "value": 452,
                    "unitCode": "unit:m"
                },
                "station": "https://api.weather.gov/stations/KCNK",
                "timestamp": "2019-08-17T03:55:00+00:00",
                "rawMessage": "KCNK 170355Z AUTO 06005KT 10SM OVC039 25/23 A2984 RMK AO2 SLP088 T02500233",
                "textDescription": "Cloudy",
                "icon": "https://api.weather.gov/icons/land/night/ovc?size=medium",
                "presentWeather": [],
                "temperature": {
                    "value": 25,
                    "unitCode": "unit:degC",
                    "qualityControl": "qc:V"
                },
                "dewpoint": {
                    "value": 23.300000000000011,
                    "unitCode": "unit:degC",
                    "qualityControl": "qc:V"
                },
                "windDirection": {
                    "value": 59.999999999999993,
                    "unitCode": "unit:degree_(angle)",
                    "qualityControl": "qc:V"
                },
                "windSpeed": {
                    "value": 2.6000000000000001,
                    "unitCode": "unit:m_s-1",
                    "qualityControl": "qc:V"
                },
                "windGust": {
                    "value": null,
                    "unitCode": "unit:m_s-1",
                    "qualityControl": "qc:Z"
                },
                "barometricPressure": {
                    "value": 101050,
                    "unitCode": "unit:Pa",
                    "qualityControl": "qc:V"
                },
                "seaLevelPressure": {
                    "value": 100880,
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
                    "value": 90.302538889004069,
                    "unitCode": "unit:percent",
                    "qualityControl": "qc:C"
                },
                "windChill": {
                    "value": null,
                    "unitCode": "unit:degC",
                    "qualityControl": "qc:V"
                },
                "heatIndex": {
                    "value": 25.913455182101757,
                    "unitCode": "unit:degC",
                    "qualityControl": "qc:V"
                },
                "cloudLayers": [
                    {
                        "base": {
                            "value": 1190,
                            "unitCode": "unit:m"
                        },
                        "amount": "OVC"
                    }
                ]
            }
        },
        {
            "id": "https://api.weather.gov/stations/KCNK/observations/2019-08-17T02:55:00+00:00",
            "type": "Feature",
            "geometry": {
                "type": "Point",
                "coordinates": [
                    -97.650000000000006,
                    39.539999999999999
                ]
            },
            "properties": {
                "@id": "https://api.weather.gov/stations/KCNK/observations/2019-08-17T02:55:00+00:00",
                "@type": "wx:ObservationStation",
                "elevation": {
                    "value": 452,
                    "unitCode": "unit:m"
                },
                "station": "https://api.weather.gov/stations/KCNK",
                "timestamp": "2019-08-17T02:55:00+00:00",
                "rawMessage": "KCNK 170255Z AUTO 08004KT 10SM CLR 26/23 A2983 RMK AO2 SLP086 T02560228 53004",
                "textDescription": "Clear",
                "icon": "https://api.weather.gov/icons/land/night/skc?size=medium",
                "presentWeather": [],
                "temperature": {
                    "value": 25.600000000000023,
                    "unitCode": "unit:degC",
                    "qualityControl": "qc:V"
                },
                "dewpoint": {
                    "value": 22.800000000000011,
                    "unitCode": "unit:degC",
                    "qualityControl": "qc:V"
                },
                "windDirection": {
                    "value": 80,
                    "unitCode": "unit:degree_(angle)",
                    "qualityControl": "qc:V"
                },
                "windSpeed": {
                    "value": 2.1000000000000001,
                    "unitCode": "unit:m_s-1",
                    "qualityControl": "qc:V"
                },
                "windGust": {
                    "value": null,
                    "unitCode": "unit:m_s-1",
                    "qualityControl": "qc:Z"
                },
                "barometricPressure": {
                    "value": 101020,
                    "unitCode": "unit:Pa",
                    "qualityControl": "qc:V"
                },
                "seaLevelPressure": {
                    "value": 100860,
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
                    "value": 84.53980982614371,
                    "unitCode": "unit:percent",
                    "qualityControl": "qc:C"
                },
                "windChill": {
                    "value": null,
                    "unitCode": "unit:degC",
                    "qualityControl": "qc:V"
                },
                "heatIndex": {
                    "value": 26.422983923238235,
                    "unitCode": "unit:degC",
                    "qualityControl": "qc:V"
                },
                "cloudLayers": [
                    {
                        "base": {
                            "value": null,
                            "unitCode": "unit:m"
                        },
                        "amount": "CLR"
                    }
                ]
            }
        },
        {
            "id": "https://api.weather.gov/stations/KCNK/observations/2019-08-17T01:55:00+00:00",
            "type": "Feature",
            "geometry": {
                "type": "Point",
                "coordinates": [
                    -97.650000000000006,
                    39.539999999999999
                ]
            },
            "properties": {
                "@id": "https://api.weather.gov/stations/KCNK/observations/2019-08-17T01:55:00+00:00",
                "@type": "wx:ObservationStation",
                "elevation": {
                    "value": 452,
                    "unitCode": "unit:m"
                },
                "station": "https://api.weather.gov/stations/KCNK",
                "timestamp": "2019-08-17T01:55:00+00:00",
                "rawMessage": "KCNK 170155Z AUTO 09004KT 10SM CLR 26/23 A2981 RMK AO2 SLP082 T02610228",
                "textDescription": "Clear",
                "icon": "https://api.weather.gov/icons/land/night/skc?size=medium",
                "presentWeather": [],
                "temperature": {
                    "value": 26.100000000000023,
                    "unitCode": "unit:degC",
                    "qualityControl": "qc:V"
                },
                "dewpoint": {
                    "value": 22.800000000000011,
                    "unitCode": "unit:degC",
                    "qualityControl": "qc:V"
                },
                "windDirection": {
                    "value": 90,
                    "unitCode": "unit:degree_(angle)",
                    "qualityControl": "qc:V"
                },
                "windSpeed": {
                    "value": 2.1000000000000001,
                    "unitCode": "unit:m_s-1",
                    "qualityControl": "qc:V"
                },
                "windGust": {
                    "value": null,
                    "unitCode": "unit:m_s-1",
                    "qualityControl": "qc:Z"
                },
                "barometricPressure": {
                    "value": 100950,
                    "unitCode": "unit:Pa",
                    "qualityControl": "qc:V"
                },
                "seaLevelPressure": {
                    "value": 100820,
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
                    "value": 82.072222286549945,
                    "unitCode": "unit:percent",
                    "qualityControl": "qc:C"
                },
                "windChill": {
                    "value": null,
                    "unitCode": "unit:degC",
                    "qualityControl": "qc:V"
                },
                "heatIndex": {
                    "value": 27.948341466615261,
                    "unitCode": "unit:degC",
                    "qualityControl": "qc:V"
                },
                "cloudLayers": [
                    {
                        "base": {
                            "value": null,
                            "unitCode": "unit:m"
                        },
                        "amount": "CLR"
                    }
                ]
            }
        },
        {
            "id": "https://api.weather.gov/stations/KCNK/observations/2019-08-17T00:55:00+00:00",
            "type": "Feature",
            "geometry": {
                "type": "Point",
                "coordinates": [
                    -97.650000000000006,
                    39.539999999999999
                ]
            },
            "properties": {
                "@id": "https://api.weather.gov/stations/KCNK/observations/2019-08-17T00:55:00+00:00",
                "@type": "wx:ObservationStation",
                "elevation": {
                    "value": 452,
                    "unitCode": "unit:m"
                },
                "station": "https://api.weather.gov/stations/KCNK",
                "timestamp": "2019-08-17T00:55:00+00:00",
                "rawMessage": "KCNK 170055Z AUTO 12004KT 10SM CLR 27/23 A2981 RMK AO2 SLP081 T02670228",
                "textDescription": "Clear",
                "icon": "https://api.weather.gov/icons/land/night/skc?size=medium",
                "presentWeather": [],
                "temperature": {
                    "value": 26.700000000000045,
                    "unitCode": "unit:degC",
                    "qualityControl": "qc:V"
                },
                "dewpoint": {
                    "value": 22.800000000000011,
                    "unitCode": "unit:degC",
                    "qualityControl": "qc:V"
                },
                "windDirection": {
                    "value": 119.99999999999999,
                    "unitCode": "unit:degree_(angle)",
                    "qualityControl": "qc:V"
                },
                "windSpeed": {
                    "value": 2.1000000000000001,
                    "unitCode": "unit:m_s-1",
                    "qualityControl": "qc:V"
                },
                "windGust": {
                    "value": null,
                    "unitCode": "unit:m_s-1",
                    "qualityControl": "qc:Z"
                },
                "barometricPressure": {
                    "value": 100950,
                    "unitCode": "unit:Pa",
                    "qualityControl": "qc:V"
                },
                "seaLevelPressure": {
                    "value": 100810,
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
                    "value": 79.217487032672665,
                    "unitCode": "unit:percent",
                    "qualityControl": "qc:C"
                },
                "windChill": {
                    "value": null,
                    "unitCode": "unit:degC",
                    "qualityControl": "qc:V"
                },
                "heatIndex": {
                    "value": 29.028116118588514,
                    "unitCode": "unit:degC",
                    "qualityControl": "qc:V"
                },
                "cloudLayers": [
                    {
                        "base": {
                            "value": null,
                            "unitCode": "unit:m"
                        },
                        "amount": "CLR"
                    }
                ]
            }
        },
        {
            "id": "https://api.weather.gov/stations/KCNK/observations/2019-08-16T23:55:00+00:00",
            "type": "Feature",
            "geometry": {
                "type": "Point",
                "coordinates": [
                    -97.650000000000006,
                    39.539999999999999
                ]
            },
            "properties": {
                "@id": "https://api.weather.gov/stations/KCNK/observations/2019-08-16T23:55:00+00:00",
                "@type": "wx:ObservationStation",
                "elevation": {
                    "value": 452,
                    "unitCode": "unit:m"
                },
                "station": "https://api.weather.gov/stations/KCNK",
                "timestamp": "2019-08-16T23:55:00+00:00",
                "rawMessage": "KCNK 162355Z AUTO 12006KT 10SM CLR 29/23 A2982 RMK AO2 SLP081 T02890233 10300 20267 58014",
                "textDescription": "Clear",
                "icon": "https://api.weather.gov/icons/land/day/skc?size=medium",
                "presentWeather": [],
                "temperature": {
                    "value": 28.900000000000034,
                    "unitCode": "unit:degC",
                    "qualityControl": "qc:V"
                },
                "dewpoint": {
                    "value": 23.300000000000011,
                    "unitCode": "unit:degC",
                    "qualityControl": "qc:V"
                },
                "windDirection": {
                    "value": 119.99999999999999,
                    "unitCode": "unit:degree_(angle)",
                    "qualityControl": "qc:V"
                },
                "windSpeed": {
                    "value": 3.1000000000000001,
                    "unitCode": "unit:m_s-1",
                    "qualityControl": "qc:V"
                },
                "windGust": {
                    "value": null,
                    "unitCode": "unit:m_s-1",
                    "qualityControl": "qc:Z"
                },
                "barometricPressure": {
                    "value": 100980,
                    "unitCode": "unit:Pa",
                    "qualityControl": "qc:V"
                },
                "seaLevelPressure": {
                    "value": 100810,
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
                    "value": 71.806422975852897,
                    "unitCode": "unit:percent",
                    "qualityControl": "qc:C"
                },
                "windChill": {
                    "value": null,
                    "unitCode": "unit:degC",
                    "qualityControl": "qc:V"
                },
                "heatIndex": {
                    "value": 32.840065836140752,
                    "unitCode": "unit:degC",
                    "qualityControl": "qc:V"
                },
                "cloudLayers": [
                    {
                        "base": {
                            "value": null,
                            "unitCode": "unit:m"
                        },
                        "amount": "CLR"
                    }
                ]
            }
        },
        {
            "id": "https://api.weather.gov/stations/KCNK/observations/2019-08-16T22:55:00+00:00",
            "type": "Feature",
            "geometry": {
                "type": "Point",
                "coordinates": [
                    -97.650000000000006,
                    39.539999999999999
                ]
            },
            "properties": {
                "@id": "https://api.weather.gov/stations/KCNK/observations/2019-08-16T22:55:00+00:00",
                "@type": "wx:ObservationStation",
                "elevation": {
                    "value": 452,
                    "unitCode": "unit:m"
                },
                "station": "https://api.weather.gov/stations/KCNK",
                "timestamp": "2019-08-16T22:55:00+00:00",
                "rawMessage": "KCNK 162255Z AUTO 12005KT 10SM CLR 29/22 A2984 RMK AO2 SLP087 T02940222",
                "textDescription": "Clear",
                "icon": "https://api.weather.gov/icons/land/day/skc?size=medium",
                "presentWeather": [],
                "temperature": {
                    "value": 29.400000000000034,
                    "unitCode": "unit:degC",
                    "qualityControl": "qc:V"
                },
                "dewpoint": {
                    "value": 22.200000000000045,
                    "unitCode": "unit:degC",
                    "qualityControl": "qc:V"
                },
                "windDirection": {
                    "value": 119.99999999999999,
                    "unitCode": "unit:degree_(angle)",
                    "qualityControl": "qc:V"
                },
                "windSpeed": {
                    "value": 2.6000000000000001,
                    "unitCode": "unit:m_s-1",
                    "qualityControl": "qc:V"
                },
                "windGust": {
                    "value": null,
                    "unitCode": "unit:m_s-1",
                    "qualityControl": "qc:Z"
                },
                "barometricPressure": {
                    "value": 101050,
                    "unitCode": "unit:Pa",
                    "qualityControl": "qc:V"
                },
                "seaLevelPressure": {
                    "value": 100870,
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
                    "value": 65.25908019260352,
                    "unitCode": "unit:percent",
                    "qualityControl": "qc:C"
                },
                "windChill": {
                    "value": null,
                    "unitCode": "unit:degC",
                    "qualityControl": "qc:V"
                },
                "heatIndex": {
                    "value": 32.678334751054422,
                    "unitCode": "unit:degC",
                    "qualityControl": "qc:V"
                },
                "cloudLayers": [
                    {
                        "base": {
                            "value": null,
                            "unitCode": "unit:m"
                        },
                        "amount": "CLR"
                    }
                ]
            }
        },
        {
            "id": "https://api.weather.gov/stations/KCNK/observations/2019-08-16T21:55:00+00:00",
            "type": "Feature",
            "geometry": {
                "type": "Point",
                "coordinates": [
                    -97.650000000000006,
                    39.539999999999999
                ]
            },
            "properties": {
                "@id": "https://api.weather.gov/stations/KCNK/observations/2019-08-16T21:55:00+00:00",
                "@type": "wx:ObservationStation",
                "elevation": {
                    "value": 452,
                    "unitCode": "unit:m"
                },
                "station": "https://api.weather.gov/stations/KCNK",
                "timestamp": "2019-08-16T21:55:00+00:00",
                "rawMessage": "KCNK 162155Z AUTO 16006KT 10SM FEW029 29/22 A2984 RMK AO2 SLP089 T02940222",
                "textDescription": "Clear",
                "icon": "https://api.weather.gov/icons/land/day/skc?size=medium",
                "presentWeather": [],
                "temperature": {
                    "value": 29.400000000000034,
                    "unitCode": "unit:degC",
                    "qualityControl": "qc:V"
                },
                "dewpoint": {
                    "value": 22.200000000000045,
                    "unitCode": "unit:degC",
                    "qualityControl": "qc:V"
                },
                "windDirection": {
                    "value": 160,
                    "unitCode": "unit:degree_(angle)",
                    "qualityControl": "qc:V"
                },
                "windSpeed": {
                    "value": 3.1000000000000001,
                    "unitCode": "unit:m_s-1",
                    "qualityControl": "qc:V"
                },
                "windGust": {
                    "value": null,
                    "unitCode": "unit:m_s-1",
                    "qualityControl": "qc:Z"
                },
                "barometricPressure": {
                    "value": 101050,
                    "unitCode": "unit:Pa",
                    "qualityControl": "qc:V"
                },
                "seaLevelPressure": {
                    "value": 100890,
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
                    "value": 65.25908019260352,
                    "unitCode": "unit:percent",
                    "qualityControl": "qc:C"
                },
                "windChill": {
                    "value": null,
                    "unitCode": "unit:degC",
                    "qualityControl": "qc:V"
                },
                "heatIndex": {
                    "value": 32.678334751054422,
                    "unitCode": "unit:degC",
                    "qualityControl": "qc:V"
                },
                "cloudLayers": []
            }
        },
        {
            "id": "https://api.weather.gov/stations/KCNK/observations/2019-08-16T21:47:00+00:00",
            "type": "Feature",
            "geometry": {
                "type": "Point",
                "coordinates": [
                    -97.650000000000006,
                    39.539999999999999
                ]
            },
            "properties": {
                "@id": "https://api.weather.gov/stations/KCNK/observations/2019-08-16T21:47:00+00:00",
                "@type": "wx:ObservationStation",
                "elevation": {
                    "value": 452,
                    "unitCode": "unit:m"
                },
                "station": "https://api.weather.gov/stations/KCNK",
                "timestamp": "2019-08-16T21:47:00+00:00",
                "rawMessage": "KCNK 162147Z AUTO 16006KT 10SM FEW029 29/23 A2985 RMK AO2 T02940228",
                "textDescription": "Clear",
                "icon": "https://api.weather.gov/icons/land/day/skc?size=medium",
                "presentWeather": [],
                "temperature": {
                    "value": 29.400000000000034,
                    "unitCode": "unit:degC",
                    "qualityControl": "qc:V"
                },
                "dewpoint": {
                    "value": 22.800000000000011,
                    "unitCode": "unit:degC",
                    "qualityControl": "qc:V"
                },
                "windDirection": {
                    "value": 160,
                    "unitCode": "unit:degree_(angle)",
                    "qualityControl": "qc:V"
                },
                "windSpeed": {
                    "value": 3.1000000000000001,
                    "unitCode": "unit:m_s-1",
                    "qualityControl": "qc:V"
                },
                "windGust": {
                    "value": null,
                    "unitCode": "unit:m_s-1",
                    "qualityControl": "qc:Z"
                },
                "barometricPressure": {
                    "value": 101080,
                    "unitCode": "unit:Pa",
                    "qualityControl": "qc:V"
                },
                "seaLevelPressure": {
                    "value": null,
                    "unitCode": "unit:Pa",
                    "qualityControl": "qc:Z"
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
                    "value": 67.68166402638964,
                    "unitCode": "unit:percent",
                    "qualityControl": "qc:C"
                },
                "windChill": {
                    "value": null,
                    "unitCode": "unit:degC",
                    "qualityControl": "qc:V"
                },
                "heatIndex": {
                    "value": 33.150176170372902,
                    "unitCode": "unit:degC",
                    "qualityControl": "qc:V"
                },
                "cloudLayers": []
            }
        },
        {
            "id": "https://api.weather.gov/stations/KCNK/observations/2019-08-16T21:22:00+00:00",
            "type": "Feature",
            "geometry": {
                "type": "Point",
                "coordinates": [
                    -97.650000000000006,
                    39.539999999999999
                ]
            },
            "properties": {
                "@id": "https://api.weather.gov/stations/KCNK/observations/2019-08-16T21:22:00+00:00",
                "@type": "wx:ObservationStation",
                "elevation": {
                    "value": 452,
                    "unitCode": "unit:m"
                },
                "station": "https://api.weather.gov/stations/KCNK",
                "timestamp": "2019-08-16T21:22:00+00:00",
                "rawMessage": "KCNK 162122Z AUTO 14007KT 10SM BKN027 29/23 A2985 RMK AO2 T02940228",
                "textDescription": "Mostly Cloudy",
                "icon": "https://api.weather.gov/icons/land/day/bkn?size=medium",
                "presentWeather": [],
                "temperature": {
                    "value": 29.400000000000034,
                    "unitCode": "unit:degC",
                    "qualityControl": "qc:V"
                },
                "dewpoint": {
                    "value": 22.800000000000011,
                    "unitCode": "unit:degC",
                    "qualityControl": "qc:V"
                },
                "windDirection": {
                    "value": 140,
                    "unitCode": "unit:degree_(angle)",
                    "qualityControl": "qc:V"
                },
                "windSpeed": {
                    "value": 3.6000000000000001,
                    "unitCode": "unit:m_s-1",
                    "qualityControl": "qc:V"
                },
                "windGust": {
                    "value": null,
                    "unitCode": "unit:m_s-1",
                    "qualityControl": "qc:Z"
                },
                "barometricPressure": {
                    "value": 101080,
                    "unitCode": "unit:Pa",
                    "qualityControl": "qc:V"
                },
                "seaLevelPressure": {
                    "value": null,
                    "unitCode": "unit:Pa",
                    "qualityControl": "qc:Z"
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
                    "value": 67.68166402638964,
                    "unitCode": "unit:percent",
                    "qualityControl": "qc:C"
                },
                "windChill": {
                    "value": null,
                    "unitCode": "unit:degC",
                    "qualityControl": "qc:V"
                },
                "heatIndex": {
                    "value": 33.150176170372902,
                    "unitCode": "unit:degC",
                    "qualityControl": "qc:V"
                },
                "cloudLayers": [
                    {
                        "base": {
                            "value": 820,
                            "unitCode": "unit:m"
                        },
                        "amount": "BKN"
                    }
                ]
            }
        },
        {
            "id": "https://api.weather.gov/stations/KCNK/observations/2019-08-16T20:55:00+00:00",
            "type": "Feature",
            "geometry": {
                "type": "Point",
                "coordinates": [
                    -97.650000000000006,
                    39.539999999999999
                ]
            },
            "properties": {
                "@id": "https://api.weather.gov/stations/KCNK/observations/2019-08-16T20:55:00+00:00",
                "@type": "wx:ObservationStation",
                "elevation": {
                    "value": 452,
                    "unitCode": "unit:m"
                },
                "station": "https://api.weather.gov/stations/KCNK",
                "timestamp": "2019-08-16T20:55:00+00:00",
                "rawMessage": "KCNK 162055Z AUTO 18009KT 10SM FEW024 29/23 A2986 RMK AO2 SLP096 T02890228 58002",
                "textDescription": "Mostly Clear",
                "icon": "https://api.weather.gov/icons/land/day/few?size=medium",
                "presentWeather": [],
                "temperature": {
                    "value": 28.900000000000034,
                    "unitCode": "unit:degC",
                    "qualityControl": "qc:V"
                },
                "dewpoint": {
                    "value": 22.800000000000011,
                    "unitCode": "unit:degC",
                    "qualityControl": "qc:V"
                },
                "windDirection": {
                    "value": 180,
                    "unitCode": "unit:degree_(angle)",
                    "qualityControl": "qc:V"
                },
                "windSpeed": {
                    "value": 4.5999999999999996,
                    "unitCode": "unit:m_s-1",
                    "qualityControl": "qc:V"
                },
                "windGust": {
                    "value": null,
                    "unitCode": "unit:m_s-1",
                    "qualityControl": "qc:Z"
                },
                "barometricPressure": {
                    "value": 101120,
                    "unitCode": "unit:Pa",
                    "qualityControl": "qc:V"
                },
                "seaLevelPressure": {
                    "value": 100960,
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
                    "value": 69.666828890150157,
                    "unitCode": "unit:percent",
                    "qualityControl": "qc:C"
                },
                "windChill": {
                    "value": null,
                    "unitCode": "unit:degC",
                    "qualityControl": "qc:V"
                },
                "heatIndex": {
                    "value": 32.450162760712658,
                    "unitCode": "unit:degC",
                    "qualityControl": "qc:V"
                },
                "cloudLayers": [
                    {
                        "base": {
                            "value": 730,
                            "unitCode": "unit:m"
                        },
                        "amount": "FEW"
                    }
                ]
            }
        },
        {
            "id": "https://api.weather.gov/stations/KCNK/observations/2019-08-16T20:25:00+00:00",
            "type": "Feature",
            "geometry": {
                "type": "Point",
                "coordinates": [
                    -97.650000000000006,
                    39.539999999999999
                ]
            },
            "properties": {
                "@id": "https://api.weather.gov/stations/KCNK/observations/2019-08-16T20:25:00+00:00",
                "@type": "wx:ObservationStation",
                "elevation": {
                    "value": 452,
                    "unitCode": "unit:m"
                },
                "station": "https://api.weather.gov/stations/KCNK",
                "timestamp": "2019-08-16T20:25:00+00:00",
                "rawMessage": "KCNK 162025Z AUTO 19008KT 10SM SCT024 29/23 A2987 RMK AO2 T02890228",
                "textDescription": "Partly Cloudy",
                "icon": "https://api.weather.gov/icons/land/day/sct?size=medium",
                "presentWeather": [],
                "temperature": {
                    "value": 28.900000000000034,
                    "unitCode": "unit:degC",
                    "qualityControl": "qc:V"
                },
                "dewpoint": {
                    "value": 22.800000000000011,
                    "unitCode": "unit:degC",
                    "qualityControl": "qc:V"
                },
                "windDirection": {
                    "value": 190,
                    "unitCode": "unit:degree_(angle)",
                    "qualityControl": "qc:V"
                },
                "windSpeed": {
                    "value": 4.0999999999999996,
                    "unitCode": "unit:m_s-1",
                    "qualityControl": "qc:V"
                },
                "windGust": {
                    "value": null,
                    "unitCode": "unit:m_s-1",
                    "qualityControl": "qc:Z"
                },
                "barometricPressure": {
                    "value": 101150,
                    "unitCode": "unit:Pa",
                    "qualityControl": "qc:V"
                },
                "seaLevelPressure": {
                    "value": null,
                    "unitCode": "unit:Pa",
                    "qualityControl": "qc:Z"
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
                    "value": 69.666828890150157,
                    "unitCode": "unit:percent",
                    "qualityControl": "qc:C"
                },
                "windChill": {
                    "value": null,
                    "unitCode": "unit:degC",
                    "qualityControl": "qc:V"
                },
                "heatIndex": {
                    "value": 32.450162760712658,
                    "unitCode": "unit:degC",
                    "qualityControl": "qc:V"
                },
                "cloudLayers": [
                    {
                        "base": {
                            "value": 730,
                            "unitCode": "unit:m"
                        },
                        "amount": "SCT"
                    }
                ]
            }
        },
        {
            "id": "https://api.weather.gov/stations/KCNK/observations/2019-08-16T19:55:00+00:00",
            "type": "Feature",
            "geometry": {
                "type": "Point",
                "coordinates": [
                    -97.650000000000006,
                    39.539999999999999
                ]
            },
            "properties": {
                "@id": "https://api.weather.gov/stations/KCNK/observations/2019-08-16T19:55:00+00:00",
                "@type": "wx:ObservationStation",
                "elevation": {
                    "value": 452,
                    "unitCode": "unit:m"
                },
                "station": "https://api.weather.gov/stations/KCNK",
                "timestamp": "2019-08-16T19:55:00+00:00",
                "rawMessage": "KCNK 161955Z AUTO 16014G18KT 10SM BKN027 28/23 A2988 RMK AO2 SLP103 T02830228",
                "textDescription": "Mostly Cloudy",
                "icon": "https://api.weather.gov/icons/land/day/bkn?size=medium",
                "presentWeather": [],
                "temperature": {
                    "value": 28.300000000000011,
                    "unitCode": "unit:degC",
                    "qualityControl": "qc:V"
                },
                "dewpoint": {
                    "value": 22.800000000000011,
                    "unitCode": "unit:degC",
                    "qualityControl": "qc:V"
                },
                "windDirection": {
                    "value": 160,
                    "unitCode": "unit:degree_(angle)",
                    "qualityControl": "qc:V"
                },
                "windSpeed": {
                    "value": 7.2000000000000002,
                    "unitCode": "unit:m_s-1",
                    "qualityControl": "qc:V"
                },
                "windGust": {
                    "value": null,
                    "unitCode": "unit:m_s-1",
                    "qualityControl": "qc:Z"
                },
                "barometricPressure": {
                    "value": 101190,
                    "unitCode": "unit:Pa",
                    "qualityControl": "qc:V"
                },
                "seaLevelPressure": {
                    "value": 101030,
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
                    "value": 72.136179529587267,
                    "unitCode": "unit:percent",
                    "qualityControl": "qc:C"
                },
                "windChill": {
                    "value": null,
                    "unitCode": "unit:degC",
                    "qualityControl": "qc:V"
                },
                "heatIndex": {
                    "value": 31.580223510134942,
                    "unitCode": "unit:degC",
                    "qualityControl": "qc:V"
                },
                "cloudLayers": [
                    {
                        "base": {
                            "value": 820,
                            "unitCode": "unit:m"
                        },
                        "amount": "BKN"
                    }
                ]
            }
        },
        {
            "id": "https://api.weather.gov/stations/KCNK/observations/2019-08-16T19:52:00+00:00",
            "type": "Feature",
            "geometry": {
                "type": "Point",
                "coordinates": [
                    -97.650000000000006,
                    39.539999999999999
                ]
            },
            "properties": {
                "@id": "https://api.weather.gov/stations/KCNK/observations/2019-08-16T19:52:00+00:00",
                "@type": "wx:ObservationStation",
                "elevation": {
                    "value": 452,
                    "unitCode": "unit:m"
                },
                "station": "https://api.weather.gov/stations/KCNK",
                "timestamp": "2019-08-16T19:52:00+00:00",
                "rawMessage": "KCNK 161952Z AUTO 17011G18KT 10SM BKN027 29/23 A2988 RMK AO2",
                "textDescription": "Mostly Cloudy",
                "icon": "https://api.weather.gov/icons/land/day/bkn?size=medium",
                "presentWeather": [],
                "temperature": {
                    "value": 29,
                    "unitCode": "unit:degC",
                    "qualityControl": "qc:V"
                },
                "dewpoint": {
                    "value": 23,
                    "unitCode": "unit:degC",
                    "qualityControl": "qc:V"
                },
                "windDirection": {
                    "value": 170,
                    "unitCode": "unit:degree_(angle)",
                    "qualityControl": "qc:V"
                },
                "windSpeed": {
                    "value": 5.7000000000000002,
                    "unitCode": "unit:m_s-1",
                    "qualityControl": "qc:V"
                },
                "windGust": {
                    "value": null,
                    "unitCode": "unit:m_s-1",
                    "qualityControl": "qc:Z"
                },
                "barometricPressure": {
                    "value": 101190,
                    "unitCode": "unit:Pa",
                    "qualityControl": "qc:V"
                },
                "seaLevelPressure": {
                    "value": null,
                    "unitCode": "unit:Pa",
                    "qualityControl": "qc:Z"
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
                    "value": 70.108741837117265,
                    "unitCode": "unit:percent",
                    "qualityControl": "qc:C"
                },
                "windChill": {
                    "value": null,
                    "unitCode": "unit:degC",
                    "qualityControl": "qc:V"
                },
                "heatIndex": {
                    "value": 32.747452877489536,
                    "unitCode": "unit:degC",
                    "qualityControl": "qc:V"
                },
                "cloudLayers": [
                    {
                        "base": {
                            "value": 820,
                            "unitCode": "unit:m"
                        },
                        "amount": "BKN"
                    }
                ]
            }
        },
        {
            "id": "https://api.weather.gov/stations/KCNK/observations/2019-08-16T18:55:00+00:00",
            "type": "Feature",
            "geometry": {
                "type": "Point",
                "coordinates": [
                    -97.650000000000006,
                    39.539999999999999
                ]
            },
            "properties": {
                "@id": "https://api.weather.gov/stations/KCNK/observations/2019-08-16T18:55:00+00:00",
                "@type": "wx:ObservationStation",
                "elevation": {
                    "value": 452,
                    "unitCode": "unit:m"
                },
                "station": "https://api.weather.gov/stations/KCNK",
                "timestamp": "2019-08-16T18:55:00+00:00",
                "rawMessage": "KCNK 161855Z AUTO 09005KT 10SM CLR 28/22 A2986 RMK AO2 SLP097 T02830222",
                "textDescription": "Clear",
                "icon": "https://api.weather.gov/icons/land/day/skc?size=medium",
                "presentWeather": [],
                "temperature": {
                    "value": 28.300000000000011,
                    "unitCode": "unit:degC",
                    "qualityControl": "qc:V"
                },
                "dewpoint": {
                    "value": 22.200000000000045,
                    "unitCode": "unit:degC",
                    "qualityControl": "qc:V"
                },
                "windDirection": {
                    "value": 90,
                    "unitCode": "unit:degree_(angle)",
                    "qualityControl": "qc:V"
                },
                "windSpeed": {
                    "value": 2.6000000000000001,
                    "unitCode": "unit:m_s-1",
                    "qualityControl": "qc:V"
                },
                "windGust": {
                    "value": null,
                    "unitCode": "unit:m_s-1",
                    "qualityControl": "qc:Z"
                },
                "barometricPressure": {
                    "value": 101120,
                    "unitCode": "unit:Pa",
                    "qualityControl": "qc:V"
                },
                "seaLevelPressure": {
                    "value": 100970,
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
                    "value": 69.554151666156898,
                    "unitCode": "unit:percent",
                    "qualityControl": "qc:C"
                },
                "windChill": {
                    "value": null,
                    "unitCode": "unit:degC",
                    "qualityControl": "qc:V"
                },
                "heatIndex": {
                    "value": 31.192723732388856,
                    "unitCode": "unit:degC",
                    "qualityControl": "qc:V"
                },
                "cloudLayers": [
                    {
                        "base": {
                            "value": null,
                            "unitCode": "unit:m"
                        },
                        "amount": "CLR"
                    }
                ]
            }
        },
        {
            "id": "https://api.weather.gov/stations/KCNK/observations/2019-08-16T17:55:00+00:00",
            "type": "Feature",
            "geometry": {
                "type": "Point",
                "coordinates": [
                    -97.650000000000006,
                    39.539999999999999
                ]
            },
            "properties": {
                "@id": "https://api.weather.gov/stations/KCNK/observations/2019-08-16T17:55:00+00:00",
                "@type": "wx:ObservationStation",
                "elevation": {
                    "value": 452,
                    "unitCode": "unit:m"
                },
                "station": "https://api.weather.gov/stations/KCNK",
                "timestamp": "2019-08-16T17:55:00+00:00",
                "rawMessage": "KCNK 161755Z AUTO 08011KT 10SM CLR 27/22 A2987 RMK AO2 SLP100 T02720217 10272 20200 58012",
                "textDescription": "Clear",
                "icon": "https://api.weather.gov/icons/land/day/skc?size=medium",
                "presentWeather": [],
                "temperature": {
                    "value": 27.200000000000045,
                    "unitCode": "unit:degC",
                    "qualityControl": "qc:V"
                },
                "dewpoint": {
                    "value": 21.700000000000045,
                    "unitCode": "unit:degC",
                    "qualityControl": "qc:V"
                },
                "windDirection": {
                    "value": 80,
                    "unitCode": "unit:degree_(angle)",
                    "qualityControl": "qc:V"
                },
                "windSpeed": {
                    "value": 5.7000000000000002,
                    "unitCode": "unit:m_s-1",
                    "qualityControl": "qc:V"
                },
                "windGust": {
                    "value": null,
                    "unitCode": "unit:m_s-1",
                    "qualityControl": "qc:Z"
                },
                "barometricPressure": {
                    "value": 101150,
                    "unitCode": "unit:Pa",
                    "qualityControl": "qc:V"
                },
                "seaLevelPressure": {
                    "value": 101000,
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
                    "value": 71.942244077790889,
                    "unitCode": "unit:percent",
                    "qualityControl": "qc:C"
                },
                "windChill": {
                    "value": null,
                    "unitCode": "unit:degC",
                    "qualityControl": "qc:V"
                },
                "heatIndex": {
                    "value": 29.380034782674898,
                    "unitCode": "unit:degC",
                    "qualityControl": "qc:V"
                },
                "cloudLayers": [
                    {
                        "base": {
                            "value": null,
                            "unitCode": "unit:m"
                        },
                        "amount": "CLR"
                    }
                ]
            }
        },
        {
            "id": "https://api.weather.gov/stations/KCNK/observations/2019-08-16T17:19:00+00:00",
            "type": "Feature",
            "geometry": {
                "type": "Point",
                "coordinates": [
                    -97.650000000000006,
                    39.539999999999999
                ]
            },
            "properties": {
                "@id": "https://api.weather.gov/stations/KCNK/observations/2019-08-16T17:19:00+00:00",
                "@type": "wx:ObservationStation",
                "elevation": {
                    "value": 452,
                    "unitCode": "unit:m"
                },
                "station": "https://api.weather.gov/stations/KCNK",
                "timestamp": "2019-08-16T17:19:00+00:00",
                "rawMessage": "KCNK 161719Z AUTO 11008G16KT 070V140 10SM SCT019 26/21 A2990 RMK AO2 T02560206",
                "textDescription": "Partly Cloudy",
                "icon": "https://api.weather.gov/icons/land/day/sct?size=medium",
                "presentWeather": [],
                "temperature": {
                    "value": 25.600000000000023,
                    "unitCode": "unit:degC",
                    "qualityControl": "qc:V"
                },
                "dewpoint": {
                    "value": 20.600000000000023,
                    "unitCode": "unit:degC",
                    "qualityControl": "qc:V"
                },
                "windDirection": {
                    "value": 110,
                    "unitCode": "unit:degree_(angle)",
                    "qualityControl": "qc:V"
                },
                "windSpeed": {
                    "value": 4.0999999999999996,
                    "unitCode": "unit:m_s-1",
                    "qualityControl": "qc:V"
                },
                "windGust": {
                    "value": null,
                    "unitCode": "unit:m_s-1",
                    "qualityControl": "qc:Z"
                },
                "barometricPressure": {
                    "value": 101250,
                    "unitCode": "unit:Pa",
                    "qualityControl": "qc:V"
                },
                "seaLevelPressure": {
                    "value": null,
                    "unitCode": "unit:Pa",
                    "qualityControl": "qc:Z"
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
                    "value": 73.903563829241165,
                    "unitCode": "unit:percent",
                    "qualityControl": "qc:C"
                },
                "windChill": {
                    "value": null,
                    "unitCode": "unit:degC",
                    "qualityControl": "qc:V"
                },
                "heatIndex": {
                    "value": 26.145259722207982,
                    "unitCode": "unit:degC",
                    "qualityControl": "qc:V"
                },
                "cloudLayers": [
                    {
                        "base": {
                            "value": 580,
                            "unitCode": "unit:m"
                        },
                        "amount": "SCT"
                    }
                ]
            }
        },
        {
            "id": "https://api.weather.gov/stations/KCNK/observations/2019-08-16T16:55:00+00:00",
            "type": "Feature",
            "geometry": {
                "type": "Point",
                "coordinates": [
                    -97.650000000000006,
                    39.539999999999999
                ]
            },
            "properties": {
                "@id": "https://api.weather.gov/stations/KCNK/observations/2019-08-16T16:55:00+00:00",
                "@type": "wx:ObservationStation",
                "elevation": {
                    "value": 452,
                    "unitCode": "unit:m"
                },
                "station": "https://api.weather.gov/stations/KCNK",
                "timestamp": "2019-08-16T16:55:00+00:00",
                "rawMessage": "KCNK 161655Z AUTO 12009KT 10SM OVC019 26/21 A2993 RMK AO2 PRESFR SLP120 T02560211",
                "textDescription": "Cloudy",
                "icon": "https://api.weather.gov/icons/land/day/ovc?size=medium",
                "presentWeather": [],
                "temperature": {
                    "value": 25.600000000000023,
                    "unitCode": "unit:degC",
                    "qualityControl": "qc:V"
                },
                "dewpoint": {
                    "value": 21.100000000000023,
                    "unitCode": "unit:degC",
                    "qualityControl": "qc:V"
                },
                "windDirection": {
                    "value": 119.99999999999999,
                    "unitCode": "unit:degree_(angle)",
                    "qualityControl": "qc:V"
                },
                "windSpeed": {
                    "value": 4.5999999999999996,
                    "unitCode": "unit:m_s-1",
                    "qualityControl": "qc:V"
                },
                "windGust": {
                    "value": null,
                    "unitCode": "unit:m_s-1",
                    "qualityControl": "qc:Z"
                },
                "barometricPressure": {
                    "value": 101360,
                    "unitCode": "unit:Pa",
                    "qualityControl": "qc:V"
                },
                "seaLevelPressure": {
                    "value": 101200,
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
                    "value": 76.211865221330697,
                    "unitCode": "unit:percent",
                    "qualityControl": "qc:C"
                },
                "windChill": {
                    "value": null,
                    "unitCode": "unit:degC",
                    "qualityControl": "qc:V"
                },
                "heatIndex": {
                    "value": 26.205532036334716,
                    "unitCode": "unit:degC",
                    "qualityControl": "qc:V"
                },
                "cloudLayers": [
                    {
                        "base": {
                            "value": 580,
                            "unitCode": "unit:m"
                        },
                        "amount": "OVC"
                    }
                ]
            }
        },
        {
            "id": "https://api.weather.gov/stations/KCNK/observations/2019-08-16T16:24:00+00:00",
            "type": "Feature",
            "geometry": {
                "type": "Point",
                "coordinates": [
                    -97.650000000000006,
                    39.539999999999999
                ]
            },
            "properties": {
                "@id": "https://api.weather.gov/stations/KCNK/observations/2019-08-16T16:24:00+00:00",
                "@type": "wx:ObservationStation",
                "elevation": {
                    "value": 452,
                    "unitCode": "unit:m"
                },
                "station": "https://api.weather.gov/stations/KCNK",
                "timestamp": "2019-08-16T16:24:00+00:00",
                "rawMessage": "KCNK 161624Z AUTO 09006KT 10SM BKN016 25/21 A2996 RMK AO2 T02500206",
                "textDescription": "Mostly Cloudy",
                "icon": "https://api.weather.gov/icons/land/day/bkn?size=medium",
                "presentWeather": [],
                "temperature": {
                    "value": 25,
                    "unitCode": "unit:degC",
                    "qualityControl": "qc:V"
                },
                "dewpoint": {
                    "value": 20.600000000000023,
                    "unitCode": "unit:degC",
                    "qualityControl": "qc:V"
                },
                "windDirection": {
                    "value": 90,
                    "unitCode": "unit:degree_(angle)",
                    "qualityControl": "qc:V"
                },
                "windSpeed": {
                    "value": 3.1000000000000001,
                    "unitCode": "unit:m_s-1",
                    "qualityControl": "qc:V"
                },
                "windGust": {
                    "value": null,
                    "unitCode": "unit:m_s-1",
                    "qualityControl": "qc:Z"
                },
                "barometricPressure": {
                    "value": 101460,
                    "unitCode": "unit:Pa",
                    "qualityControl": "qc:V"
                },
                "seaLevelPressure": {
                    "value": null,
                    "unitCode": "unit:Pa",
                    "qualityControl": "qc:Z"
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
                    "value": 76.589075240688075,
                    "unitCode": "unit:percent",
                    "qualityControl": "qc:C"
                },
                "windChill": {
                    "value": null,
                    "unitCode": "unit:degC",
                    "qualityControl": "qc:V"
                },
                "heatIndex": {
                    "value": 25.55538140906242,
                    "unitCode": "unit:degC",
                    "qualityControl": "qc:V"
                },
                "cloudLayers": [
                    {
                        "base": {
                            "value": 490,
                            "unitCode": "unit:m"
                        },
                        "amount": "BKN"
                    }
                ]
            }
        },
        {
            "id": "https://api.weather.gov/stations/KCNK/observations/2019-08-16T16:12:00+00:00",
            "type": "Feature",
            "geometry": {
                "type": "Point",
                "coordinates": [
                    -97.650000000000006,
                    39.539999999999999
                ]
            },
            "properties": {
                "@id": "https://api.weather.gov/stations/KCNK/observations/2019-08-16T16:12:00+00:00",
                "@type": "wx:ObservationStation",
                "elevation": {
                    "value": 452,
                    "unitCode": "unit:m"
                },
                "station": "https://api.weather.gov/stations/KCNK",
                "timestamp": "2019-08-16T16:12:00+00:00",
                "rawMessage": "KCNK 161612Z AUTO 13009KT 10SM SCT009 BKN014 24/21 A2995 RMK AO2 T02390206",
                "textDescription": "Mostly Cloudy",
                "icon": "https://api.weather.gov/icons/land/day/bkn?size=medium",
                "presentWeather": [],
                "temperature": {
                    "value": 23.900000000000034,
                    "unitCode": "unit:degC",
                    "qualityControl": "qc:V"
                },
                "dewpoint": {
                    "value": 20.600000000000023,
                    "unitCode": "unit:degC",
                    "qualityControl": "qc:V"
                },
                "windDirection": {
                    "value": 130,
                    "unitCode": "unit:degree_(angle)",
                    "qualityControl": "qc:V"
                },
                "windSpeed": {
                    "value": 4.5999999999999996,
                    "unitCode": "unit:m_s-1",
                    "qualityControl": "qc:V"
                },
                "windGust": {
                    "value": null,
                    "unitCode": "unit:m_s-1",
                    "qualityControl": "qc:Z"
                },
                "barometricPressure": {
                    "value": 101420,
                    "unitCode": "unit:Pa",
                    "qualityControl": "qc:V"
                },
                "seaLevelPressure": {
                    "value": null,
                    "unitCode": "unit:Pa",
                    "qualityControl": "qc:Z"
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
                    "value": 81.802603756193932,
                    "unitCode": "unit:percent",
                    "qualityControl": "qc:C"
                },
                "windChill": {
                    "value": null,
                    "unitCode": "unit:degC",
                    "qualityControl": "qc:V"
                },
                "heatIndex": {
                    "value": 24.481512431411772,
                    "unitCode": "unit:degC",
                    "qualityControl": "qc:V"
                },
                "cloudLayers": [
                    {
                        "base": {
                            "value": 270,
                            "unitCode": "unit:m"
                        },
                        "amount": "SCT"
                    },
                    {
                        "base": {
                            "value": 430,
                            "unitCode": "unit:m"
                        },
                        "amount": "BKN"
                    }
                ]
            }
        },
        {
            "id": "https://api.weather.gov/stations/KCNK/observations/2019-08-16T15:55:00+00:00",
            "type": "Feature",
            "geometry": {
                "type": "Point",
                "coordinates": [
                    -97.650000000000006,
                    39.539999999999999
                ]
            },
            "properties": {
                "@id": "https://api.weather.gov/stations/KCNK/observations/2019-08-16T15:55:00+00:00",
                "@type": "wx:ObservationStation",
                "elevation": {
                    "value": 452,
                    "unitCode": "unit:m"
                },
                "station": "https://api.weather.gov/stations/KCNK",
                "timestamp": "2019-08-16T15:55:00+00:00",
                "rawMessage": "KCNK 161555Z AUTO 09010KT 10SM OVC008 23/21 A2991 RMK AO2 CIG 007V013 PRESRR SLP116 T02330206",
                "textDescription": "Cloudy",
                "icon": "https://api.weather.gov/icons/land/day/ovc?size=medium",
                "presentWeather": [],
                "temperature": {
                    "value": 23.300000000000011,
                    "unitCode": "unit:degC",
                    "qualityControl": "qc:V"
                },
                "dewpoint": {
                    "value": 20.600000000000023,
                    "unitCode": "unit:degC",
                    "qualityControl": "qc:V"
                },
                "windDirection": {
                    "value": 90,
                    "unitCode": "unit:degree_(angle)",
                    "qualityControl": "qc:V"
                },
                "windSpeed": {
                    "value": 5.0999999999999996,
                    "unitCode": "unit:m_s-1",
                    "qualityControl": "qc:V"
                },
                "windGust": {
                    "value": null,
                    "unitCode": "unit:m_s-1",
                    "qualityControl": "qc:Z"
                },
                "barometricPressure": {
                    "value": 101290,
                    "unitCode": "unit:Pa",
                    "qualityControl": "qc:V"
                },
                "seaLevelPressure": {
                    "value": 101160,
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
                    "value": 84.81386701079137,
                    "unitCode": "unit:percent",
                    "qualityControl": "qc:C"
                },
                "windChill": {
                    "value": null,
                    "unitCode": "unit:degC",
                    "qualityControl": "qc:V"
                },
                "heatIndex": {
                    "value": 23.900139860837328,
                    "unitCode": "unit:degC",
                    "qualityControl": "qc:V"
                },
                "cloudLayers": [
                    {
                        "base": {
                            "value": 240,
                            "unitCode": "unit:m"
                        },
                        "amount": "OVC"
                    }
                ]
            }
        },
        {
            "id": "https://api.weather.gov/stations/KCNK/observations/2019-08-16T14:55:00+00:00",
            "type": "Feature",
            "geometry": {
                "type": "Point",
                "coordinates": [
                    -97.650000000000006,
                    39.539999999999999
                ]
            },
            "properties": {
                "@id": "https://api.weather.gov/stations/KCNK/observations/2019-08-16T14:55:00+00:00",
                "@type": "wx:ObservationStation",
                "elevation": {
                    "value": 452,
                    "unitCode": "unit:m"
                },
                "station": "https://api.weather.gov/stations/KCNK",
                "timestamp": "2019-08-16T14:55:00+00:00",
                "rawMessage": "KCNK 161455Z AUTO 07011G21KT 10SM BKN007 OVC013 22/19 A2991 RMK AO2 CIG 005V010 SLP114 T02170194 58017",
                "textDescription": "Cloudy",
                "icon": "https://api.weather.gov/icons/land/day/ovc?size=medium",
                "presentWeather": [],
                "temperature": {
                    "value": 21.700000000000045,
                    "unitCode": "unit:degC",
                    "qualityControl": "qc:V"
                },
                "dewpoint": {
                    "value": 19.400000000000034,
                    "unitCode": "unit:degC",
                    "qualityControl": "qc:V"
                },
                "windDirection": {
                    "value": 70,
                    "unitCode": "unit:degree_(angle)",
                    "qualityControl": "qc:V"
                },
                "windSpeed": {
                    "value": 5.7000000000000002,
                    "unitCode": "unit:m_s-1",
                    "qualityControl": "qc:V"
                },
                "windGust": {
                    "value": null,
                    "unitCode": "unit:m_s-1",
                    "qualityControl": "qc:Z"
                },
                "barometricPressure": {
                    "value": 101290,
                    "unitCode": "unit:Pa",
                    "qualityControl": "qc:V"
                },
                "seaLevelPressure": {
                    "value": 101140,
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
                    "value": 86.779227810895748,
                    "unitCode": "unit:percent",
                    "qualityControl": "qc:C"
                },
                "windChill": {
                    "value": null,
                    "unitCode": "unit:degC",
                    "qualityControl": "qc:V"
                },
                "heatIndex": {
                    "value": 22.191457615062291,
                    "unitCode": "unit:degC",
                    "qualityControl": "qc:V"
                },
                "cloudLayers": [
                    {
                        "base": {
                            "value": 210,
                            "unitCode": "unit:m"
                        },
                        "amount": "BKN"
                    },
                    {
                        "base": {
                            "value": 400,
                            "unitCode": "unit:m"
                        },
                        "amount": "OVC"
                    }
                ]
            }
        },
        {
            "id": "https://api.weather.gov/stations/KCNK/observations/2019-08-16T14:47:00+00:00",
            "type": "Feature",
            "geometry": {
                "type": "Point",
                "coordinates": [
                    -97.650000000000006,
                    39.539999999999999
                ]
            },
            "properties": {
                "@id": "https://api.weather.gov/stations/KCNK/observations/2019-08-16T14:47:00+00:00",
                "@type": "wx:ObservationStation",
                "elevation": {
                    "value": 452,
                    "unitCode": "unit:m"
                },
                "station": "https://api.weather.gov/stations/KCNK",
                "timestamp": "2019-08-16T14:47:00+00:00",
                "rawMessage": "KCNK 161447Z AUTO 06014G21KT 10SM BKN007 OVC013 22/19 A2991 RMK AO2 CIG 005V010 PRESFR T02170194",
                "textDescription": "Cloudy",
                "icon": "https://api.weather.gov/icons/land/day/ovc?size=medium",
                "presentWeather": [],
                "temperature": {
                    "value": 21.700000000000045,
                    "unitCode": "unit:degC",
                    "qualityControl": "qc:V"
                },
                "dewpoint": {
                    "value": 19.400000000000034,
                    "unitCode": "unit:degC",
                    "qualityControl": "qc:V"
                },
                "windDirection": {
                    "value": 59.999999999999993,
                    "unitCode": "unit:degree_(angle)",
                    "qualityControl": "qc:V"
                },
                "windSpeed": {
                    "value": 7.2000000000000002,
                    "unitCode": "unit:m_s-1",
                    "qualityControl": "qc:V"
                },
                "windGust": {
                    "value": null,
                    "unitCode": "unit:m_s-1",
                    "qualityControl": "qc:Z"
                },
                "barometricPressure": {
                    "value": 101290,
                    "unitCode": "unit:Pa",
                    "qualityControl": "qc:V"
                },
                "seaLevelPressure": {
                    "value": null,
                    "unitCode": "unit:Pa",
                    "qualityControl": "qc:Z"
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
                    "value": 86.779227810895748,
                    "unitCode": "unit:percent",
                    "qualityControl": "qc:C"
                },
                "windChill": {
                    "value": null,
                    "unitCode": "unit:degC",
                    "qualityControl": "qc:V"
                },
                "heatIndex": {
                    "value": 22.191457615062291,
                    "unitCode": "unit:degC",
                    "qualityControl": "qc:V"
                },
                "cloudLayers": [
                    {
                        "base": {
                            "value": 210,
                            "unitCode": "unit:m"
                        },
                        "amount": "BKN"
                    },
                    {
                        "base": {
                            "value": 400,
                            "unitCode": "unit:m"
                        },
                        "amount": "OVC"
                    }
                ]
            }
        },
        {
            "id": "https://api.weather.gov/stations/KCNK/observations/2019-08-16T14:10:00+00:00",
            "type": "Feature",
            "geometry": {
                "type": "Point",
                "coordinates": [
                    -97.650000000000006,
                    39.539999999999999
                ]
            },
            "properties": {
                "@id": "https://api.weather.gov/stations/KCNK/observations/2019-08-16T14:10:00+00:00",
                "@type": "wx:ObservationStation",
                "elevation": {
                    "value": 452,
                    "unitCode": "unit:m"
                },
                "station": "https://api.weather.gov/stations/KCNK",
                "timestamp": "2019-08-16T14:10:00+00:00",
                "rawMessage": "KCNK 161410Z AUTO 35006KT 10SM OVC005 21/19 A2998 RMK AO2 T02110194",
                "textDescription": "Cloudy",
                "icon": "https://api.weather.gov/icons/land/day/ovc?size=medium",
                "presentWeather": [],
                "temperature": {
                    "value": 21.100000000000023,
                    "unitCode": "unit:degC",
                    "qualityControl": "qc:V"
                },
                "dewpoint": {
                    "value": 19.400000000000034,
                    "unitCode": "unit:degC",
                    "qualityControl": "qc:V"
                },
                "windDirection": {
                    "value": 350,
                    "unitCode": "unit:degree_(angle)",
                    "qualityControl": "qc:V"
                },
                "windSpeed": {
                    "value": 3.1000000000000001,
                    "unitCode": "unit:m_s-1",
                    "qualityControl": "qc:V"
                },
                "windGust": {
                    "value": null,
                    "unitCode": "unit:m_s-1",
                    "qualityControl": "qc:Z"
                },
                "barometricPressure": {
                    "value": 101520,
                    "unitCode": "unit:Pa",
                    "qualityControl": "qc:V"
                },
                "seaLevelPressure": {
                    "value": null,
                    "unitCode": "unit:Pa",
                    "qualityControl": "qc:Z"
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
                    "value": 90.028047779447178,
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
                            "value": 150,
                            "unitCode": "unit:m"
                        },
                        "amount": "OVC"
                    }
                ]
            }
        },
        {
            "id": "https://api.weather.gov/stations/KCNK/observations/2019-08-16T13:55:00+00:00",
            "type": "Feature",
            "geometry": {
                "type": "Point",
                "coordinates": [
                    -97.650000000000006,
                    39.539999999999999
                ]
            },
            "properties": {
                "@id": "https://api.weather.gov/stations/KCNK/observations/2019-08-16T13:55:00+00:00",
                "@type": "wx:ObservationStation",
                "elevation": {
                    "value": 452,
                    "unitCode": "unit:m"
                },
                "station": "https://api.weather.gov/stations/KCNK",
                "timestamp": "2019-08-16T13:55:00+00:00",
                "rawMessage": "KCNK 161355Z AUTO 34008KT 10SM OVC004 21/19 A2998 RMK AO2 SLP140 T02060194",
                "textDescription": "Cloudy",
                "icon": "https://api.weather.gov/icons/land/day/ovc?size=medium",
                "presentWeather": [],
                "temperature": {
                    "value": 20.600000000000023,
                    "unitCode": "unit:degC",
                    "qualityControl": "qc:V"
                },
                "dewpoint": {
                    "value": 19.400000000000034,
                    "unitCode": "unit:degC",
                    "qualityControl": "qc:V"
                },
                "windDirection": {
                    "value": 340,
                    "unitCode": "unit:degree_(angle)",
                    "qualityControl": "qc:V"
                },
                "windSpeed": {
                    "value": 4.0999999999999996,
                    "unitCode": "unit:m_s-1",
                    "qualityControl": "qc:V"
                },
                "windGust": {
                    "value": null,
                    "unitCode": "unit:m_s-1",
                    "qualityControl": "qc:Z"
                },
                "barometricPressure": {
                    "value": 101520,
                    "unitCode": "unit:Pa",
                    "qualityControl": "qc:V"
                },
                "seaLevelPressure": {
                    "value": 101400,
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
                    "value": 92.839980753296231,
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
                            "value": 120,
                            "unitCode": "unit:m"
                        },
                        "amount": "OVC"
                    }
                ]
            }
        },
        {
            "id": "https://api.weather.gov/stations/KCNK/observations/2019-08-16T12:55:00+00:00",
            "type": "Feature",
            "geometry": {
                "type": "Point",
                "coordinates": [
                    -97.650000000000006,
                    39.539999999999999
                ]
            },
            "properties": {
                "@id": "https://api.weather.gov/stations/KCNK/observations/2019-08-16T12:55:00+00:00",
                "@type": "wx:ObservationStation",
                "elevation": {
                    "value": 452,
                    "unitCode": "unit:m"
                },
                "station": "https://api.weather.gov/stations/KCNK",
                "timestamp": "2019-08-16T12:55:00+00:00",
                "rawMessage": "KCNK 161255Z AUTO 04011KT 3SM BR OVC003 20/19 A2993 RMK AO2 PRESFR SLP122 T02000194",
                "textDescription": "Fog/Mist",
                "icon": "https://api.weather.gov/icons/land/day/fog?size=medium",
                "presentWeather": [
                    {
                        "intensity": null,
                        "modifier": null,
                        "weather": "fog_mist",
                        "rawString": "BR"
                    }
                ],
                "temperature": {
                    "value": 20,
                    "unitCode": "unit:degC",
                    "qualityControl": "qc:V"
                },
                "dewpoint": {
                    "value": 19.400000000000034,
                    "unitCode": "unit:degC",
                    "qualityControl": "qc:V"
                },
                "windDirection": {
                    "value": 40,
                    "unitCode": "unit:degree_(angle)",
                    "qualityControl": "qc:V"
                },
                "windSpeed": {
                    "value": 5.7000000000000002,
                    "unitCode": "unit:m_s-1",
                    "qualityControl": "qc:V"
                },
                "windGust": {
                    "value": null,
                    "unitCode": "unit:m_s-1",
                    "qualityControl": "qc:Z"
                },
                "barometricPressure": {
                    "value": 101360,
                    "unitCode": "unit:Pa",
                    "qualityControl": "qc:V"
                },
                "seaLevelPressure": {
                    "value": 101220,
                    "unitCode": "unit:Pa",
                    "qualityControl": "qc:V"
                },
                "visibility": {
                    "value": 4830,
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
                    "value": 96.345341919248824,
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
                            "value": 90,
                            "unitCode": "unit:m"
                        },
                        "amount": "OVC"
                    }
                ]
            }
        },
        {
            "id": "https://api.weather.gov/stations/KCNK/observations/2019-08-16T12:17:00+00:00",
            "type": "Feature",
            "geometry": {
                "type": "Point",
                "coordinates": [
                    -97.650000000000006,
                    39.539999999999999
                ]
            },
            "properties": {
                "@id": "https://api.weather.gov/stations/KCNK/observations/2019-08-16T12:17:00+00:00",
                "@type": "wx:ObservationStation",
                "elevation": {
                    "value": 452,
                    "unitCode": "unit:m"
                },
                "station": "https://api.weather.gov/stations/KCNK",
                "timestamp": "2019-08-16T12:17:00+00:00",
                "rawMessage": "KCNK 161217Z AUTO 36008KT 7SM BKN003 BKN022 20/19 A2997 RMK AO2 T02000194",
                "textDescription": "Mostly Cloudy",
                "icon": "https://api.weather.gov/icons/land/day/bkn?size=medium",
                "presentWeather": [],
                "temperature": {
                    "value": 20,
                    "unitCode": "unit:degC",
                    "qualityControl": "qc:V"
                },
                "dewpoint": {
                    "value": 19.400000000000034,
                    "unitCode": "unit:degC",
                    "qualityControl": "qc:V"
                },
                "windDirection": {
                    "value": 360,
                    "unitCode": "unit:degree_(angle)",
                    "qualityControl": "qc:V"
                },
                "windSpeed": {
                    "value": 4.0999999999999996,
                    "unitCode": "unit:m_s-1",
                    "qualityControl": "qc:V"
                },
                "windGust": {
                    "value": null,
                    "unitCode": "unit:m_s-1",
                    "qualityControl": "qc:Z"
                },
                "barometricPressure": {
                    "value": 101490,
                    "unitCode": "unit:Pa",
                    "qualityControl": "qc:V"
                },
                "seaLevelPressure": {
                    "value": null,
                    "unitCode": "unit:Pa",
                    "qualityControl": "qc:Z"
                },
                "visibility": {
                    "value": 11270,
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
                    "value": 96.345341919248824,
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
                            "value": 90,
                            "unitCode": "unit:m"
                        },
                        "amount": "BKN"
                    },
                    {
                        "base": {
                            "value": 670,
                            "unitCode": "unit:m"
                        },
                        "amount": "BKN"
                    }
                ]
            }
        },
        {
            "id": "https://api.weather.gov/stations/KCNK/observations/2019-08-16T12:03:00+00:00",
            "type": "Feature",
            "geometry": {
                "type": "Point",
                "coordinates": [
                    -97.650000000000006,
                    39.539999999999999
                ]
            },
            "properties": {
                "@id": "https://api.weather.gov/stations/KCNK/observations/2019-08-16T12:03:00+00:00",
                "@type": "wx:ObservationStation",
                "elevation": {
                    "value": 452,
                    "unitCode": "unit:m"
                },
                "station": "https://api.weather.gov/stations/KCNK",
                "timestamp": "2019-08-16T12:03:00+00:00",
                "rawMessage": "KCNK 161203Z AUTO 34008KT 9SM FEW004 BKN023 20/19 A2997 RMK AO2 T02000189",
                "textDescription": "Mostly Cloudy",
                "icon": "https://api.weather.gov/icons/land/day/bkn?size=medium",
                "presentWeather": [],
                "temperature": {
                    "value": 20,
                    "unitCode": "unit:degC",
                    "qualityControl": "qc:V"
                },
                "dewpoint": {
                    "value": 18.900000000000034,
                    "unitCode": "unit:degC",
                    "qualityControl": "qc:V"
                },
                "windDirection": {
                    "value": 340,
                    "unitCode": "unit:degree_(angle)",
                    "qualityControl": "qc:V"
                },
                "windSpeed": {
                    "value": 4.0999999999999996,
                    "unitCode": "unit:m_s-1",
                    "qualityControl": "qc:V"
                },
                "windGust": {
                    "value": null,
                    "unitCode": "unit:m_s-1",
                    "qualityControl": "qc:Z"
                },
                "barometricPressure": {
                    "value": 101490,
                    "unitCode": "unit:Pa",
                    "qualityControl": "qc:V"
                },
                "seaLevelPressure": {
                    "value": null,
                    "unitCode": "unit:Pa",
                    "qualityControl": "qc:Z"
                },
                "visibility": {
                    "value": 14480,
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
                    "value": 93.389863240724722,
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
                            "value": 120,
                            "unitCode": "unit:m"
                        },
                        "amount": "FEW"
                    },
                    {
                        "base": {
                            "value": 700,
                            "unitCode": "unit:m"
                        },
                        "amount": "BKN"
                    }
                ]
            }
        },
        {
            "id": "https://api.weather.gov/stations/KCNK/observations/2019-08-16T11:55:00+00:00",
            "type": "Feature",
            "geometry": {
                "type": "Point",
                "coordinates": [
                    -97.650000000000006,
                    39.539999999999999
                ]
            },
            "properties": {
                "@id": "https://api.weather.gov/stations/KCNK/observations/2019-08-16T11:55:00+00:00",
                "@type": "wx:ObservationStation",
                "elevation": {
                    "value": 452,
                    "unitCode": "unit:m"
                },
                "station": "https://api.weather.gov/stations/KCNK",
                "timestamp": "2019-08-16T11:55:00+00:00",
                "rawMessage": "KCNK 161155Z AUTO 33007KT 7SM FEW025 20/19 A2996 RMK AO2 PRESRR SLP130 T02000189 10211 20200 53027",
                "textDescription": "Mostly Clear",
                "icon": "https://api.weather.gov/icons/land/day/few?size=medium",
                "presentWeather": [],
                "temperature": {
                    "value": 20,
                    "unitCode": "unit:degC",
                    "qualityControl": "qc:V"
                },
                "dewpoint": {
                    "value": 18.900000000000034,
                    "unitCode": "unit:degC",
                    "qualityControl": "qc:V"
                },
                "windDirection": {
                    "value": 330,
                    "unitCode": "unit:degree_(angle)",
                    "qualityControl": "qc:V"
                },
                "windSpeed": {
                    "value": 3.6000000000000001,
                    "unitCode": "unit:m_s-1",
                    "qualityControl": "qc:V"
                },
                "windGust": {
                    "value": null,
                    "unitCode": "unit:m_s-1",
                    "qualityControl": "qc:Z"
                },
                "barometricPressure": {
                    "value": 101460,
                    "unitCode": "unit:Pa",
                    "qualityControl": "qc:V"
                },
                "seaLevelPressure": {
                    "value": 101300,
                    "unitCode": "unit:Pa",
                    "qualityControl": "qc:V"
                },
                "visibility": {
                    "value": 11270,
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
                    "value": 93.389863240724722,
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
                            "value": 760,
                            "unitCode": "unit:m"
                        },
                        "amount": "FEW"
                    }
                ]
            }
        },
        {
            "id": "https://api.weather.gov/stations/KCNK/observations/2019-08-16T11:36:00+00:00",
            "type": "Feature",
            "geometry": {
                "type": "Point",
                "coordinates": [
                    -97.650000000000006,
                    39.539999999999999
                ]
            },
            "properties": {
                "@id": "https://api.weather.gov/stations/KCNK/observations/2019-08-16T11:36:00+00:00",
                "@type": "wx:ObservationStation",
                "elevation": {
                    "value": 452,
                    "unitCode": "unit:m"
                },
                "station": "https://api.weather.gov/stations/KCNK",
                "timestamp": "2019-08-16T11:36:00+00:00",
                "rawMessage": "KCNK 161136Z AUTO 04005KT 8SM SCT003 SCT007 20/19 A2991 RMK AO2 T02000189",
                "textDescription": "Partly Cloudy",
                "icon": "https://api.weather.gov/icons/land/night/sct?size=medium",
                "presentWeather": [],
                "temperature": {
                    "value": 20,
                    "unitCode": "unit:degC",
                    "qualityControl": "qc:V"
                },
                "dewpoint": {
                    "value": 18.900000000000034,
                    "unitCode": "unit:degC",
                    "qualityControl": "qc:V"
                },
                "windDirection": {
                    "value": 40,
                    "unitCode": "unit:degree_(angle)",
                    "qualityControl": "qc:V"
                },
                "windSpeed": {
                    "value": 2.6000000000000001,
                    "unitCode": "unit:m_s-1",
                    "qualityControl": "qc:V"
                },
                "windGust": {
                    "value": null,
                    "unitCode": "unit:m_s-1",
                    "qualityControl": "qc:Z"
                },
                "barometricPressure": {
                    "value": 101290,
                    "unitCode": "unit:Pa",
                    "qualityControl": "qc:V"
                },
                "seaLevelPressure": {
                    "value": null,
                    "unitCode": "unit:Pa",
                    "qualityControl": "qc:Z"
                },
                "visibility": {
                    "value": 12870,
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
                    "value": 93.389863240724722,
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
                            "value": 90,
                            "unitCode": "unit:m"
                        },
                        "amount": "SCT"
                    },
                    {
                        "base": {
                            "value": 210,
                            "unitCode": "unit:m"
                        },
                        "amount": "SCT"
                    }
                ]
            }
        },
        {
            "id": "https://api.weather.gov/stations/KCNK/observations/2019-08-16T11:28:00+00:00",
            "type": "Feature",
            "geometry": {
                "type": "Point",
                "coordinates": [
                    -97.650000000000006,
                    39.539999999999999
                ]
            },
            "properties": {
                "@id": "https://api.weather.gov/stations/KCNK/observations/2019-08-16T11:28:00+00:00",
                "@type": "wx:ObservationStation",
                "elevation": {
                    "value": 452,
                    "unitCode": "unit:m"
                },
                "station": "https://api.weather.gov/stations/KCNK",
                "timestamp": "2019-08-16T11:28:00+00:00",
                "rawMessage": "KCNK 161128Z AUTO 03004KT 8SM BKN004 BKN007 20/19 A2991 RMK AO2 CIG 002V006 T02000189",
                "textDescription": "Mostly Cloudy",
                "icon": "https://api.weather.gov/icons/land/night/bkn?size=medium",
                "presentWeather": [],
                "temperature": {
                    "value": 20,
                    "unitCode": "unit:degC",
                    "qualityControl": "qc:V"
                },
                "dewpoint": {
                    "value": 18.900000000000034,
                    "unitCode": "unit:degC",
                    "qualityControl": "qc:V"
                },
                "windDirection": {
                    "value": 29.999999999999996,
                    "unitCode": "unit:degree_(angle)",
                    "qualityControl": "qc:V"
                },
                "windSpeed": {
                    "value": 2.1000000000000001,
                    "unitCode": "unit:m_s-1",
                    "qualityControl": "qc:V"
                },
                "windGust": {
                    "value": null,
                    "unitCode": "unit:m_s-1",
                    "qualityControl": "qc:Z"
                },
                "barometricPressure": {
                    "value": 101290,
                    "unitCode": "unit:Pa",
                    "qualityControl": "qc:V"
                },
                "seaLevelPressure": {
                    "value": null,
                    "unitCode": "unit:Pa",
                    "qualityControl": "qc:Z"
                },
                "visibility": {
                    "value": 12870,
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
                    "value": 93.389863240724722,
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
                            "value": 120,
                            "unitCode": "unit:m"
                        },
                        "amount": "BKN"
                    },
                    {
                        "base": {
                            "value": 210,
                            "unitCode": "unit:m"
                        },
                        "amount": "BKN"
                    }
                ]
            }
        },
        {
            "id": "https://api.weather.gov/stations/KCNK/observations/2019-08-16T11:06:00+00:00",
            "type": "Feature",
            "geometry": {
                "type": "Point",
                "coordinates": [
                    -97.650000000000006,
                    39.539999999999999
                ]
            },
            "properties": {
                "@id": "https://api.weather.gov/stations/KCNK/observations/2019-08-16T11:06:00+00:00",
                "@type": "wx:ObservationStation",
                "elevation": {
                    "value": 452,
                    "unitCode": "unit:m"
                },
                "station": "https://api.weather.gov/stations/KCNK",
                "timestamp": "2019-08-16T11:06:00+00:00",
                "rawMessage": "KCNK 161106Z AUTO 03004KT 9SM BKN005 20/19 A2992 RMK AO2 T02000194",
                "textDescription": "Mostly Cloudy",
                "icon": "https://api.weather.gov/icons/land/night/bkn?size=medium",
                "presentWeather": [],
                "temperature": {
                    "value": 20,
                    "unitCode": "unit:degC",
                    "qualityControl": "qc:V"
                },
                "dewpoint": {
                    "value": 19.400000000000034,
                    "unitCode": "unit:degC",
                    "qualityControl": "qc:V"
                },
                "windDirection": {
                    "value": 29.999999999999996,
                    "unitCode": "unit:degree_(angle)",
                    "qualityControl": "qc:V"
                },
                "windSpeed": {
                    "value": 2.1000000000000001,
                    "unitCode": "unit:m_s-1",
                    "qualityControl": "qc:V"
                },
                "windGust": {
                    "value": null,
                    "unitCode": "unit:m_s-1",
                    "qualityControl": "qc:Z"
                },
                "barometricPressure": {
                    "value": 101320,
                    "unitCode": "unit:Pa",
                    "qualityControl": "qc:V"
                },
                "seaLevelPressure": {
                    "value": null,
                    "unitCode": "unit:Pa",
                    "qualityControl": "qc:Z"
                },
                "visibility": {
                    "value": 14480,
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
                    "value": 96.345341919248824,
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
                            "value": 150,
                            "unitCode": "unit:m"
                        },
                        "amount": "BKN"
                    }
                ]
            }
        },
        {
            "id": "https://api.weather.gov/stations/KCNK/observations/2019-08-16T10:55:00+00:00",
            "type": "Feature",
            "geometry": {
                "type": "Point",
                "coordinates": [
                    -97.650000000000006,
                    39.539999999999999
                ]
            },
            "properties": {
                "@id": "https://api.weather.gov/stations/KCNK/observations/2019-08-16T10:55:00+00:00",
                "@type": "wx:ObservationStation",
                "elevation": {
                    "value": 452,
                    "unitCode": "unit:m"
                },
                "station": "https://api.weather.gov/stations/KCNK",
                "timestamp": "2019-08-16T10:55:00+00:00",
                "rawMessage": "KCNK 161055Z AUTO 05006KT 8SM SCT005 20/19 A2990 RMK AO2 SLP110 T02000189",
                "textDescription": "Partly Cloudy",
                "icon": "https://api.weather.gov/icons/land/night/sct?size=medium",
                "presentWeather": [],
                "temperature": {
                    "value": 20,
                    "unitCode": "unit:degC",
                    "qualityControl": "qc:V"
                },
                "dewpoint": {
                    "value": 18.900000000000034,
                    "unitCode": "unit:degC",
                    "qualityControl": "qc:V"
                },
                "windDirection": {
                    "value": 50,
                    "unitCode": "unit:degree_(angle)",
                    "qualityControl": "qc:V"
                },
                "windSpeed": {
                    "value": 3.1000000000000001,
                    "unitCode": "unit:m_s-1",
                    "qualityControl": "qc:V"
                },
                "windGust": {
                    "value": null,
                    "unitCode": "unit:m_s-1",
                    "qualityControl": "qc:Z"
                },
                "barometricPressure": {
                    "value": 101250,
                    "unitCode": "unit:Pa",
                    "qualityControl": "qc:V"
                },
                "seaLevelPressure": {
                    "value": 101100,
                    "unitCode": "unit:Pa",
                    "qualityControl": "qc:V"
                },
                "visibility": {
                    "value": 12870,
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
                    "value": 93.389863240724722,
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
                            "value": 150,
                            "unitCode": "unit:m"
                        },
                        "amount": "SCT"
                    }
                ]
            }
        },
        {
            "id": "https://api.weather.gov/stations/KCNK/observations/2019-08-16T10:41:00+00:00",
            "type": "Feature",
            "geometry": {
                "type": "Point",
                "coordinates": [
                    -97.650000000000006,
                    39.539999999999999
                ]
            },
            "properties": {
                "@id": "https://api.weather.gov/stations/KCNK/observations/2019-08-16T10:41:00+00:00",
                "@type": "wx:ObservationStation",
                "elevation": {
                    "value": 452,
                    "unitCode": "unit:m"
                },
                "station": "https://api.weather.gov/stations/KCNK",
                "timestamp": "2019-08-16T10:41:00+00:00",
                "rawMessage": "KCNK 161041Z AUTO 05005KT 8SM FEW028 20/19 A2991 RMK AO2 T02000189",
                "textDescription": "Mostly Clear",
                "icon": "https://api.weather.gov/icons/land/night/few?size=medium",
                "presentWeather": [],
                "temperature": {
                    "value": 20,
                    "unitCode": "unit:degC",
                    "qualityControl": "qc:V"
                },
                "dewpoint": {
                    "value": 18.900000000000034,
                    "unitCode": "unit:degC",
                    "qualityControl": "qc:V"
                },
                "windDirection": {
                    "value": 50,
                    "unitCode": "unit:degree_(angle)",
                    "qualityControl": "qc:V"
                },
                "windSpeed": {
                    "value": 2.6000000000000001,
                    "unitCode": "unit:m_s-1",
                    "qualityControl": "qc:V"
                },
                "windGust": {
                    "value": null,
                    "unitCode": "unit:m_s-1",
                    "qualityControl": "qc:Z"
                },
                "barometricPressure": {
                    "value": 101290,
                    "unitCode": "unit:Pa",
                    "qualityControl": "qc:V"
                },
                "seaLevelPressure": {
                    "value": null,
                    "unitCode": "unit:Pa",
                    "qualityControl": "qc:Z"
                },
                "visibility": {
                    "value": 12870,
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
                    "value": 93.389863240724722,
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
                            "value": 850,
                            "unitCode": "unit:m"
                        },
                        "amount": "FEW"
                    }
                ]
            }
        },
        {
            "id": "https://api.weather.gov/stations/KCNK/observations/2019-08-16T09:55:00+00:00",
            "type": "Feature",
            "geometry": {
                "type": "Point",
                "coordinates": [
                    -97.650000000000006,
                    39.539999999999999
                ]
            },
            "properties": {
                "@id": "https://api.weather.gov/stations/KCNK/observations/2019-08-16T09:55:00+00:00",
                "@type": "wx:ObservationStation",
                "elevation": {
                    "value": 452,
                    "unitCode": "unit:m"
                },
                "station": "https://api.weather.gov/stations/KCNK",
                "timestamp": "2019-08-16T09:55:00+00:00",
                "rawMessage": "KCNK 160955Z AUTO 03004KT 8SM BKN026 20/19 A2990 RMK AO2 SLP111 T02000194",
                "textDescription": "Mostly Cloudy",
                "icon": "https://api.weather.gov/icons/land/night/bkn?size=medium",
                "presentWeather": [],
                "temperature": {
                    "value": 20,
                    "unitCode": "unit:degC",
                    "qualityControl": "qc:V"
                },
                "dewpoint": {
                    "value": 19.400000000000034,
                    "unitCode": "unit:degC",
                    "qualityControl": "qc:V"
                },
                "windDirection": {
                    "value": 29.999999999999996,
                    "unitCode": "unit:degree_(angle)",
                    "qualityControl": "qc:V"
                },
                "windSpeed": {
                    "value": 2.1000000000000001,
                    "unitCode": "unit:m_s-1",
                    "qualityControl": "qc:V"
                },
                "windGust": {
                    "value": null,
                    "unitCode": "unit:m_s-1",
                    "qualityControl": "qc:Z"
                },
                "barometricPressure": {
                    "value": 101250,
                    "unitCode": "unit:Pa",
                    "qualityControl": "qc:V"
                },
                "seaLevelPressure": {
                    "value": 101110,
                    "unitCode": "unit:Pa",
                    "qualityControl": "qc:V"
                },
                "visibility": {
                    "value": 12870,
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
                    "value": 96.345341919248824,
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
                            "value": 790,
                            "unitCode": "unit:m"
                        },
                        "amount": "BKN"
                    }
                ]
            }
        },
        {
            "id": "https://api.weather.gov/stations/KCNK/observations/2019-08-16T08:55:00+00:00",
            "type": "Feature",
            "geometry": {
                "type": "Point",
                "coordinates": [
                    -97.650000000000006,
                    39.539999999999999
                ]
            },
            "properties": {
                "@id": "https://api.weather.gov/stations/KCNK/observations/2019-08-16T08:55:00+00:00",
                "@type": "wx:ObservationStation",
                "elevation": {
                    "value": 452,
                    "unitCode": "unit:m"
                },
                "station": "https://api.weather.gov/stations/KCNK",
                "timestamp": "2019-08-16T08:55:00+00:00",
                "rawMessage": "KCNK 160855Z AUTO 00000KT 10SM CLR 20/19 A2988 RMK AO2 SLP103 T02000194 56013",
                "textDescription": "Clear",
                "icon": "https://api.weather.gov/icons/land/night/skc?size=medium",
                "presentWeather": [],
                "temperature": {
                    "value": 20,
                    "unitCode": "unit:degC",
                    "qualityControl": "qc:V"
                },
                "dewpoint": {
                    "value": 19.400000000000034,
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
                    "value": 101190,
                    "unitCode": "unit:Pa",
                    "qualityControl": "qc:V"
                },
                "seaLevelPressure": {
                    "value": 101030,
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
                    "value": 96.345341919248824,
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
                            "value": null,
                            "unitCode": "unit:m"
                        },
                        "amount": "CLR"
                    }
                ]
            }
        },
        {
            "id": "https://api.weather.gov/stations/KCNK/observations/2019-08-16T07:55:00+00:00",
            "type": "Feature",
            "geometry": {
                "type": "Point",
                "coordinates": [
                    -97.650000000000006,
                    39.539999999999999
                ]
            },
            "properties": {
                "@id": "https://api.weather.gov/stations/KCNK/observations/2019-08-16T07:55:00+00:00",
                "@type": "wx:ObservationStation",
                "elevation": {
                    "value": 452,
                    "unitCode": "unit:m"
                },
                "station": "https://api.weather.gov/stations/KCNK",
                "timestamp": "2019-08-16T07:55:00+00:00",
                "rawMessage": "KCNK 160755Z AUTO 09004KT 10SM CLR 21/19 A2989 RMK AO2 SLP106 T02060194",
                "textDescription": "Clear",
                "icon": "https://api.weather.gov/icons/land/night/skc?size=medium",
                "presentWeather": [],
                "temperature": {
                    "value": 20.600000000000023,
                    "unitCode": "unit:degC",
                    "qualityControl": "qc:V"
                },
                "dewpoint": {
                    "value": 19.400000000000034,
                    "unitCode": "unit:degC",
                    "qualityControl": "qc:V"
                },
                "windDirection": {
                    "value": 90,
                    "unitCode": "unit:degree_(angle)",
                    "qualityControl": "qc:V"
                },
                "windSpeed": {
                    "value": 2.1000000000000001,
                    "unitCode": "unit:m_s-1",
                    "qualityControl": "qc:V"
                },
                "windGust": {
                    "value": null,
                    "unitCode": "unit:m_s-1",
                    "qualityControl": "qc:Z"
                },
                "barometricPressure": {
                    "value": 101220,
                    "unitCode": "unit:Pa",
                    "qualityControl": "qc:V"
                },
                "seaLevelPressure": {
                    "value": 101060,
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
                    "value": 92.839980753296231,
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
                            "value": null,
                            "unitCode": "unit:m"
                        },
                        "amount": "CLR"
                    }
                ]
            }
        },
        {
            "id": "https://api.weather.gov/stations/KCNK/observations/2019-08-16T07:36:00+00:00",
            "type": "Feature",
            "geometry": {
                "type": "Point",
                "coordinates": [
                    -97.650000000000006,
                    39.539999999999999
                ]
            },
            "properties": {
                "@id": "https://api.weather.gov/stations/KCNK/observations/2019-08-16T07:36:00+00:00",
                "@type": "wx:ObservationStation",
                "elevation": {
                    "value": 452,
                    "unitCode": "unit:m"
                },
                "station": "https://api.weather.gov/stations/KCNK",
                "timestamp": "2019-08-16T07:36:00+00:00",
                "rawMessage": "KCNK 160736Z AUTO 08003KT 10SM FEW006 FEW027 21/19 A2989 RMK AO2 T02060194",
                "textDescription": "Mostly Clear",
                "icon": "https://api.weather.gov/icons/land/night/few?size=medium",
                "presentWeather": [],
                "temperature": {
                    "value": 20.600000000000023,
                    "unitCode": "unit:degC",
                    "qualityControl": "qc:V"
                },
                "dewpoint": {
                    "value": 19.400000000000034,
                    "unitCode": "unit:degC",
                    "qualityControl": "qc:V"
                },
                "windDirection": {
                    "value": 80,
                    "unitCode": "unit:degree_(angle)",
                    "qualityControl": "qc:V"
                },
                "windSpeed": {
                    "value": 1.5,
                    "unitCode": "unit:m_s-1",
                    "qualityControl": "qc:V"
                },
                "windGust": {
                    "value": null,
                    "unitCode": "unit:m_s-1",
                    "qualityControl": "qc:Z"
                },
                "barometricPressure": {
                    "value": 101220,
                    "unitCode": "unit:Pa",
                    "qualityControl": "qc:V"
                },
                "seaLevelPressure": {
                    "value": null,
                    "unitCode": "unit:Pa",
                    "qualityControl": "qc:Z"
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
                    "value": 92.839980753296231,
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
                            "value": 180,
                            "unitCode": "unit:m"
                        },
                        "amount": "FEW"
                    },
                    {
                        "base": {
                            "value": 820,
                            "unitCode": "unit:m"
                        },
                        "amount": "FEW"
                    }
                ]
            }
        },
        {
            "id": "https://api.weather.gov/stations/KCNK/observations/2019-08-16T07:07:00+00:00",
            "type": "Feature",
            "geometry": {
                "type": "Point",
                "coordinates": [
                    -97.650000000000006,
                    39.539999999999999
                ]
            },
            "properties": {
                "@id": "https://api.weather.gov/stations/KCNK/observations/2019-08-16T07:07:00+00:00",
                "@type": "wx:ObservationStation",
                "elevation": {
                    "value": 452,
                    "unitCode": "unit:m"
                },
                "station": "https://api.weather.gov/stations/KCNK",
                "timestamp": "2019-08-16T07:07:00+00:00",
                "rawMessage": "KCNK 160707Z AUTO 06004KT 10SM FEW006 BKN029 21/19 A2989 RMK AO2 T02110194",
                "textDescription": "Mostly Cloudy",
                "icon": "https://api.weather.gov/icons/land/night/bkn?size=medium",
                "presentWeather": [],
                "temperature": {
                    "value": 21.100000000000023,
                    "unitCode": "unit:degC",
                    "qualityControl": "qc:V"
                },
                "dewpoint": {
                    "value": 19.400000000000034,
                    "unitCode": "unit:degC",
                    "qualityControl": "qc:V"
                },
                "windDirection": {
                    "value": 59.999999999999993,
                    "unitCode": "unit:degree_(angle)",
                    "qualityControl": "qc:V"
                },
                "windSpeed": {
                    "value": 2.1000000000000001,
                    "unitCode": "unit:m_s-1",
                    "qualityControl": "qc:V"
                },
                "windGust": {
                    "value": null,
                    "unitCode": "unit:m_s-1",
                    "qualityControl": "qc:Z"
                },
                "barometricPressure": {
                    "value": 101220,
                    "unitCode": "unit:Pa",
                    "qualityControl": "qc:V"
                },
                "seaLevelPressure": {
                    "value": null,
                    "unitCode": "unit:Pa",
                    "qualityControl": "qc:Z"
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
                    "value": 90.028047779447178,
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
                            "value": 180,
                            "unitCode": "unit:m"
                        },
                        "amount": "FEW"
                    },
                    {
                        "base": {
                            "value": 880,
                            "unitCode": "unit:m"
                        },
                        "amount": "BKN"
                    }
                ]
            }
        },
        {
            "id": "https://api.weather.gov/stations/KCNK/observations/2019-08-16T06:55:00+00:00",
            "type": "Feature",
            "geometry": {
                "type": "Point",
                "coordinates": [
                    -97.650000000000006,
                    39.539999999999999
                ]
            },
            "properties": {
                "@id": "https://api.weather.gov/stations/KCNK/observations/2019-08-16T06:55:00+00:00",
                "@type": "wx:ObservationStation",
                "elevation": {
                    "value": 452,
                    "unitCode": "unit:m"
                },
                "station": "https://api.weather.gov/stations/KCNK",
                "timestamp": "2019-08-16T06:55:00+00:00",
                "rawMessage": "KCNK 160655Z AUTO 05006KT 10SM BKN029 21/19 A2990 RMK AO2 SLP110 T02110194",
                "textDescription": "Mostly Cloudy",
                "icon": "https://api.weather.gov/icons/land/night/bkn?size=medium",
                "presentWeather": [],
                "temperature": {
                    "value": 21.100000000000023,
                    "unitCode": "unit:degC",
                    "qualityControl": "qc:V"
                },
                "dewpoint": {
                    "value": 19.400000000000034,
                    "unitCode": "unit:degC",
                    "qualityControl": "qc:V"
                },
                "windDirection": {
                    "value": 50,
                    "unitCode": "unit:degree_(angle)",
                    "qualityControl": "qc:V"
                },
                "windSpeed": {
                    "value": 3.1000000000000001,
                    "unitCode": "unit:m_s-1",
                    "qualityControl": "qc:V"
                },
                "windGust": {
                    "value": null,
                    "unitCode": "unit:m_s-1",
                    "qualityControl": "qc:Z"
                },
                "barometricPressure": {
                    "value": 101250,
                    "unitCode": "unit:Pa",
                    "qualityControl": "qc:V"
                },
                "seaLevelPressure": {
                    "value": 101100,
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
                    "value": 90.028047779447178,
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
                            "value": 880,
                            "unitCode": "unit:m"
                        },
                        "amount": "BKN"
                    }
                ]
            }
        },
        {
            "id": "https://api.weather.gov/stations/KCNK/observations/2019-08-16T06:43:00+00:00",
            "type": "Feature",
            "geometry": {
                "type": "Point",
                "coordinates": [
                    -97.650000000000006,
                    39.539999999999999
                ]
            },
            "properties": {
                "@id": "https://api.weather.gov/stations/KCNK/observations/2019-08-16T06:43:00+00:00",
                "@type": "wx:ObservationStation",
                "elevation": {
                    "value": 452,
                    "unitCode": "unit:m"
                },
                "station": "https://api.weather.gov/stations/KCNK",
                "timestamp": "2019-08-16T06:43:00+00:00",
                "rawMessage": "KCNK 160643Z AUTO 05005KT 10SM FEW007 FEW015 OVC029 21/19 A2990 RMK AO2 T02110194",
                "textDescription": "Cloudy",
                "icon": "https://api.weather.gov/icons/land/night/ovc?size=medium",
                "presentWeather": [],
                "temperature": {
                    "value": 21.100000000000023,
                    "unitCode": "unit:degC",
                    "qualityControl": "qc:V"
                },
                "dewpoint": {
                    "value": 19.400000000000034,
                    "unitCode": "unit:degC",
                    "qualityControl": "qc:V"
                },
                "windDirection": {
                    "value": 50,
                    "unitCode": "unit:degree_(angle)",
                    "qualityControl": "qc:V"
                },
                "windSpeed": {
                    "value": 2.6000000000000001,
                    "unitCode": "unit:m_s-1",
                    "qualityControl": "qc:V"
                },
                "windGust": {
                    "value": null,
                    "unitCode": "unit:m_s-1",
                    "qualityControl": "qc:Z"
                },
                "barometricPressure": {
                    "value": 101250,
                    "unitCode": "unit:Pa",
                    "qualityControl": "qc:V"
                },
                "seaLevelPressure": {
                    "value": null,
                    "unitCode": "unit:Pa",
                    "qualityControl": "qc:Z"
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
                    "value": 90.028047779447178,
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
                            "value": 210,
                            "unitCode": "unit:m"
                        },
                        "amount": "FEW"
                    },
                    {
                        "base": {
                            "value": 460,
                            "unitCode": "unit:m"
                        },
                        "amount": "FEW"
                    },
                    {
                        "base": {
                            "value": 880,
                            "unitCode": "unit:m"
                        },
                        "amount": "OVC"
                    }
                ]
            }
        },
        {
            "id": "https://api.weather.gov/stations/KCNK/observations/2019-08-16T06:33:00+00:00",
            "type": "Feature",
            "geometry": {
                "type": "Point",
                "coordinates": [
                    -97.650000000000006,
                    39.539999999999999
                ]
            },
            "properties": {
                "@id": "https://api.weather.gov/stations/KCNK/observations/2019-08-16T06:33:00+00:00",
                "@type": "wx:ObservationStation",
                "elevation": {
                    "value": 452,
                    "unitCode": "unit:m"
                },
                "station": "https://api.weather.gov/stations/KCNK",
                "timestamp": "2019-08-16T06:33:00+00:00",
                "rawMessage": "KCNK 160633Z AUTO 05004KT 10SM SCT007 SCT015 OVC030 21/19 A2991 RMK AO2 T02110194",
                "textDescription": "Cloudy",
                "icon": "https://api.weather.gov/icons/land/night/ovc?size=medium",
                "presentWeather": [],
                "temperature": {
                    "value": 21.100000000000023,
                    "unitCode": "unit:degC",
                    "qualityControl": "qc:V"
                },
                "dewpoint": {
                    "value": 19.400000000000034,
                    "unitCode": "unit:degC",
                    "qualityControl": "qc:V"
                },
                "windDirection": {
                    "value": 50,
                    "unitCode": "unit:degree_(angle)",
                    "qualityControl": "qc:V"
                },
                "windSpeed": {
                    "value": 2.1000000000000001,
                    "unitCode": "unit:m_s-1",
                    "qualityControl": "qc:V"
                },
                "windGust": {
                    "value": null,
                    "unitCode": "unit:m_s-1",
                    "qualityControl": "qc:Z"
                },
                "barometricPressure": {
                    "value": 101290,
                    "unitCode": "unit:Pa",
                    "qualityControl": "qc:V"
                },
                "seaLevelPressure": {
                    "value": null,
                    "unitCode": "unit:Pa",
                    "qualityControl": "qc:Z"
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
                    "value": 90.028047779447178,
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
                            "value": 210,
                            "unitCode": "unit:m"
                        },
                        "amount": "SCT"
                    },
                    {
                        "base": {
                            "value": 460,
                            "unitCode": "unit:m"
                        },
                        "amount": "SCT"
                    },
                    {
                        "base": {
                            "value": 910,
                            "unitCode": "unit:m"
                        },
                        "amount": "OVC"
                    }
                ]
            }
        },
        {
            "id": "https://api.weather.gov/stations/KCNK/observations/2019-08-16T05:55:00+00:00",
            "type": "Feature",
            "geometry": {
                "type": "Point",
                "coordinates": [
                    -97.650000000000006,
                    39.539999999999999
                ]
            },
            "properties": {
                "@id": "https://api.weather.gov/stations/KCNK/observations/2019-08-16T05:55:00+00:00",
                "@type": "wx:ObservationStation",
                "elevation": {
                    "value": 452,
                    "unitCode": "unit:m"
                },
                "station": "https://api.weather.gov/stations/KCNK",
                "timestamp": "2019-08-16T05:55:00+00:00",
                "rawMessage": "KCNK 160555Z AUTO 05007KT 10SM OVC008 22/19 A2992 RMK AO2 CIG 008V012 SLP117 T02170194 10272 20217 402830178 51004",
                "textDescription": "Cloudy",
                "icon": "https://api.weather.gov/icons/land/night/ovc?size=medium",
                "presentWeather": [],
                "temperature": {
                    "value": 21.700000000000045,
                    "unitCode": "unit:degC",
                    "qualityControl": "qc:V"
                },
                "dewpoint": {
                    "value": 19.400000000000034,
                    "unitCode": "unit:degC",
                    "qualityControl": "qc:V"
                },
                "windDirection": {
                    "value": 50,
                    "unitCode": "unit:degree_(angle)",
                    "qualityControl": "qc:V"
                },
                "windSpeed": {
                    "value": 3.6000000000000001,
                    "unitCode": "unit:m_s-1",
                    "qualityControl": "qc:V"
                },
                "windGust": {
                    "value": null,
                    "unitCode": "unit:m_s-1",
                    "qualityControl": "qc:Z"
                },
                "barometricPressure": {
                    "value": 101320,
                    "unitCode": "unit:Pa",
                    "qualityControl": "qc:V"
                },
                "seaLevelPressure": {
                    "value": 101170,
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
                    "value": 86.779227810895748,
                    "unitCode": "unit:percent",
                    "qualityControl": "qc:C"
                },
                "windChill": {
                    "value": null,
                    "unitCode": "unit:degC",
                    "qualityControl": "qc:V"
                },
                "heatIndex": {
                    "value": 22.191457615062291,
                    "unitCode": "unit:degC",
                    "qualityControl": "qc:V"
                },
                "cloudLayers": [
                    {
                        "base": {
                            "value": 240,
                            "unitCode": "unit:m"
                        },
                        "amount": "OVC"
                    }
                ]
            }
        },
        {
            "id": "https://api.weather.gov/stations/KCNK/observations/2019-08-16T05:53:00+00:00",
            "type": "Feature",
            "geometry": {
                "type": "Point",
                "coordinates": [
                    -97.650000000000006,
                    39.539999999999999
                ]
            },
            "properties": {
                "@id": "https://api.weather.gov/stations/KCNK/observations/2019-08-16T05:53:00+00:00",
                "@type": "wx:ObservationStation",
                "elevation": {
                    "value": 452,
                    "unitCode": "unit:m"
                },
                "station": "https://api.weather.gov/stations/KCNK",
                "timestamp": "2019-08-16T05:53:00+00:00",
                "rawMessage": "KCNK 160553Z AUTO 05007KT 10SM OVC008 22/19 A2992 RMK AO2 CIG 008V012",
                "textDescription": "Cloudy",
                "icon": "https://api.weather.gov/icons/land/night/ovc?size=medium",
                "presentWeather": [],
                "temperature": {
                    "value": 22,
                    "unitCode": "unit:degC",
                    "qualityControl": "qc:V"
                },
                "dewpoint": {
                    "value": 19,
                    "unitCode": "unit:degC",
                    "qualityControl": "qc:V"
                },
                "windDirection": {
                    "value": 50,
                    "unitCode": "unit:degree_(angle)",
                    "qualityControl": "qc:V"
                },
                "windSpeed": {
                    "value": 3.6000000000000001,
                    "unitCode": "unit:m_s-1",
                    "qualityControl": "qc:V"
                },
                "windGust": {
                    "value": null,
                    "unitCode": "unit:m_s-1",
                    "qualityControl": "qc:Z"
                },
                "barometricPressure": {
                    "value": 101320,
                    "unitCode": "unit:Pa",
                    "qualityControl": "qc:V"
                },
                "seaLevelPressure": {
                    "value": null,
                    "unitCode": "unit:Pa",
                    "qualityControl": "qc:Z"
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
                    "value": 83.107688157694582,
                    "unitCode": "unit:percent",
                    "qualityControl": "qc:C"
                },
                "windChill": {
                    "value": null,
                    "unitCode": "unit:degC",
                    "qualityControl": "qc:V"
                },
                "heatIndex": {
                    "value": 22.425589635228675,
                    "unitCode": "unit:degC",
                    "qualityControl": "qc:V"
                },
                "cloudLayers": [
                    {
                        "base": {
                            "value": 240,
                            "unitCode": "unit:m"
                        },
                        "amount": "OVC"
                    }
                ]
            }
        },
        {
            "id": "https://api.weather.gov/stations/KCNK/observations/2019-08-16T04:55:00+00:00",
            "type": "Feature",
            "geometry": {
                "type": "Point",
                "coordinates": [
                    -97.650000000000006,
                    39.539999999999999
                ]
            },
            "properties": {
                "@id": "https://api.weather.gov/stations/KCNK/observations/2019-08-16T04:55:00+00:00",
                "@type": "wx:ObservationStation",
                "elevation": {
                    "value": 452,
                    "unitCode": "unit:m"
                },
                "station": "https://api.weather.gov/stations/KCNK",
                "timestamp": "2019-08-16T04:55:00+00:00",
                "rawMessage": "KCNK 160455Z AUTO 06010G19KT 10SM OVC014 22/19 A2992 RMK AO2 SLP118 T02170194",
                "textDescription": "Cloudy",
                "icon": "https://api.weather.gov/icons/land/night/ovc?size=medium",
                "presentWeather": [],
                "temperature": {
                    "value": 21.700000000000045,
                    "unitCode": "unit:degC",
                    "qualityControl": "qc:V"
                },
                "dewpoint": {
                    "value": 19.400000000000034,
                    "unitCode": "unit:degC",
                    "qualityControl": "qc:V"
                },
                "windDirection": {
                    "value": 59.999999999999993,
                    "unitCode": "unit:degree_(angle)",
                    "qualityControl": "qc:V"
                },
                "windSpeed": {
                    "value": 5.0999999999999996,
                    "unitCode": "unit:m_s-1",
                    "qualityControl": "qc:V"
                },
                "windGust": {
                    "value": null,
                    "unitCode": "unit:m_s-1",
                    "qualityControl": "qc:Z"
                },
                "barometricPressure": {
                    "value": 101320,
                    "unitCode": "unit:Pa",
                    "qualityControl": "qc:V"
                },
                "seaLevelPressure": {
                    "value": 101180,
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
                    "value": 86.779227810895748,
                    "unitCode": "unit:percent",
                    "qualityControl": "qc:C"
                },
                "windChill": {
                    "value": null,
                    "unitCode": "unit:degC",
                    "qualityControl": "qc:V"
                },
                "heatIndex": {
                    "value": 22.191457615062291,
                    "unitCode": "unit:degC",
                    "qualityControl": "qc:V"
                },
                "cloudLayers": [
                    {
                        "base": {
                            "value": 430,
                            "unitCode": "unit:m"
                        },
                        "amount": "OVC"
                    }
                ]
            }
        },
        {
            "id": "https://api.weather.gov/stations/KCNK/observations/2019-08-16T04:47:00+00:00",
            "type": "Feature",
            "geometry": {
                "type": "Point",
                "coordinates": [
                    -97.650000000000006,
                    39.539999999999999
                ]
            },
            "properties": {
                "@id": "https://api.weather.gov/stations/KCNK/observations/2019-08-16T04:47:00+00:00",
                "@type": "wx:ObservationStation",
                "elevation": {
                    "value": 452,
                    "unitCode": "unit:m"
                },
                "station": "https://api.weather.gov/stations/KCNK",
                "timestamp": "2019-08-16T04:47:00+00:00",
                "rawMessage": "KCNK 160447Z AUTO 06009G17KT 10SM OVC014 22/19 A2992 RMK AO2 T02220194",
                "textDescription": "Cloudy",
                "icon": "https://api.weather.gov/icons/land/night/ovc?size=medium",
                "presentWeather": [],
                "temperature": {
                    "value": 22.200000000000045,
                    "unitCode": "unit:degC",
                    "qualityControl": "qc:V"
                },
                "dewpoint": {
                    "value": 19.400000000000034,
                    "unitCode": "unit:degC",
                    "qualityControl": "qc:V"
                },
                "windDirection": {
                    "value": 59.999999999999993,
                    "unitCode": "unit:degree_(angle)",
                    "qualityControl": "qc:V"
                },
                "windSpeed": {
                    "value": 4.5999999999999996,
                    "unitCode": "unit:m_s-1",
                    "qualityControl": "qc:V"
                },
                "windGust": {
                    "value": null,
                    "unitCode": "unit:m_s-1",
                    "qualityControl": "qc:Z"
                },
                "barometricPressure": {
                    "value": 101320,
                    "unitCode": "unit:Pa",
                    "qualityControl": "qc:V"
                },
                "seaLevelPressure": {
                    "value": null,
                    "unitCode": "unit:Pa",
                    "qualityControl": "qc:Z"
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
                    "value": 84.172308156336697,
                    "unitCode": "unit:percent",
                    "qualityControl": "qc:C"
                },
                "windChill": {
                    "value": null,
                    "unitCode": "unit:degC",
                    "qualityControl": "qc:V"
                },
                "heatIndex": {
                    "value": 22.673388046304353,
                    "unitCode": "unit:degC",
                    "qualityControl": "qc:V"
                },
                "cloudLayers": [
                    {
                        "base": {
                            "value": 430,
                            "unitCode": "unit:m"
                        },
                        "amount": "OVC"
                    }
                ]
            }
        },
        {
            "id": "https://api.weather.gov/stations/KCNK/observations/2019-08-16T04:18:00+00:00",
            "type": "Feature",
            "geometry": {
                "type": "Point",
                "coordinates": [
                    -97.650000000000006,
                    39.539999999999999
                ]
            },
            "properties": {
                "@id": "https://api.weather.gov/stations/KCNK/observations/2019-08-16T04:18:00+00:00",
                "@type": "wx:ObservationStation",
                "elevation": {
                    "value": 452,
                    "unitCode": "unit:m"
                },
                "station": "https://api.weather.gov/stations/KCNK",
                "timestamp": "2019-08-16T04:18:00+00:00",
                "rawMessage": "KCNK 160418Z AUTO 06008KT 10SM BKN016 OVC037 22/20 A2992 RMK AO2 T02220200",
                "textDescription": "Cloudy",
                "icon": "https://api.weather.gov/icons/land/night/ovc?size=medium",
                "presentWeather": [],
                "temperature": {
                    "value": 22.200000000000045,
                    "unitCode": "unit:degC",
                    "qualityControl": "qc:V"
                },
                "dewpoint": {
                    "value": 20,
                    "unitCode": "unit:degC",
                    "qualityControl": "qc:V"
                },
                "windDirection": {
                    "value": 59.999999999999993,
                    "unitCode": "unit:degree_(angle)",
                    "qualityControl": "qc:V"
                },
                "windSpeed": {
                    "value": 4.0999999999999996,
                    "unitCode": "unit:m_s-1",
                    "qualityControl": "qc:V"
                },
                "windGust": {
                    "value": null,
                    "unitCode": "unit:m_s-1",
                    "qualityControl": "qc:Z"
                },
                "barometricPressure": {
                    "value": 101320,
                    "unitCode": "unit:Pa",
                    "qualityControl": "qc:V"
                },
                "seaLevelPressure": {
                    "value": null,
                    "unitCode": "unit:Pa",
                    "qualityControl": "qc:Z"
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
                    "value": 87.365207782318237,
                    "unitCode": "unit:percent",
                    "qualityControl": "qc:C"
                },
                "windChill": {
                    "value": null,
                    "unitCode": "unit:degC",
                    "qualityControl": "qc:V"
                },
                "heatIndex": {
                    "value": 22.756758203204981,
                    "unitCode": "unit:degC",
                    "qualityControl": "qc:V"
                },
                "cloudLayers": [
                    {
                        "base": {
                            "value": 490,
                            "unitCode": "unit:m"
                        },
                        "amount": "BKN"
                    },
                    {
                        "base": {
                            "value": 1130,
                            "unitCode": "unit:m"
                        },
                        "amount": "OVC"
                    }
                ]
            }
        },
        {
            "id": "https://api.weather.gov/stations/KCNK/observations/2019-08-16T03:55:00+00:00",
            "type": "Feature",
            "geometry": {
                "type": "Point",
                "coordinates": [
                    -97.650000000000006,
                    39.539999999999999
                ]
            },
            "properties": {
                "@id": "https://api.weather.gov/stations/KCNK/observations/2019-08-16T03:55:00+00:00",
                "@type": "wx:ObservationStation",
                "elevation": {
                    "value": 452,
                    "unitCode": "unit:m"
                },
                "station": "https://api.weather.gov/stations/KCNK",
                "timestamp": "2019-08-16T03:55:00+00:00",
                "rawMessage": "KCNK 160355Z AUTO 06008KT 10SM OVC037 22/19 A2991 RMK AO2 SLP113 T02220194",
                "textDescription": "Cloudy",
                "icon": "https://api.weather.gov/icons/land/night/ovc?size=medium",
                "presentWeather": [],
                "temperature": {
                    "value": 22.200000000000045,
                    "unitCode": "unit:degC",
                    "qualityControl": "qc:V"
                },
                "dewpoint": {
                    "value": 19.400000000000034,
                    "unitCode": "unit:degC",
                    "qualityControl": "qc:V"
                },
                "windDirection": {
                    "value": 59.999999999999993,
                    "unitCode": "unit:degree_(angle)",
                    "qualityControl": "qc:V"
                },
                "windSpeed": {
                    "value": 4.0999999999999996,
                    "unitCode": "unit:m_s-1",
                    "qualityControl": "qc:V"
                },
                "windGust": {
                    "value": null,
                    "unitCode": "unit:m_s-1",
                    "qualityControl": "qc:Z"
                },
                "barometricPressure": {
                    "value": 101290,
                    "unitCode": "unit:Pa",
                    "qualityControl": "qc:V"
                },
                "seaLevelPressure": {
                    "value": 101130,
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
                    "value": 84.172308156336697,
                    "unitCode": "unit:percent",
                    "qualityControl": "qc:C"
                },
                "windChill": {
                    "value": null,
                    "unitCode": "unit:degC",
                    "qualityControl": "qc:V"
                },
                "heatIndex": {
                    "value": 22.673388046304353,
                    "unitCode": "unit:degC",
                    "qualityControl": "qc:V"
                },
                "cloudLayers": [
                    {
                        "base": {
                            "value": 1130,
                            "unitCode": "unit:m"
                        },
                        "amount": "OVC"
                    }
                ]
            }
        },
        {
            "id": "https://api.weather.gov/stations/KCNK/observations/2019-08-16T03:40:00+00:00",
            "type": "Feature",
            "geometry": {
                "type": "Point",
                "coordinates": [
                    -97.650000000000006,
                    39.539999999999999
                ]
            },
            "properties": {
                "@id": "https://api.weather.gov/stations/KCNK/observations/2019-08-16T03:40:00+00:00",
                "@type": "wx:ObservationStation",
                "elevation": {
                    "value": 452,
                    "unitCode": "unit:m"
                },
                "station": "https://api.weather.gov/stations/KCNK",
                "timestamp": "2019-08-16T03:40:00+00:00",
                "rawMessage": "KCNK 160340Z AUTO 06009KT 10SM SCT019 BKN036 22/19 A2991 RMK AO2 T02220194",
                "textDescription": "Mostly Cloudy",
                "icon": "https://api.weather.gov/icons/land/night/bkn?size=medium",
                "presentWeather": [],
                "temperature": {
                    "value": 22.200000000000045,
                    "unitCode": "unit:degC",
                    "qualityControl": "qc:V"
                },
                "dewpoint": {
                    "value": 19.400000000000034,
                    "unitCode": "unit:degC",
                    "qualityControl": "qc:V"
                },
                "windDirection": {
                    "value": 59.999999999999993,
                    "unitCode": "unit:degree_(angle)",
                    "qualityControl": "qc:V"
                },
                "windSpeed": {
                    "value": 4.5999999999999996,
                    "unitCode": "unit:m_s-1",
                    "qualityControl": "qc:V"
                },
                "windGust": {
                    "value": null,
                    "unitCode": "unit:m_s-1",
                    "qualityControl": "qc:Z"
                },
                "barometricPressure": {
                    "value": 101290,
                    "unitCode": "unit:Pa",
                    "qualityControl": "qc:V"
                },
                "seaLevelPressure": {
                    "value": null,
                    "unitCode": "unit:Pa",
                    "qualityControl": "qc:Z"
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
                    "value": 84.172308156336697,
                    "unitCode": "unit:percent",
                    "qualityControl": "qc:C"
                },
                "windChill": {
                    "value": null,
                    "unitCode": "unit:degC",
                    "qualityControl": "qc:V"
                },
                "heatIndex": {
                    "value": 22.673388046304353,
                    "unitCode": "unit:degC",
                    "qualityControl": "qc:V"
                },
                "cloudLayers": [
                    {
                        "base": {
                            "value": 580,
                            "unitCode": "unit:m"
                        },
                        "amount": "SCT"
                    },
                    {
                        "base": {
                            "value": 1100,
                            "unitCode": "unit:m"
                        },
                        "amount": "BKN"
                    }
                ]
            }
        },
        {
            "id": "https://api.weather.gov/stations/KCNK/observations/2019-08-16T03:31:00+00:00",
            "type": "Feature",
            "geometry": {
                "type": "Point",
                "coordinates": [
                    -97.650000000000006,
                    39.539999999999999
                ]
            },
            "properties": {
                "@id": "https://api.weather.gov/stations/KCNK/observations/2019-08-16T03:31:00+00:00",
                "@type": "wx:ObservationStation",
                "elevation": {
                    "value": 452,
                    "unitCode": "unit:m"
                },
                "station": "https://api.weather.gov/stations/KCNK",
                "timestamp": "2019-08-16T03:31:00+00:00",
                "rawMessage": "KCNK 160331Z AUTO 05008KT 10SM BKN019 BKN036 22/19 A2990 RMK AO2 T02220194",
                "textDescription": "Mostly Cloudy",
                "icon": "https://api.weather.gov/icons/land/night/bkn?size=medium",
                "presentWeather": [],
                "temperature": {
                    "value": 22.200000000000045,
                    "unitCode": "unit:degC",
                    "qualityControl": "qc:V"
                },
                "dewpoint": {
                    "value": 19.400000000000034,
                    "unitCode": "unit:degC",
                    "qualityControl": "qc:V"
                },
                "windDirection": {
                    "value": 50,
                    "unitCode": "unit:degree_(angle)",
                    "qualityControl": "qc:V"
                },
                "windSpeed": {
                    "value": 4.0999999999999996,
                    "unitCode": "unit:m_s-1",
                    "qualityControl": "qc:V"
                },
                "windGust": {
                    "value": null,
                    "unitCode": "unit:m_s-1",
                    "qualityControl": "qc:Z"
                },
                "barometricPressure": {
                    "value": 101250,
                    "unitCode": "unit:Pa",
                    "qualityControl": "qc:V"
                },
                "seaLevelPressure": {
                    "value": null,
                    "unitCode": "unit:Pa",
                    "qualityControl": "qc:Z"
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
                    "value": 84.172308156336697,
                    "unitCode": "unit:percent",
                    "qualityControl": "qc:C"
                },
                "windChill": {
                    "value": null,
                    "unitCode": "unit:degC",
                    "qualityControl": "qc:V"
                },
                "heatIndex": {
                    "value": 22.673388046304353,
                    "unitCode": "unit:degC",
                    "qualityControl": "qc:V"
                },
                "cloudLayers": [
                    {
                        "base": {
                            "value": 580,
                            "unitCode": "unit:m"
                        },
                        "amount": "BKN"
                    },
                    {
                        "base": {
                            "value": 1100,
                            "unitCode": "unit:m"
                        },
                        "amount": "BKN"
                    }
                ]
            }
        },
        {
            "id": "https://api.weather.gov/stations/KCNK/observations/2019-08-16T02:55:00+00:00",
            "type": "Feature",
            "geometry": {
                "type": "Point",
                "coordinates": [
                    -97.650000000000006,
                    39.539999999999999
                ]
            },
            "properties": {
                "@id": "https://api.weather.gov/stations/KCNK/observations/2019-08-16T02:55:00+00:00",
                "@type": "wx:ObservationStation",
                "elevation": {
                    "value": 452,
                    "unitCode": "unit:m"
                },
                "station": "https://api.weather.gov/stations/KCNK",
                "timestamp": "2019-08-16T02:55:00+00:00",
                "rawMessage": "KCNK 160255Z AUTO 06010KT 10SM FEW048 22/19 A2989 RMK AO2 SLP108 T02220194 51018",
                "textDescription": "Mostly Clear",
                "icon": "https://api.weather.gov/icons/land/night/few?size=medium",
                "presentWeather": [],
                "temperature": {
                    "value": 22.200000000000045,
                    "unitCode": "unit:degC",
                    "qualityControl": "qc:V"
                },
                "dewpoint": {
                    "value": 19.400000000000034,
                    "unitCode": "unit:degC",
                    "qualityControl": "qc:V"
                },
                "windDirection": {
                    "value": 59.999999999999993,
                    "unitCode": "unit:degree_(angle)",
                    "qualityControl": "qc:V"
                },
                "windSpeed": {
                    "value": 5.0999999999999996,
                    "unitCode": "unit:m_s-1",
                    "qualityControl": "qc:V"
                },
                "windGust": {
                    "value": null,
                    "unitCode": "unit:m_s-1",
                    "qualityControl": "qc:Z"
                },
                "barometricPressure": {
                    "value": 101220,
                    "unitCode": "unit:Pa",
                    "qualityControl": "qc:V"
                },
                "seaLevelPressure": {
                    "value": 101080,
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
                    "value": 84.172308156336697,
                    "unitCode": "unit:percent",
                    "qualityControl": "qc:C"
                },
                "windChill": {
                    "value": null,
                    "unitCode": "unit:degC",
                    "qualityControl": "qc:V"
                },
                "heatIndex": {
                    "value": 22.673388046304353,
                    "unitCode": "unit:degC",
                    "qualityControl": "qc:V"
                },
                "cloudLayers": [
                    {
                        "base": {
                            "value": 1460,
                            "unitCode": "unit:m"
                        },
                        "amount": "FEW"
                    }
                ]
            }
        },
        {
            "id": "https://api.weather.gov/stations/KCNK/observations/2019-08-16T01:55:00+00:00",
            "type": "Feature",
            "geometry": {
                "type": "Point",
                "coordinates": [
                    -97.650000000000006,
                    39.539999999999999
                ]
            },
            "properties": {
                "@id": "https://api.weather.gov/stations/KCNK/observations/2019-08-16T01:55:00+00:00",
                "@type": "wx:ObservationStation",
                "elevation": {
                    "value": 452,
                    "unitCode": "unit:m"
                },
                "station": "https://api.weather.gov/stations/KCNK",
                "timestamp": "2019-08-16T01:55:00+00:00",
                "rawMessage": "KCNK 160155Z AUTO 02012KT 10SM FEW080 23/21 A2987 RMK AO2 LTG DSNT SE SLP101 T02330206",
                "textDescription": "Mostly Clear",
                "icon": "https://api.weather.gov/icons/land/night/few?size=medium",
                "presentWeather": [],
                "temperature": {
                    "value": 23.300000000000011,
                    "unitCode": "unit:degC",
                    "qualityControl": "qc:V"
                },
                "dewpoint": {
                    "value": 20.600000000000023,
                    "unitCode": "unit:degC",
                    "qualityControl": "qc:V"
                },
                "windDirection": {
                    "value": 20,
                    "unitCode": "unit:degree_(angle)",
                    "qualityControl": "qc:V"
                },
                "windSpeed": {
                    "value": 6.2000000000000002,
                    "unitCode": "unit:m_s-1",
                    "qualityControl": "qc:V"
                },
                "windGust": {
                    "value": null,
                    "unitCode": "unit:m_s-1",
                    "qualityControl": "qc:Z"
                },
                "barometricPressure": {
                    "value": 101150,
                    "unitCode": "unit:Pa",
                    "qualityControl": "qc:V"
                },
                "seaLevelPressure": {
                    "value": 101010,
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
                    "value": 84.81386701079137,
                    "unitCode": "unit:percent",
                    "qualityControl": "qc:C"
                },
                "windChill": {
                    "value": null,
                    "unitCode": "unit:degC",
                    "qualityControl": "qc:V"
                },
                "heatIndex": {
                    "value": 23.900139860837328,
                    "unitCode": "unit:degC",
                    "qualityControl": "qc:V"
                },
                "cloudLayers": [
                    {
                        "base": {
                            "value": 2440,
                            "unitCode": "unit:m"
                        },
                        "amount": "FEW"
                    }
                ]
            }
        },
        {
            "id": "https://api.weather.gov/stations/KCNK/observations/2019-08-16T00:55:00+00:00",
            "type": "Feature",
            "geometry": {
                "type": "Point",
                "coordinates": [
                    -97.650000000000006,
                    39.539999999999999
                ]
            },
            "properties": {
                "@id": "https://api.weather.gov/stations/KCNK/observations/2019-08-16T00:55:00+00:00",
                "@type": "wx:ObservationStation",
                "elevation": {
                    "value": 452,
                    "unitCode": "unit:m"
                },
                "station": "https://api.weather.gov/stations/KCNK",
                "timestamp": "2019-08-16T00:55:00+00:00",
                "rawMessage": "KCNK 160055Z AUTO 02010KT 10SM SCT060 BKN075 BKN095 26/22 A2987 RMK AO2 SLP101 T02610222",
                "textDescription": "Mostly Cloudy",
                "icon": "https://api.weather.gov/icons/land/night/bkn?size=medium",
                "presentWeather": [],
                "temperature": {
                    "value": 26.100000000000023,
                    "unitCode": "unit:degC",
                    "qualityControl": "qc:V"
                },
                "dewpoint": {
                    "value": 22.200000000000045,
                    "unitCode": "unit:degC",
                    "qualityControl": "qc:V"
                },
                "windDirection": {
                    "value": 20,
                    "unitCode": "unit:degree_(angle)",
                    "qualityControl": "qc:V"
                },
                "windSpeed": {
                    "value": 5.0999999999999996,
                    "unitCode": "unit:m_s-1",
                    "qualityControl": "qc:V"
                },
                "windGust": {
                    "value": null,
                    "unitCode": "unit:m_s-1",
                    "qualityControl": "qc:Z"
                },
                "barometricPressure": {
                    "value": 101150,
                    "unitCode": "unit:Pa",
                    "qualityControl": "qc:V"
                },
                "seaLevelPressure": {
                    "value": 101010,
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
                    "value": 79.134545712333747,
                    "unitCode": "unit:percent",
                    "qualityControl": "qc:C"
                },
                "windChill": {
                    "value": null,
                    "unitCode": "unit:degC",
                    "qualityControl": "qc:V"
                },
                "heatIndex": {
                    "value": 27.822634461996927,
                    "unitCode": "unit:degC",
                    "qualityControl": "qc:V"
                },
                "cloudLayers": [
                    {
                        "base": {
                            "value": 1830,
                            "unitCode": "unit:m"
                        },
                        "amount": "SCT"
                    },
                    {
                        "base": {
                            "value": 2290,
                            "unitCode": "unit:m"
                        },
                        "amount": "BKN"
                    },
                    {
                        "base": {
                            "value": 2900,
                            "unitCode": "unit:m"
                        },
                        "amount": "BKN"
                    }
                ]
            }
        },
        {
            "id": "https://api.weather.gov/stations/KCNK/observations/2019-08-15T23:55:00+00:00",
            "type": "Feature",
            "geometry": {
                "type": "Point",
                "coordinates": [
                    -97.650000000000006,
                    39.539999999999999
                ]
            },
            "properties": {
                "@id": "https://api.weather.gov/stations/KCNK/observations/2019-08-15T23:55:00+00:00",
                "@type": "wx:ObservationStation",
                "elevation": {
                    "value": 452,
                    "unitCode": "unit:m"
                },
                "station": "https://api.weather.gov/stations/KCNK",
                "timestamp": "2019-08-15T23:55:00+00:00",
                "rawMessage": "KCNK 152355Z AUTO 08005KT 10SM SCT070 27/22 A2984 RMK AO2 SLP089 T02720222 10283 20233 58016",
                "textDescription": "Partly Cloudy",
                "icon": "https://api.weather.gov/icons/land/day/sct?size=medium",
                "presentWeather": [],
                "temperature": {
                    "value": 27.200000000000045,
                    "unitCode": "unit:degC",
                    "qualityControl": "qc:V"
                },
                "dewpoint": {
                    "value": 22.200000000000045,
                    "unitCode": "unit:degC",
                    "qualityControl": "qc:V"
                },
                "windDirection": {
                    "value": 80,
                    "unitCode": "unit:degree_(angle)",
                    "qualityControl": "qc:V"
                },
                "windSpeed": {
                    "value": 2.6000000000000001,
                    "unitCode": "unit:m_s-1",
                    "qualityControl": "qc:V"
                },
                "windGust": {
                    "value": null,
                    "unitCode": "unit:m_s-1",
                    "qualityControl": "qc:Z"
                },
                "barometricPressure": {
                    "value": 101050,
                    "unitCode": "unit:Pa",
                    "qualityControl": "qc:V"
                },
                "seaLevelPressure": {
                    "value": 100890,
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
                    "value": 74.170383642778674,
                    "unitCode": "unit:percent",
                    "qualityControl": "qc:C"
                },
                "windChill": {
                    "value": null,
                    "unitCode": "unit:degC",
                    "qualityControl": "qc:V"
                },
                "heatIndex": {
                    "value": 29.595274034273416,
                    "unitCode": "unit:degC",
                    "qualityControl": "qc:V"
                },
                "cloudLayers": [
                    {
                        "base": {
                            "value": 2130,
                            "unitCode": "unit:m"
                        },
                        "amount": "SCT"
                    }
                ]
            }
        },
        {
            "id": "https://api.weather.gov/stations/KCNK/observations/2019-08-15T22:55:00+00:00",
            "type": "Feature",
            "geometry": {
                "type": "Point",
                "coordinates": [
                    -97.650000000000006,
                    39.539999999999999
                ]
            },
            "properties": {
                "@id": "https://api.weather.gov/stations/KCNK/observations/2019-08-15T22:55:00+00:00",
                "@type": "wx:ObservationStation",
                "elevation": {
                    "value": 452,
                    "unitCode": "unit:m"
                },
                "station": "https://api.weather.gov/stations/KCNK",
                "timestamp": "2019-08-15T22:55:00+00:00",
                "rawMessage": "KCNK 152255Z AUTO 07009KT 10SM SCT070 28/22 A2986 RMK AO2 SLP096 T02780222",
                "textDescription": "Partly Cloudy",
                "icon": "https://api.weather.gov/icons/land/day/sct?size=medium",
                "presentWeather": [],
                "temperature": {
                    "value": 27.800000000000011,
                    "unitCode": "unit:degC",
                    "qualityControl": "qc:V"
                },
                "dewpoint": {
                    "value": 22.200000000000045,
                    "unitCode": "unit:degC",
                    "qualityControl": "qc:V"
                },
                "windDirection": {
                    "value": 70,
                    "unitCode": "unit:degree_(angle)",
                    "qualityControl": "qc:V"
                },
                "windSpeed": {
                    "value": 4.5999999999999996,
                    "unitCode": "unit:m_s-1",
                    "qualityControl": "qc:V"
                },
                "windGust": {
                    "value": null,
                    "unitCode": "unit:m_s-1",
                    "qualityControl": "qc:Z"
                },
                "barometricPressure": {
                    "value": 101120,
                    "unitCode": "unit:Pa",
                    "qualityControl": "qc:V"
                },
                "seaLevelPressure": {
                    "value": 100960,
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
                    "value": 71.611070922139007,
                    "unitCode": "unit:percent",
                    "qualityControl": "qc:C"
                },
                "windChill": {
                    "value": null,
                    "unitCode": "unit:degC",
                    "qualityControl": "qc:V"
                },
                "heatIndex": {
                    "value": 30.483823422256705,
                    "unitCode": "unit:degC",
                    "qualityControl": "qc:V"
                },
                "cloudLayers": [
                    {
                        "base": {
                            "value": 2130,
                            "unitCode": "unit:m"
                        },
                        "amount": "SCT"
                    }
                ]
            }
        },
        {
            "id": "https://api.weather.gov/stations/KCNK/observations/2019-08-15T21:55:00+00:00",
            "type": "Feature",
            "geometry": {
                "type": "Point",
                "coordinates": [
                    -97.650000000000006,
                    39.539999999999999
                ]
            },
            "properties": {
                "@id": "https://api.weather.gov/stations/KCNK/observations/2019-08-15T21:55:00+00:00",
                "@type": "wx:ObservationStation",
                "elevation": {
                    "value": 452,
                    "unitCode": "unit:m"
                },
                "station": "https://api.weather.gov/stations/KCNK",
                "timestamp": "2019-08-15T21:55:00+00:00",
                "rawMessage": "KCNK 152155Z AUTO 09009KT 10SM CLR 28/22 A2987 RMK AO2 SLP102 T02830222",
                "textDescription": "Clear",
                "icon": "https://api.weather.gov/icons/land/day/skc?size=medium",
                "presentWeather": [],
                "temperature": {
                    "value": 28.300000000000011,
                    "unitCode": "unit:degC",
                    "qualityControl": "qc:V"
                },
                "dewpoint": {
                    "value": 22.200000000000045,
                    "unitCode": "unit:degC",
                    "qualityControl": "qc:V"
                },
                "windDirection": {
                    "value": 90,
                    "unitCode": "unit:degree_(angle)",
                    "qualityControl": "qc:V"
                },
                "windSpeed": {
                    "value": 4.5999999999999996,
                    "unitCode": "unit:m_s-1",
                    "qualityControl": "qc:V"
                },
                "windGust": {
                    "value": null,
                    "unitCode": "unit:m_s-1",
                    "qualityControl": "qc:Z"
                },
                "barometricPressure": {
                    "value": 101150,
                    "unitCode": "unit:Pa",
                    "qualityControl": "qc:V"
                },
                "seaLevelPressure": {
                    "value": 101020,
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
                    "value": 69.554151666156898,
                    "unitCode": "unit:percent",
                    "qualityControl": "qc:C"
                },
                "windChill": {
                    "value": null,
                    "unitCode": "unit:degC",
                    "qualityControl": "qc:V"
                },
                "heatIndex": {
                    "value": 31.192723732388856,
                    "unitCode": "unit:degC",
                    "qualityControl": "qc:V"
                },
                "cloudLayers": [
                    {
                        "base": {
                            "value": null,
                            "unitCode": "unit:m"
                        },
                        "amount": "CLR"
                    }
                ]
            }
        },
        {
            "id": "https://api.weather.gov/stations/KCNK/observations/2019-08-15T20:55:00+00:00",
            "type": "Feature",
            "geometry": {
                "type": "Point",
                "coordinates": [
                    -97.650000000000006,
                    39.539999999999999
                ]
            },
            "properties": {
                "@id": "https://api.weather.gov/stations/KCNK/observations/2019-08-15T20:55:00+00:00",
                "@type": "wx:ObservationStation",
                "elevation": {
                    "value": 452,
                    "unitCode": "unit:m"
                },
                "station": "https://api.weather.gov/stations/KCNK",
                "timestamp": "2019-08-15T20:55:00+00:00",
                "rawMessage": "KCNK 152055Z AUTO 12013G21KT 10SM CLR 27/21 A2989 RMK AO2 SLP107 T02670211 56038",
                "textDescription": "Clear",
                "icon": "https://api.weather.gov/icons/land/day/skc?size=medium",
                "presentWeather": [],
                "temperature": {
                    "value": 26.700000000000045,
                    "unitCode": "unit:degC",
                    "qualityControl": "qc:V"
                },
                "dewpoint": {
                    "value": 21.100000000000023,
                    "unitCode": "unit:degC",
                    "qualityControl": "qc:V"
                },
                "windDirection": {
                    "value": 119.99999999999999,
                    "unitCode": "unit:degree_(angle)",
                    "qualityControl": "qc:V"
                },
                "windSpeed": {
                    "value": 6.7000000000000002,
                    "unitCode": "unit:m_s-1",
                    "qualityControl": "qc:V"
                },
                "windGust": {
                    "value": 10.800000000000001,
                    "unitCode": "unit:m_s-1",
                    "qualityControl": "qc:S"
                },
                "barometricPressure": {
                    "value": 101220,
                    "unitCode": "unit:Pa",
                    "qualityControl": "qc:V"
                },
                "seaLevelPressure": {
                    "value": 101070,
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
                    "value": 71.413839909532641,
                    "unitCode": "unit:percent",
                    "qualityControl": "qc:C"
                },
                "windChill": {
                    "value": null,
                    "unitCode": "unit:degC",
                    "qualityControl": "qc:V"
                },
                "heatIndex": {
                    "value": 28.459024571508394,
                    "unitCode": "unit:degC",
                    "qualityControl": "qc:V"
                },
                "cloudLayers": [
                    {
                        "base": {
                            "value": null,
                            "unitCode": "unit:m"
                        },
                        "amount": "CLR"
                    }
                ]
            }
        },
        {
            "id": "https://api.weather.gov/stations/KCNK/observations/2019-08-15T19:55:00+00:00",
            "type": "Feature",
            "geometry": {
                "type": "Point",
                "coordinates": [
                    -97.650000000000006,
                    39.539999999999999
                ]
            },
            "properties": {
                "@id": "https://api.weather.gov/stations/KCNK/observations/2019-08-15T19:55:00+00:00",
                "@type": "wx:ObservationStation",
                "elevation": {
                    "value": 452,
                    "unitCode": "unit:m"
                },
                "station": "https://api.weather.gov/stations/KCNK",
                "timestamp": "2019-08-15T19:55:00+00:00",
                "rawMessage": "KCNK 151955Z AUTO 11012G20KT 10SM FEW055 25/21 A2992 RMK AO2 SLP121 T02500206",
                "textDescription": "Mostly Clear",
                "icon": "https://api.weather.gov/icons/land/day/few?size=medium",
                "presentWeather": [],
                "temperature": {
                    "value": 25,
                    "unitCode": "unit:degC",
                    "qualityControl": "qc:V"
                },
                "dewpoint": {
                    "value": 20.600000000000023,
                    "unitCode": "unit:degC",
                    "qualityControl": "qc:V"
                },
                "windDirection": {
                    "value": 110,
                    "unitCode": "unit:degree_(angle)",
                    "qualityControl": "qc:V"
                },
                "windSpeed": {
                    "value": 6.2000000000000002,
                    "unitCode": "unit:m_s-1",
                    "qualityControl": "qc:V"
                },
                "windGust": {
                    "value": 10.300000000000001,
                    "unitCode": "unit:m_s-1",
                    "qualityControl": "qc:S"
                },
                "barometricPressure": {
                    "value": 101320,
                    "unitCode": "unit:Pa",
                    "qualityControl": "qc:V"
                },
                "seaLevelPressure": {
                    "value": 101210,
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
                    "value": 76.589075240688075,
                    "unitCode": "unit:percent",
                    "qualityControl": "qc:C"
                },
                "windChill": {
                    "value": null,
                    "unitCode": "unit:degC",
                    "qualityControl": "qc:V"
                },
                "heatIndex": {
                    "value": 25.55538140906242,
                    "unitCode": "unit:degC",
                    "qualityControl": "qc:V"
                },
                "cloudLayers": [
                    {
                        "base": {
                            "value": 1680,
                            "unitCode": "unit:m"
                        },
                        "amount": "FEW"
                    }
                ]
            }
        },
        {
            "id": "https://api.weather.gov/stations/KCNK/observations/2019-08-15T18:55:00+00:00",
            "type": "Feature",
            "geometry": {
                "type": "Point",
                "coordinates": [
                    -97.650000000000006,
                    39.539999999999999
                ]
            },
            "properties": {
                "@id": "https://api.weather.gov/stations/KCNK/observations/2019-08-15T18:55:00+00:00",
                "@type": "wx:ObservationStation",
                "elevation": {
                    "value": 452,
                    "unitCode": "unit:m"
                },
                "station": "https://api.weather.gov/stations/KCNK",
                "timestamp": "2019-08-15T18:55:00+00:00",
                "rawMessage": "KCNK 151855Z AUTO 09013G24KT 10SM BKN044 24/19 A2995 RMK AO2 SLP130 T02390194",
                "textDescription": "Mostly Cloudy",
                "icon": "https://api.weather.gov/icons/land/day/bkn?size=medium",
                "presentWeather": [],
                "temperature": {
                    "value": 23.900000000000034,
                    "unitCode": "unit:degC",
                    "qualityControl": "qc:V"
                },
                "dewpoint": {
                    "value": 19.400000000000034,
                    "unitCode": "unit:degC",
                    "qualityControl": "qc:V"
                },
                "windDirection": {
                    "value": 90,
                    "unitCode": "unit:degree_(angle)",
                    "qualityControl": "qc:V"
                },
                "windSpeed": {
                    "value": 6.7000000000000002,
                    "unitCode": "unit:m_s-1",
                    "qualityControl": "qc:V"
                },
                "windGust": {
                    "value": null,
                    "unitCode": "unit:m_s-1",
                    "qualityControl": "qc:Z"
                },
                "barometricPressure": {
                    "value": 101420,
                    "unitCode": "unit:Pa",
                    "qualityControl": "qc:V"
                },
                "seaLevelPressure": {
                    "value": 101300,
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
                    "value": 75.945521582945617,
                    "unitCode": "unit:percent",
                    "qualityControl": "qc:C"
                },
                "windChill": {
                    "value": null,
                    "unitCode": "unit:degC",
                    "qualityControl": "qc:V"
                },
                "heatIndex": {
                    "value": 24.328577507999228,
                    "unitCode": "unit:degC",
                    "qualityControl": "qc:V"
                },
                "cloudLayers": [
                    {
                        "base": {
                            "value": 1340,
                            "unitCode": "unit:m"
                        },
                        "amount": "BKN"
                    }
                ]
            }
        },
        {
            "id": "https://api.weather.gov/stations/KCNK/observations/2019-08-15T18:30:00+00:00",
            "type": "Feature",
            "geometry": {
                "type": "Point",
                "coordinates": [
                    -97.650000000000006,
                    39.539999999999999
                ]
            },
            "properties": {
                "@id": "https://api.weather.gov/stations/KCNK/observations/2019-08-15T18:30:00+00:00",
                "@type": "wx:ObservationStation",
                "elevation": {
                    "value": 452,
                    "unitCode": "unit:m"
                },
                "station": "https://api.weather.gov/stations/KCNK",
                "timestamp": "2019-08-15T18:30:00+00:00",
                "rawMessage": "KCNK 151830Z AUTO 07010KT 10SM SCT015 BKN032 OVC039 23/19 A2998 RMK AO2 T02330194",
                "textDescription": "Cloudy",
                "icon": "https://api.weather.gov/icons/land/day/ovc?size=medium",
                "presentWeather": [],
                "temperature": {
                    "value": 23.300000000000011,
                    "unitCode": "unit:degC",
                    "qualityControl": "qc:V"
                },
                "dewpoint": {
                    "value": 19.400000000000034,
                    "unitCode": "unit:degC",
                    "qualityControl": "qc:V"
                },
                "windDirection": {
                    "value": 70,
                    "unitCode": "unit:degree_(angle)",
                    "qualityControl": "qc:V"
                },
                "windSpeed": {
                    "value": 5.0999999999999996,
                    "unitCode": "unit:m_s-1",
                    "qualityControl": "qc:V"
                },
                "windGust": {
                    "value": null,
                    "unitCode": "unit:m_s-1",
                    "qualityControl": "qc:Z"
                },
                "barometricPressure": {
                    "value": 101520,
                    "unitCode": "unit:Pa",
                    "qualityControl": "qc:V"
                },
                "seaLevelPressure": {
                    "value": null,
                    "unitCode": "unit:Pa",
                    "qualityControl": "qc:Z"
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
                    "value": 78.741177808944954,
                    "unitCode": "unit:percent",
                    "qualityControl": "qc:C"
                },
                "windChill": {
                    "value": null,
                    "unitCode": "unit:degC",
                    "qualityControl": "qc:V"
                },
                "heatIndex": {
                    "value": 23.741575198344606,
                    "unitCode": "unit:degC",
                    "qualityControl": "qc:V"
                },
                "cloudLayers": [
                    {
                        "base": {
                            "value": 460,
                            "unitCode": "unit:m"
                        },
                        "amount": "SCT"
                    },
                    {
                        "base": {
                            "value": 980,
                            "unitCode": "unit:m"
                        },
                        "amount": "BKN"
                    },
                    {
                        "base": {
                            "value": 1190,
                            "unitCode": "unit:m"
                        },
                        "amount": "OVC"
                    }
                ]
            }
        },
        {
            "id": "https://api.weather.gov/stations/KCNK/observations/2019-08-15T18:16:00+00:00",
            "type": "Feature",
            "geometry": {
                "type": "Point",
                "coordinates": [
                    -97.650000000000006,
                    39.539999999999999
                ]
            },
            "properties": {
                "@id": "https://api.weather.gov/stations/KCNK/observations/2019-08-15T18:16:00+00:00",
                "@type": "wx:ObservationStation",
                "elevation": {
                    "value": 452,
                    "unitCode": "unit:m"
                },
                "station": "https://api.weather.gov/stations/KCNK",
                "timestamp": "2019-08-15T18:16:00+00:00",
                "rawMessage": "KCNK 151816Z AUTO 06012KT 10SM BKN016 BKN022 OVC032 23/20 A2999 RMK AO2 T02330200",
                "textDescription": "Cloudy",
                "icon": "https://api.weather.gov/icons/land/day/ovc?size=medium",
                "presentWeather": [],
                "temperature": {
                    "value": 23.300000000000011,
                    "unitCode": "unit:degC",
                    "qualityControl": "qc:V"
                },
                "dewpoint": {
                    "value": 20,
                    "unitCode": "unit:degC",
                    "qualityControl": "qc:V"
                },
                "windDirection": {
                    "value": 59.999999999999993,
                    "unitCode": "unit:degree_(angle)",
                    "qualityControl": "qc:V"
                },
                "windSpeed": {
                    "value": 6.2000000000000002,
                    "unitCode": "unit:m_s-1",
                    "qualityControl": "qc:V"
                },
                "windGust": {
                    "value": null,
                    "unitCode": "unit:m_s-1",
                    "qualityControl": "qc:Z"
                },
                "barometricPressure": {
                    "value": 101560,
                    "unitCode": "unit:Pa",
                    "qualityControl": "qc:V"
                },
                "seaLevelPressure": {
                    "value": null,
                    "unitCode": "unit:Pa",
                    "qualityControl": "qc:Z"
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
                    "value": 81.728058918449136,
                    "unitCode": "unit:percent",
                    "qualityControl": "qc:C"
                },
                "windChill": {
                    "value": null,
                    "unitCode": "unit:degC",
                    "qualityControl": "qc:V"
                },
                "heatIndex": {
                    "value": 23.819565982870586,
                    "unitCode": "unit:degC",
                    "qualityControl": "qc:V"
                },
                "cloudLayers": [
                    {
                        "base": {
                            "value": 490,
                            "unitCode": "unit:m"
                        },
                        "amount": "BKN"
                    },
                    {
                        "base": {
                            "value": 670,
                            "unitCode": "unit:m"
                        },
                        "amount": "BKN"
                    },
                    {
                        "base": {
                            "value": 980,
                            "unitCode": "unit:m"
                        },
                        "amount": "OVC"
                    }
                ]
            }
        },
        {
            "id": "https://api.weather.gov/stations/KCNK/observations/2019-08-15T18:08:00+00:00",
            "type": "Feature",
            "geometry": {
                "type": "Point",
                "coordinates": [
                    -97.650000000000006,
                    39.539999999999999
                ]
            },
            "properties": {
                "@id": "https://api.weather.gov/stations/KCNK/observations/2019-08-15T18:08:00+00:00",
                "@type": "wx:ObservationStation",
                "elevation": {
                    "value": 452,
                    "unitCode": "unit:m"
                },
                "station": "https://api.weather.gov/stations/KCNK",
                "timestamp": "2019-08-15T18:08:00+00:00",
                "rawMessage": "KCNK 151808Z AUTO 05012KT 10SM BKN014 BKN019 BKN032 23/20 A3000 RMK AO2 T02330200",
                "textDescription": "Mostly Cloudy",
                "icon": "https://api.weather.gov/icons/land/day/bkn?size=medium",
                "presentWeather": [],
                "temperature": {
                    "value": 23.300000000000011,
                    "unitCode": "unit:degC",
                    "qualityControl": "qc:V"
                },
                "dewpoint": {
                    "value": 20,
                    "unitCode": "unit:degC",
                    "qualityControl": "qc:V"
                },
                "windDirection": {
                    "value": 50,
                    "unitCode": "unit:degree_(angle)",
                    "qualityControl": "qc:V"
                },
                "windSpeed": {
                    "value": 6.2000000000000002,
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
                    "value": null,
                    "unitCode": "unit:Pa",
                    "qualityControl": "qc:Z"
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
                    "value": 81.728058918449136,
                    "unitCode": "unit:percent",
                    "qualityControl": "qc:C"
                },
                "windChill": {
                    "value": null,
                    "unitCode": "unit:degC",
                    "qualityControl": "qc:V"
                },
                "heatIndex": {
                    "value": 23.819565982870586,
                    "unitCode": "unit:degC",
                    "qualityControl": "qc:V"
                },
                "cloudLayers": [
                    {
                        "base": {
                            "value": 430,
                            "unitCode": "unit:m"
                        },
                        "amount": "BKN"
                    },
                    {
                        "base": {
                            "value": 580,
                            "unitCode": "unit:m"
                        },
                        "amount": "BKN"
                    },
                    {
                        "base": {
                            "value": 980,
                            "unitCode": "unit:m"
                        },
                        "amount": "BKN"
                    }
                ]
            }
        },
        {
            "id": "https://api.weather.gov/stations/KCNK/observations/2019-08-15T17:55:00+00:00",
            "type": "Feature",
            "geometry": {
                "type": "Point",
                "coordinates": [
                    -97.650000000000006,
                    39.539999999999999
                ]
            },
            "properties": {
                "@id": "https://api.weather.gov/stations/KCNK/observations/2019-08-15T17:55:00+00:00",
                "@type": "wx:ObservationStation",
                "elevation": {
                    "value": 452,
                    "unitCode": "unit:m"
                },
                "station": "https://api.weather.gov/stations/KCNK",
                "timestamp": "2019-08-15T17:55:00+00:00",
                "rawMessage": "KCNK 151755Z AUTO 05011KT 10SM FEW015 SCT021 BKN032 24/21 A3000 RMK AO2 RAB31E41 SLP148 P0000 60000 T02440206 10261 20178 58009",
                "textDescription": "Mostly Cloudy",
                "icon": "https://api.weather.gov/icons/land/day/bkn?size=medium",
                "presentWeather": [],
                "temperature": {
                    "value": 24.400000000000034,
                    "unitCode": "unit:degC",
                    "qualityControl": "qc:V"
                },
                "dewpoint": {
                    "value": 20.600000000000023,
                    "unitCode": "unit:degC",
                    "qualityControl": "qc:V"
                },
                "windDirection": {
                    "value": 50,
                    "unitCode": "unit:degree_(angle)",
                    "qualityControl": "qc:V"
                },
                "windSpeed": {
                    "value": 5.7000000000000002,
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
                    "value": 101480,
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
                    "value": 0,
                    "unitCode": "unit:m",
                    "qualityControl": "qc:C"
                },
                "precipitationLast3Hours": {
                    "value": null,
                    "unitCode": "unit:m",
                    "qualityControl": "qc:Z"
                },
                "precipitationLast6Hours": {
                    "value": 0,
                    "unitCode": "unit:m",
                    "qualityControl": "qc:C"
                },
                "relativeHumidity": {
                    "value": 79.384885834063127,
                    "unitCode": "unit:percent",
                    "qualityControl": "qc:C"
                },
                "windChill": {
                    "value": null,
                    "unitCode": "unit:degC",
                    "qualityControl": "qc:V"
                },
                "heatIndex": {
                    "value": 24.968383130111704,
                    "unitCode": "unit:degC",
                    "qualityControl": "qc:V"
                },
                "cloudLayers": [
                    {
                        "base": {
                            "value": 460,
                            "unitCode": "unit:m"
                        },
                        "amount": "FEW"
                    },
                    {
                        "base": {
                            "value": 640,
                            "unitCode": "unit:m"
                        },
                        "amount": "SCT"
                    },
                    {
                        "base": {
                            "value": 980,
                            "unitCode": "unit:m"
                        },
                        "amount": "BKN"
                    }
                ]
            }
        },
        {
            "id": "https://api.weather.gov/stations/KCNK/observations/2019-08-15T16:55:00+00:00",
            "type": "Feature",
            "geometry": {
                "type": "Point",
                "coordinates": [
                    -97.650000000000006,
                    39.539999999999999
                ]
            },
            "properties": {
                "@id": "https://api.weather.gov/stations/KCNK/observations/2019-08-15T16:55:00+00:00",
                "@type": "wx:ObservationStation",
                "elevation": {
                    "value": 452,
                    "unitCode": "unit:m"
                },
                "station": "https://api.weather.gov/stations/KCNK",
                "timestamp": "2019-08-15T16:55:00+00:00",
                "rawMessage": "KCNK 151655Z AUTO 10006KT 10SM FEW034 23/19 A3004 RMK AO2 LTG DSNT NE RAB28E43 SLP160 P0000 T02330194",
                "textDescription": "Mostly Clear",
                "icon": "https://api.weather.gov/icons/land/day/few?size=medium",
                "presentWeather": [],
                "temperature": {
                    "value": 23.300000000000011,
                    "unitCode": "unit:degC",
                    "qualityControl": "qc:V"
                },
                "dewpoint": {
                    "value": 19.400000000000034,
                    "unitCode": "unit:degC",
                    "qualityControl": "qc:V"
                },
                "windDirection": {
                    "value": 100,
                    "unitCode": "unit:degree_(angle)",
                    "qualityControl": "qc:V"
                },
                "windSpeed": {
                    "value": 3.1000000000000001,
                    "unitCode": "unit:m_s-1",
                    "qualityControl": "qc:V"
                },
                "windGust": {
                    "value": null,
                    "unitCode": "unit:m_s-1",
                    "qualityControl": "qc:Z"
                },
                "barometricPressure": {
                    "value": 101730,
                    "unitCode": "unit:Pa",
                    "qualityControl": "qc:V"
                },
                "seaLevelPressure": {
                    "value": 101600,
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
                    "value": 0,
                    "unitCode": "unit:m",
                    "qualityControl": "qc:C"
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
                    "value": 78.741177808944954,
                    "unitCode": "unit:percent",
                    "qualityControl": "qc:C"
                },
                "windChill": {
                    "value": null,
                    "unitCode": "unit:degC",
                    "qualityControl": "qc:V"
                },
                "heatIndex": {
                    "value": 23.741575198344606,
                    "unitCode": "unit:degC",
                    "qualityControl": "qc:V"
                },
                "cloudLayers": [
                    {
                        "base": {
                            "value": 1040,
                            "unitCode": "unit:m"
                        },
                        "amount": "FEW"
                    }
                ]
            }
        },
        {
            "id": "https://api.weather.gov/stations/KCNK/observations/2019-08-15T15:55:00+00:00",
            "type": "Feature",
            "geometry": {
                "type": "Point",
                "coordinates": [
                    -97.650000000000006,
                    39.539999999999999
                ]
            },
            "properties": {
                "@id": "https://api.weather.gov/stations/KCNK/observations/2019-08-15T15:55:00+00:00",
                "@type": "wx:ObservationStation",
                "elevation": {
                    "value": 452,
                    "unitCode": "unit:m"
                },
                "station": "https://api.weather.gov/stations/KCNK",
                "timestamp": "2019-08-15T15:55:00+00:00",
                "rawMessage": "KCNK 151555Z AUTO 12008KT 10SM CLR 23/19 A3001 RMK AO2 SLP152 T02330194",
                "textDescription": "Clear",
                "icon": "https://api.weather.gov/icons/land/day/skc?size=medium",
                "presentWeather": [],
                "temperature": {
                    "value": 23.300000000000011,
                    "unitCode": "unit:degC",
                    "qualityControl": "qc:V"
                },
                "dewpoint": {
                    "value": 19.400000000000034,
                    "unitCode": "unit:degC",
                    "qualityControl": "qc:V"
                },
                "windDirection": {
                    "value": 119.99999999999999,
                    "unitCode": "unit:degree_(angle)",
                    "qualityControl": "qc:V"
                },
                "windSpeed": {
                    "value": 4.0999999999999996,
                    "unitCode": "unit:m_s-1",
                    "qualityControl": "qc:V"
                },
                "windGust": {
                    "value": null,
                    "unitCode": "unit:m_s-1",
                    "qualityControl": "qc:Z"
                },
                "barometricPressure": {
                    "value": 101630,
                    "unitCode": "unit:Pa",
                    "qualityControl": "qc:V"
                },
                "seaLevelPressure": {
                    "value": 101520,
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
                    "value": 78.741177808944954,
                    "unitCode": "unit:percent",
                    "qualityControl": "qc:C"
                },
                "windChill": {
                    "value": null,
                    "unitCode": "unit:degC",
                    "qualityControl": "qc:V"
                },
                "heatIndex": {
                    "value": 23.741575198344606,
                    "unitCode": "unit:degC",
                    "qualityControl": "qc:V"
                },
                "cloudLayers": [
                    {
                        "base": {
                            "value": null,
                            "unitCode": "unit:m"
                        },
                        "amount": "CLR"
                    }
                ]
            }
        },
        {
            "id": "https://api.weather.gov/stations/KCNK/observations/2019-08-15T14:55:00+00:00",
            "type": "Feature",
            "geometry": {
                "type": "Point",
                "coordinates": [
                    -97.650000000000006,
                    39.539999999999999
                ]
            },
            "properties": {
                "@id": "https://api.weather.gov/stations/KCNK/observations/2019-08-15T14:55:00+00:00",
                "@type": "wx:ObservationStation",
                "elevation": {
                    "value": 452,
                    "unitCode": "unit:m"
                },
                "station": "https://api.weather.gov/stations/KCNK",
                "timestamp": "2019-08-15T14:55:00+00:00",
                "rawMessage": "KCNK 151455Z AUTO 14011KT 10SM BKN045 BKN055 23/19 A3003 RMK AO2 SLP158 T02280189 58009",
                "textDescription": "Mostly Cloudy",
                "icon": "https://api.weather.gov/icons/land/day/bkn?size=medium",
                "presentWeather": [],
                "temperature": {
                    "value": 22.800000000000011,
                    "unitCode": "unit:degC",
                    "qualityControl": "qc:V"
                },
                "dewpoint": {
                    "value": 18.900000000000034,
                    "unitCode": "unit:degC",
                    "qualityControl": "qc:V"
                },
                "windDirection": {
                    "value": 140,
                    "unitCode": "unit:degree_(angle)",
                    "qualityControl": "qc:V"
                },
                "windSpeed": {
                    "value": 5.7000000000000002,
                    "unitCode": "unit:m_s-1",
                    "qualityControl": "qc:V"
                },
                "windGust": {
                    "value": null,
                    "unitCode": "unit:m_s-1",
                    "qualityControl": "qc:Z"
                },
                "barometricPressure": {
                    "value": 101690,
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
                    "value": 78.669823181656085,
                    "unitCode": "unit:percent",
                    "qualityControl": "qc:C"
                },
                "windChill": {
                    "value": null,
                    "unitCode": "unit:degC",
                    "qualityControl": "qc:V"
                },
                "heatIndex": {
                    "value": 23.189712049743207,
                    "unitCode": "unit:degC",
                    "qualityControl": "qc:V"
                },
                "cloudLayers": [
                    {
                        "base": {
                            "value": 1370,
                            "unitCode": "unit:m"
                        },
                        "amount": "BKN"
                    },
                    {
                        "base": {
                            "value": 1680,
                            "unitCode": "unit:m"
                        },
                        "amount": "BKN"
                    }
                ]
            }
        },
        {
            "id": "https://api.weather.gov/stations/KCNK/observations/2019-08-15T13:55:00+00:00",
            "type": "Feature",
            "geometry": {
                "type": "Point",
                "coordinates": [
                    -97.650000000000006,
                    39.539999999999999
                ]
            },
            "properties": {
                "@id": "https://api.weather.gov/stations/KCNK/observations/2019-08-15T13:55:00+00:00",
                "@type": "wx:ObservationStation",
                "elevation": {
                    "value": 452,
                    "unitCode": "unit:m"
                },
                "station": "https://api.weather.gov/stations/KCNK",
                "timestamp": "2019-08-15T13:55:00+00:00",
                "rawMessage": "KCNK 151355Z AUTO 14010KT 10SM SCT060 22/19 A3005 RMK AO2 SLP162 T02170189",
                "textDescription": "Partly Cloudy",
                "icon": "https://api.weather.gov/icons/land/day/sct?size=medium",
                "presentWeather": [],
                "temperature": {
                    "value": 21.700000000000045,
                    "unitCode": "unit:degC",
                    "qualityControl": "qc:V"
                },
                "dewpoint": {
                    "value": 18.900000000000034,
                    "unitCode": "unit:degC",
                    "qualityControl": "qc:V"
                },
                "windDirection": {
                    "value": 140,
                    "unitCode": "unit:degree_(angle)",
                    "qualityControl": "qc:V"
                },
                "windSpeed": {
                    "value": 5.0999999999999996,
                    "unitCode": "unit:m_s-1",
                    "qualityControl": "qc:V"
                },
                "windGust": {
                    "value": null,
                    "unitCode": "unit:m_s-1",
                    "qualityControl": "qc:Z"
                },
                "barometricPressure": {
                    "value": 101760,
                    "unitCode": "unit:Pa",
                    "qualityControl": "qc:V"
                },
                "seaLevelPressure": {
                    "value": 101620,
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
                    "value": 84.11719815357354,
                    "unitCode": "unit:percent",
                    "qualityControl": "qc:C"
                },
                "windChill": {
                    "value": null,
                    "unitCode": "unit:degC",
                    "qualityControl": "qc:V"
                },
                "heatIndex": {
                    "value": 22.121949062898864,
                    "unitCode": "unit:degC",
                    "qualityControl": "qc:V"
                },
                "cloudLayers": [
                    {
                        "base": {
                            "value": 1830,
                            "unitCode": "unit:m"
                        },
                        "amount": "SCT"
                    }
                ]
            }
        },
        {
            "id": "https://api.weather.gov/stations/KCNK/observations/2019-08-15T12:55:00+00:00",
            "type": "Feature",
            "geometry": {
                "type": "Point",
                "coordinates": [
                    -97.650000000000006,
                    39.539999999999999
                ]
            },
            "properties": {
                "@id": "https://api.weather.gov/stations/KCNK/observations/2019-08-15T12:55:00+00:00",
                "@type": "wx:ObservationStation",
                "elevation": {
                    "value": 452,
                    "unitCode": "unit:m"
                },
                "station": "https://api.weather.gov/stations/KCNK",
                "timestamp": "2019-08-15T12:55:00+00:00",
                "rawMessage": "KCNK 151255Z AUTO 13006KT 10SM CLR 19/18 A3005 RMK AO2 SLP165 T01890178",
                "textDescription": "Clear",
                "icon": "https://api.weather.gov/icons/land/day/skc?size=medium",
                "presentWeather": [],
                "temperature": {
                    "value": 18.900000000000034,
                    "unitCode": "unit:degC",
                    "qualityControl": "qc:V"
                },
                "dewpoint": {
                    "value": 17.800000000000011,
                    "unitCode": "unit:degC",
                    "qualityControl": "qc:V"
                },
                "windDirection": {
                    "value": 130,
                    "unitCode": "unit:degree_(angle)",
                    "qualityControl": "qc:V"
                },
                "windSpeed": {
                    "value": 3.1000000000000001,
                    "unitCode": "unit:m_s-1",
                    "qualityControl": "qc:V"
                },
                "windGust": {
                    "value": null,
                    "unitCode": "unit:m_s-1",
                    "qualityControl": "qc:Z"
                },
                "barometricPressure": {
                    "value": 101760,
                    "unitCode": "unit:Pa",
                    "qualityControl": "qc:V"
                },
                "seaLevelPressure": {
                    "value": 101650,
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
                    "value": 93.336011600862747,
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
                            "value": null,
                            "unitCode": "unit:m"
                        },
                        "amount": "CLR"
                    }
                ]
            }
        },
        {
            "id": "https://api.weather.gov/stations/KCNK/observations/2019-08-15T11:55:00+00:00",
            "type": "Feature",
            "geometry": {
                "type": "Point",
                "coordinates": [
                    -97.650000000000006,
                    39.539999999999999
                ]
            },
            "properties": {
                "@id": "https://api.weather.gov/stations/KCNK/observations/2019-08-15T11:55:00+00:00",
                "@type": "wx:ObservationStation",
                "elevation": {
                    "value": 452,
                    "unitCode": "unit:m"
                },
                "station": "https://api.weather.gov/stations/KCNK",
                "timestamp": "2019-08-15T11:55:00+00:00",
                "rawMessage": "KCNK 151155Z AUTO 08003KT 10SM CLR 18/17 A3006 RMK AO2 SLP167 T01780167 10194 20178 56009",
                "textDescription": "Clear",
                "icon": "https://api.weather.gov/icons/land/day/skc?size=medium",
                "presentWeather": [],
                "temperature": {
                    "value": 17.800000000000011,
                    "unitCode": "unit:degC",
                    "qualityControl": "qc:V"
                },
                "dewpoint": {
                    "value": 16.700000000000045,
                    "unitCode": "unit:degC",
                    "qualityControl": "qc:V"
                },
                "windDirection": {
                    "value": 80,
                    "unitCode": "unit:degree_(angle)",
                    "qualityControl": "qc:V"
                },
                "windSpeed": {
                    "value": 1.5,
                    "unitCode": "unit:m_s-1",
                    "qualityControl": "qc:V"
                },
                "windGust": {
                    "value": null,
                    "unitCode": "unit:m_s-1",
                    "qualityControl": "qc:Z"
                },
                "barometricPressure": {
                    "value": 101800,
                    "unitCode": "unit:Pa",
                    "qualityControl": "qc:V"
                },
                "seaLevelPressure": {
                    "value": 101670,
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
                    "value": 93.281507422058723,
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
                            "value": null,
                            "unitCode": "unit:m"
                        },
                        "amount": "CLR"
                    }
                ]
            }
        },
        {
            "id": "https://api.weather.gov/stations/KCNK/observations/2019-08-15T10:55:00+00:00",
            "type": "Feature",
            "geometry": {
                "type": "Point",
                "coordinates": [
                    -97.650000000000006,
                    39.539999999999999
                ]
            },
            "properties": {
                "@id": "https://api.weather.gov/stations/KCNK/observations/2019-08-15T10:55:00+00:00",
                "@type": "wx:ObservationStation",
                "elevation": {
                    "value": 452,
                    "unitCode": "unit:m"
                },
                "station": "https://api.weather.gov/stations/KCNK",
                "timestamp": "2019-08-15T10:55:00+00:00",
                "rawMessage": "KCNK 151055Z AUTO 00000KT 10SM CLR 18/17 A3006 RMK AO2 SLP167 T01830172",
                "textDescription": "Clear",
                "icon": "https://api.weather.gov/icons/land/night/skc?size=medium",
                "presentWeather": [],
                "temperature": {
                    "value": 18.300000000000011,
                    "unitCode": "unit:degC",
                    "qualityControl": "qc:V"
                },
                "dewpoint": {
                    "value": 17.200000000000045,
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
                    "value": 101800,
                    "unitCode": "unit:Pa",
                    "qualityControl": "qc:V"
                },
                "seaLevelPressure": {
                    "value": 101670,
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
                    "value": 93.306363604192811,
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
                            "value": null,
                            "unitCode": "unit:m"
                        },
                        "amount": "CLR"
                    }
                ]
            }
        },
        {
            "id": "https://api.weather.gov/stations/KCNK/observations/2019-08-15T09:55:00+00:00",
            "type": "Feature",
            "geometry": {
                "type": "Point",
                "coordinates": [
                    -97.650000000000006,
                    39.539999999999999
                ]
            },
            "properties": {
                "@id": "https://api.weather.gov/stations/KCNK/observations/2019-08-15T09:55:00+00:00",
                "@type": "wx:ObservationStation",
                "elevation": {
                    "value": 452,
                    "unitCode": "unit:m"
                },
                "station": "https://api.weather.gov/stations/KCNK",
                "timestamp": "2019-08-15T09:55:00+00:00",
                "rawMessage": "KCNK 150955Z AUTO 00000KT 10SM CLR 18/17 A3007 RMK AO2 SLP168 T01830172",
                "textDescription": "Clear",
                "icon": "https://api.weather.gov/icons/land/night/skc?size=medium",
                "presentWeather": [],
                "temperature": {
                    "value": 18.300000000000011,
                    "unitCode": "unit:degC",
                    "qualityControl": "qc:V"
                },
                "dewpoint": {
                    "value": 17.200000000000045,
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
                    "value": 101830,
                    "unitCode": "unit:Pa",
                    "qualityControl": "qc:V"
                },
                "seaLevelPressure": {
                    "value": 101680,
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
                    "value": 93.306363604192811,
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
                            "value": null,
                            "unitCode": "unit:m"
                        },
                        "amount": "CLR"
                    }
                ]
            }
        },
        {
            "id": "https://api.weather.gov/stations/KCNK/observations/2019-08-15T08:55:00+00:00",
            "type": "Feature",
            "geometry": {
                "type": "Point",
                "coordinates": [
                    -97.650000000000006,
                    39.539999999999999
                ]
            },
            "properties": {
                "@id": "https://api.weather.gov/stations/KCNK/observations/2019-08-15T08:55:00+00:00",
                "@type": "wx:ObservationStation",
                "elevation": {
                    "value": 452,
                    "unitCode": "unit:m"
                },
                "station": "https://api.weather.gov/stations/KCNK",
                "timestamp": "2019-08-15T08:55:00+00:00",
                "rawMessage": "KCNK 150855Z AUTO 14003KT 10SM CLR 18/17 A3009 RMK AO2 SLP175 T01780172 58012",
                "textDescription": "Clear",
                "icon": "https://api.weather.gov/icons/land/night/skc?size=medium",
                "presentWeather": [],
                "temperature": {
                    "value": 17.800000000000011,
                    "unitCode": "unit:degC",
                    "qualityControl": "qc:V"
                },
                "dewpoint": {
                    "value": 17.200000000000045,
                    "unitCode": "unit:degC",
                    "qualityControl": "qc:V"
                },
                "windDirection": {
                    "value": 140,
                    "unitCode": "unit:degree_(angle)",
                    "qualityControl": "qc:V"
                },
                "windSpeed": {
                    "value": 1.5,
                    "unitCode": "unit:m_s-1",
                    "qualityControl": "qc:V"
                },
                "windGust": {
                    "value": null,
                    "unitCode": "unit:m_s-1",
                    "qualityControl": "qc:Z"
                },
                "barometricPressure": {
                    "value": 101900,
                    "unitCode": "unit:Pa",
                    "qualityControl": "qc:V"
                },
                "seaLevelPressure": {
                    "value": 101750,
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
                    "value": 96.284527228548839,
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
                            "value": null,
                            "unitCode": "unit:m"
                        },
                        "amount": "CLR"
                    }
                ]
            }
        },
        {
            "id": "https://api.weather.gov/stations/KCNK/observations/2019-08-15T07:55:00+00:00",
            "type": "Feature",
            "geometry": {
                "type": "Point",
                "coordinates": [
                    -97.650000000000006,
                    39.539999999999999
                ]
            },
            "properties": {
                "@id": "https://api.weather.gov/stations/KCNK/observations/2019-08-15T07:55:00+00:00",
                "@type": "wx:ObservationStation",
                "elevation": {
                    "value": 452,
                    "unitCode": "unit:m"
                },
                "station": "https://api.weather.gov/stations/KCNK",
                "timestamp": "2019-08-15T07:55:00+00:00",
                "rawMessage": "KCNK 150755Z AUTO 11003KT 10SM FEW110 18/17 A3010 RMK AO2 SLP178 T01830172",
                "textDescription": "Mostly Clear",
                "icon": "https://api.weather.gov/icons/land/night/few?size=medium",
                "presentWeather": [],
                "temperature": {
                    "value": 18.300000000000011,
                    "unitCode": "unit:degC",
                    "qualityControl": "qc:V"
                },
                "dewpoint": {
                    "value": 17.200000000000045,
                    "unitCode": "unit:degC",
                    "qualityControl": "qc:V"
                },
                "windDirection": {
                    "value": 110,
                    "unitCode": "unit:degree_(angle)",
                    "qualityControl": "qc:V"
                },
                "windSpeed": {
                    "value": 1.5,
                    "unitCode": "unit:m_s-1",
                    "qualityControl": "qc:V"
                },
                "windGust": {
                    "value": null,
                    "unitCode": "unit:m_s-1",
                    "qualityControl": "qc:Z"
                },
                "barometricPressure": {
                    "value": 101930,
                    "unitCode": "unit:Pa",
                    "qualityControl": "qc:V"
                },
                "seaLevelPressure": {
                    "value": 101780,
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
                    "value": 93.306363604192811,
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
                            "value": 3350,
                            "unitCode": "unit:m"
                        },
                        "amount": "FEW"
                    }
                ]
            }
        },
        {
            "id": "https://api.weather.gov/stations/KCNK/observations/2019-08-15T06:55:00+00:00",
            "type": "Feature",
            "geometry": {
                "type": "Point",
                "coordinates": [
                    -97.650000000000006,
                    39.539999999999999
                ]
            },
            "properties": {
                "@id": "https://api.weather.gov/stations/KCNK/observations/2019-08-15T06:55:00+00:00",
                "@type": "wx:ObservationStation",
                "elevation": {
                    "value": 452,
                    "unitCode": "unit:m"
                },
                "station": "https://api.weather.gov/stations/KCNK",
                "timestamp": "2019-08-15T06:55:00+00:00",
                "rawMessage": "KCNK 150655Z AUTO 00000KT 10SM CLR 19/18 A3011 RMK AO2 SLP184 T01890178",
                "textDescription": "Clear",
                "icon": "https://api.weather.gov/icons/land/night/skc?size=medium",
                "presentWeather": [],
                "temperature": {
                    "value": 18.900000000000034,
                    "unitCode": "unit:degC",
                    "qualityControl": "qc:V"
                },
                "dewpoint": {
                    "value": 17.800000000000011,
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
                    "value": 101970,
                    "unitCode": "unit:Pa",
                    "qualityControl": "qc:V"
                },
                "seaLevelPressure": {
                    "value": 101840,
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
                    "value": 93.336011600862747,
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
                            "value": null,
                            "unitCode": "unit:m"
                        },
                        "amount": "CLR"
                    }
                ]
            }
        },
        {
            "id": "https://api.weather.gov/stations/KCNK/observations/2019-08-15T05:55:00+00:00",
            "type": "Feature",
            "geometry": {
                "type": "Point",
                "coordinates": [
                    -97.650000000000006,
                    39.539999999999999
                ]
            },
            "properties": {
                "@id": "https://api.weather.gov/stations/KCNK/observations/2019-08-15T05:55:00+00:00",
                "@type": "wx:ObservationStation",
                "elevation": {
                    "value": 452,
                    "unitCode": "unit:m"
                },
                "station": "https://api.weather.gov/stations/KCNK",
                "timestamp": "2019-08-15T05:55:00+00:00",
                "rawMessage": "KCNK 150555Z AUTO 00000KT 10SM FEW110 19/18 A3012 RMK AO2 SLP188 T01890178 10267 20189 402830189 51018",
                "textDescription": "Mostly Clear",
                "icon": "https://api.weather.gov/icons/land/night/few?size=medium",
                "presentWeather": [],
                "temperature": {
                    "value": 18.900000000000034,
                    "unitCode": "unit:degC",
                    "qualityControl": "qc:V"
                },
                "dewpoint": {
                    "value": 17.800000000000011,
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
                    "value": 102000,
                    "unitCode": "unit:Pa",
                    "qualityControl": "qc:V"
                },
                "seaLevelPressure": {
                    "value": 101880,
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
                    "value": 93.336011600862747,
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
                            "value": 3350,
                            "unitCode": "unit:m"
                        },
                        "amount": "FEW"
                    }
                ]
            }
        },
        {
            "id": "https://api.weather.gov/stations/KCNK/observations/2019-08-15T04:55:00+00:00",
            "type": "Feature",
            "geometry": {
                "type": "Point",
                "coordinates": [
                    -97.650000000000006,
                    39.539999999999999
                ]
            },
            "properties": {
                "@id": "https://api.weather.gov/stations/KCNK/observations/2019-08-15T04:55:00+00:00",
                "@type": "wx:ObservationStation",
                "elevation": {
                    "value": 452,
                    "unitCode": "unit:m"
                },
                "station": "https://api.weather.gov/stations/KCNK",
                "timestamp": "2019-08-15T04:55:00+00:00",
                "rawMessage": "KCNK 150455Z AUTO 05004KT 10SM FEW120 21/18 A3012 RMK AO2 SLP186 T02060183",
                "textDescription": "Mostly Clear",
                "icon": "https://api.weather.gov/icons/land/night/few?size=medium",
                "presentWeather": [],
                "temperature": {
                    "value": 20.600000000000023,
                    "unitCode": "unit:degC",
                    "qualityControl": "qc:V"
                },
                "dewpoint": {
                    "value": 18.300000000000011,
                    "unitCode": "unit:degC",
                    "qualityControl": "qc:V"
                },
                "windDirection": {
                    "value": 50,
                    "unitCode": "unit:degree_(angle)",
                    "qualityControl": "qc:V"
                },
                "windSpeed": {
                    "value": 2.1000000000000001,
                    "unitCode": "unit:m_s-1",
                    "qualityControl": "qc:V"
                },
                "windGust": {
                    "value": null,
                    "unitCode": "unit:m_s-1",
                    "qualityControl": "qc:Z"
                },
                "barometricPressure": {
                    "value": 102000,
                    "unitCode": "unit:Pa",
                    "qualityControl": "qc:V"
                },
                "seaLevelPressure": {
                    "value": 101860,
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
                    "value": 86.675935118971069,
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
                            "value": 3660,
                            "unitCode": "unit:m"
                        },
                        "amount": "FEW"
                    }
                ]
            }
        },
        {
            "id": "https://api.weather.gov/stations/KCNK/observations/2019-08-15T03:55:00+00:00",
            "type": "Feature",
            "geometry": {
                "type": "Point",
                "coordinates": [
                    -97.650000000000006,
                    39.539999999999999
                ]
            },
            "properties": {
                "@id": "https://api.weather.gov/stations/KCNK/observations/2019-08-15T03:55:00+00:00",
                "@type": "wx:ObservationStation",
                "elevation": {
                    "value": 452,
                    "unitCode": "unit:m"
                },
                "station": "https://api.weather.gov/stations/KCNK",
                "timestamp": "2019-08-15T03:55:00+00:00",
                "rawMessage": "KCNK 150355Z AUTO 16003KT 10SM CLR 20/18 A3010 RMK AO2 SLP180 T02000178",
                "textDescription": "Clear",
                "icon": "https://api.weather.gov/icons/land/night/skc?size=medium",
                "presentWeather": [],
                "temperature": {
                    "value": 20,
                    "unitCode": "unit:degC",
                    "qualityControl": "qc:V"
                },
                "dewpoint": {
                    "value": 17.800000000000011,
                    "unitCode": "unit:degC",
                    "qualityControl": "qc:V"
                },
                "windDirection": {
                    "value": 160,
                    "unitCode": "unit:degree_(angle)",
                    "qualityControl": "qc:V"
                },
                "windSpeed": {
                    "value": 1.5,
                    "unitCode": "unit:m_s-1",
                    "qualityControl": "qc:V"
                },
                "windGust": {
                    "value": null,
                    "unitCode": "unit:m_s-1",
                    "qualityControl": "qc:Z"
                },
                "barometricPressure": {
                    "value": 101930,
                    "unitCode": "unit:Pa",
                    "qualityControl": "qc:V"
                },
                "seaLevelPressure": {
                    "value": 101800,
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
                    "value": 87.166373588392688,
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
                            "value": null,
                            "unitCode": "unit:m"
                        },
                        "amount": "CLR"
                    }
                ]
            }
        },
        {
            "id": "https://api.weather.gov/stations/KCNK/observations/2019-08-15T02:55:00+00:00",
            "type": "Feature",
            "geometry": {
                "type": "Point",
                "coordinates": [
                    -97.650000000000006,
                    39.539999999999999
                ]
            },
            "properties": {
                "@id": "https://api.weather.gov/stations/KCNK/observations/2019-08-15T02:55:00+00:00",
                "@type": "wx:ObservationStation",
                "elevation": {
                    "value": 452,
                    "unitCode": "unit:m"
                },
                "station": "https://api.weather.gov/stations/KCNK",
                "timestamp": "2019-08-15T02:55:00+00:00",
                "rawMessage": "KCNK 150255Z AUTO 15004KT 10SM CLR 21/18 A3007 RMK AO2 SLP171 T02060183 58017",
                "textDescription": "Clear",
                "icon": "https://api.weather.gov/icons/land/night/skc?size=medium",
                "presentWeather": [],
                "temperature": {
                    "value": 20.600000000000023,
                    "unitCode": "unit:degC",
                    "qualityControl": "qc:V"
                },
                "dewpoint": {
                    "value": 18.300000000000011,
                    "unitCode": "unit:degC",
                    "qualityControl": "qc:V"
                },
                "windDirection": {
                    "value": 150,
                    "unitCode": "unit:degree_(angle)",
                    "qualityControl": "qc:V"
                },
                "windSpeed": {
                    "value": 2.1000000000000001,
                    "unitCode": "unit:m_s-1",
                    "qualityControl": "qc:V"
                },
                "windGust": {
                    "value": null,
                    "unitCode": "unit:m_s-1",
                    "qualityControl": "qc:Z"
                },
                "barometricPressure": {
                    "value": 101830,
                    "unitCode": "unit:Pa",
                    "qualityControl": "qc:V"
                },
                "seaLevelPressure": {
                    "value": 101710,
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
                    "value": 86.675935118971069,
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
                            "value": null,
                            "unitCode": "unit:m"
                        },
                        "amount": "CLR"
                    }
                ]
            }
        },
        {
            "id": "https://api.weather.gov/stations/KCNK/observations/2019-08-15T01:55:00+00:00",
            "type": "Feature",
            "geometry": {
                "type": "Point",
                "coordinates": [
                    -97.650000000000006,
                    39.539999999999999
                ]
            },
            "properties": {
                "@id": "https://api.weather.gov/stations/KCNK/observations/2019-08-15T01:55:00+00:00",
                "@type": "wx:ObservationStation",
                "elevation": {
                    "value": 452,
                    "unitCode": "unit:m"
                },
                "station": "https://api.weather.gov/stations/KCNK",
                "timestamp": "2019-08-15T01:55:00+00:00",
                "rawMessage": "KCNK 150155Z AUTO 16005KT 10SM CLR 22/19 A3008 RMK AO2 SLP173 T02220189",
                "textDescription": "Clear",
                "icon": "https://api.weather.gov/icons/land/night/skc?size=medium",
                "presentWeather": [],
                "temperature": {
                    "value": 22.200000000000045,
                    "unitCode": "unit:degC",
                    "qualityControl": "qc:V"
                },
                "dewpoint": {
                    "value": 18.900000000000034,
                    "unitCode": "unit:degC",
                    "qualityControl": "qc:V"
                },
                "windDirection": {
                    "value": 160,
                    "unitCode": "unit:degree_(angle)",
                    "qualityControl": "qc:V"
                },
                "windSpeed": {
                    "value": 2.6000000000000001,
                    "unitCode": "unit:m_s-1",
                    "qualityControl": "qc:V"
                },
                "windGust": {
                    "value": null,
                    "unitCode": "unit:m_s-1",
                    "qualityControl": "qc:Z"
                },
                "barometricPressure": {
                    "value": 101860,
                    "unitCode": "unit:Pa",
                    "qualityControl": "qc:V"
                },
                "seaLevelPressure": {
                    "value": 101730,
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
                    "value": 81.590248067882001,
                    "unitCode": "unit:percent",
                    "qualityControl": "qc:C"
                },
                "windChill": {
                    "value": null,
                    "unitCode": "unit:degC",
                    "qualityControl": "qc:V"
                },
                "heatIndex": {
                    "value": 22.605967588439171,
                    "unitCode": "unit:degC",
                    "qualityControl": "qc:V"
                },
                "cloudLayers": [
                    {
                        "base": {
                            "value": null,
                            "unitCode": "unit:m"
                        },
                        "amount": "CLR"
                    }
                ]
            }
        },
        {
            "id": "https://api.weather.gov/stations/KCNK/observations/2019-08-15T00:55:00+00:00",
            "type": "Feature",
            "geometry": {
                "type": "Point",
                "coordinates": [
                    -97.650000000000006,
                    39.539999999999999
                ]
            },
            "properties": {
                "@id": "https://api.weather.gov/stations/KCNK/observations/2019-08-15T00:55:00+00:00",
                "@type": "wx:ObservationStation",
                "elevation": {
                    "value": 452,
                    "unitCode": "unit:m"
                },
                "station": "https://api.weather.gov/stations/KCNK",
                "timestamp": "2019-08-15T00:55:00+00:00",
                "rawMessage": "KCNK 150055Z AUTO 34008KT 10SM CLR 24/18 A3015 RMK AO2 SLP198 T02440183",
                "textDescription": "Clear",
                "icon": "https://api.weather.gov/icons/land/night/skc?size=medium",
                "presentWeather": [],
                "temperature": {
                    "value": 24.400000000000034,
                    "unitCode": "unit:degC",
                    "qualityControl": "qc:V"
                },
                "dewpoint": {
                    "value": 18.300000000000011,
                    "unitCode": "unit:degC",
                    "qualityControl": "qc:V"
                },
                "windDirection": {
                    "value": 340,
                    "unitCode": "unit:degree_(angle)",
                    "qualityControl": "qc:V"
                },
                "windSpeed": {
                    "value": 4.0999999999999996,
                    "unitCode": "unit:m_s-1",
                    "qualityControl": "qc:V"
                },
                "windGust": {
                    "value": null,
                    "unitCode": "unit:m_s-1",
                    "qualityControl": "qc:Z"
                },
                "barometricPressure": {
                    "value": 102100,
                    "unitCode": "unit:Pa",
                    "qualityControl": "qc:V"
                },
                "seaLevelPressure": {
                    "value": 101980,
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
                    "value": 68.807592139801812,
                    "unitCode": "unit:percent",
                    "qualityControl": "qc:C"
                },
                "windChill": {
                    "value": null,
                    "unitCode": "unit:degC",
                    "qualityControl": "qc:V"
                },
                "heatIndex": {
                    "value": 24.692198239205936,
                    "unitCode": "unit:degC",
                    "qualityControl": "qc:V"
                },
                "cloudLayers": [
                    {
                        "base": {
                            "value": null,
                            "unitCode": "unit:m"
                        },
                        "amount": "CLR"
                    }
                ]
            }
        },
        {
            "id": "https://api.weather.gov/stations/KCNK/observations/2019-08-14T23:55:00+00:00",
            "type": "Feature",
            "geometry": {
                "type": "Point",
                "coordinates": [
                    -97.650000000000006,
                    39.539999999999999
                ]
            },
            "properties": {
                "@id": "https://api.weather.gov/stations/KCNK/observations/2019-08-14T23:55:00+00:00",
                "@type": "wx:ObservationStation",
                "elevation": {
                    "value": 452,
                    "unitCode": "unit:m"
                },
                "station": "https://api.weather.gov/stations/KCNK",
                "timestamp": "2019-08-14T23:55:00+00:00",
                "rawMessage": "KCNK 142355Z AUTO 01007KT 10SM FEW042 27/17 A3012 RMK AO2 SLP187 T02670172 10283 20250 53003",
                "textDescription": "Mostly Clear",
                "icon": "https://api.weather.gov/icons/land/day/few?size=medium",
                "presentWeather": [],
                "temperature": {
                    "value": 26.700000000000045,
                    "unitCode": "unit:degC",
                    "qualityControl": "qc:V"
                },
                "dewpoint": {
                    "value": 17.200000000000045,
                    "unitCode": "unit:degC",
                    "qualityControl": "qc:V"
                },
                "windDirection": {
                    "value": 10,
                    "unitCode": "unit:degree_(angle)",
                    "qualityControl": "qc:V"
                },
                "windSpeed": {
                    "value": 3.6000000000000001,
                    "unitCode": "unit:m_s-1",
                    "qualityControl": "qc:V"
                },
                "windGust": {
                    "value": null,
                    "unitCode": "unit:m_s-1",
                    "qualityControl": "qc:Z"
                },
                "barometricPressure": {
                    "value": 102000,
                    "unitCode": "unit:Pa",
                    "qualityControl": "qc:V"
                },
                "seaLevelPressure": {
                    "value": 101870,
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
                    "value": 56.006054233356807,
                    "unitCode": "unit:percent",
                    "qualityControl": "qc:C"
                },
                "windChill": {
                    "value": null,
                    "unitCode": "unit:degC",
                    "qualityControl": "qc:V"
                },
                "heatIndex": {
                    "value": 27.475363595893327,
                    "unitCode": "unit:degC",
                    "qualityControl": "qc:V"
                },
                "cloudLayers": [
                    {
                        "base": {
                            "value": 1280,
                            "unitCode": "unit:m"
                        },
                        "amount": "FEW"
                    }
                ]
            }
        },
        {
            "id": "https://api.weather.gov/stations/KCNK/observations/2019-08-14T22:55:00+00:00",
            "type": "Feature",
            "geometry": {
                "type": "Point",
                "coordinates": [
                    -97.650000000000006,
                    39.539999999999999
                ]
            },
            "properties": {
                "@id": "https://api.weather.gov/stations/KCNK/observations/2019-08-14T22:55:00+00:00",
                "@type": "wx:ObservationStation",
                "elevation": {
                    "value": 452,
                    "unitCode": "unit:m"
                },
                "station": "https://api.weather.gov/stations/KCNK",
                "timestamp": "2019-08-14T22:55:00+00:00",
                "rawMessage": "KCNK 142255Z AUTO 02006KT 10SM CLR 28/18 A3011 RMK AO2 SLP181 T02780178",
                "textDescription": "Clear",
                "icon": "https://api.weather.gov/icons/land/day/skc?size=medium",
                "presentWeather": [],
                "temperature": {
                    "value": 27.800000000000011,
                    "unitCode": "unit:degC",
                    "qualityControl": "qc:V"
                },
                "dewpoint": {
                    "value": 17.800000000000011,
                    "unitCode": "unit:degC",
                    "qualityControl": "qc:V"
                },
                "windDirection": {
                    "value": 20,
                    "unitCode": "unit:degree_(angle)",
                    "qualityControl": "qc:V"
                },
                "windSpeed": {
                    "value": 3.1000000000000001,
                    "unitCode": "unit:m_s-1",
                    "qualityControl": "qc:V"
                },
                "windGust": {
                    "value": null,
                    "unitCode": "unit:m_s-1",
                    "qualityControl": "qc:Z"
                },
                "barometricPressure": {
                    "value": 101970,
                    "unitCode": "unit:Pa",
                    "qualityControl": "qc:V"
                },
                "seaLevelPressure": {
                    "value": 101810,
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
                    "value": 54.534038564266567,
                    "unitCode": "unit:percent",
                    "qualityControl": "qc:C"
                },
                "windChill": {
                    "value": null,
                    "unitCode": "unit:degC",
                    "qualityControl": "qc:V"
                },
                "heatIndex": {
                    "value": 28.626105228861263,
                    "unitCode": "unit:degC",
                    "qualityControl": "qc:V"
                },
                "cloudLayers": [
                    {
                        "base": {
                            "value": null,
                            "unitCode": "unit:m"
                        },
                        "amount": "CLR"
                    }
                ]
            }
        },
        {
            "id": "https://api.weather.gov/stations/KCNK/observations/2019-08-14T21:55:00+00:00",
            "type": "Feature",
            "geometry": {
                "type": "Point",
                "coordinates": [
                    -97.650000000000006,
                    39.539999999999999
                ]
            },
            "properties": {
                "@id": "https://api.weather.gov/stations/KCNK/observations/2019-08-14T21:55:00+00:00",
                "@type": "wx:ObservationStation",
                "elevation": {
                    "value": 452,
                    "unitCode": "unit:m"
                },
                "station": "https://api.weather.gov/stations/KCNK",
                "timestamp": "2019-08-14T21:55:00+00:00",
                "rawMessage": "KCNK 142155Z AUTO 03007KT 10SM CLR 28/18 A3011 RMK AO2 SLP181 T02780178",
                "textDescription": "Clear",
                "icon": "https://api.weather.gov/icons/land/day/skc?size=medium",
                "presentWeather": [],
                "temperature": {
                    "value": 27.800000000000011,
                    "unitCode": "unit:degC",
                    "qualityControl": "qc:V"
                },
                "dewpoint": {
                    "value": 17.800000000000011,
                    "unitCode": "unit:degC",
                    "qualityControl": "qc:V"
                },
                "windDirection": {
                    "value": 29.999999999999996,
                    "unitCode": "unit:degree_(angle)",
                    "qualityControl": "qc:V"
                },
                "windSpeed": {
                    "value": 3.6000000000000001,
                    "unitCode": "unit:m_s-1",
                    "qualityControl": "qc:V"
                },
                "windGust": {
                    "value": null,
                    "unitCode": "unit:m_s-1",
                    "qualityControl": "qc:Z"
                },
                "barometricPressure": {
                    "value": 101970,
                    "unitCode": "unit:Pa",
                    "qualityControl": "qc:V"
                },
                "seaLevelPressure": {
                    "value": 101810,
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
                    "value": 54.534038564266567,
                    "unitCode": "unit:percent",
                    "qualityControl": "qc:C"
                },
                "windChill": {
                    "value": null,
                    "unitCode": "unit:degC",
                    "qualityControl": "qc:V"
                },
                "heatIndex": {
                    "value": 28.626105228861263,
                    "unitCode": "unit:degC",
                    "qualityControl": "qc:V"
                },
                "cloudLayers": [
                    {
                        "base": {
                            "value": null,
                            "unitCode": "unit:m"
                        },
                        "amount": "CLR"
                    }
                ]
            }
        },
        {
            "id": "https://api.weather.gov/stations/KCNK/observations/2019-08-14T20:55:00+00:00",
            "type": "Feature",
            "geometry": {
                "type": "Point",
                "coordinates": [
                    -97.650000000000006,
                    39.539999999999999
                ]
            },
            "properties": {
                "@id": "https://api.weather.gov/stations/KCNK/observations/2019-08-14T20:55:00+00:00",
                "@type": "wx:ObservationStation",
                "elevation": {
                    "value": 452,
                    "unitCode": "unit:m"
                },
                "station": "https://api.weather.gov/stations/KCNK",
                "timestamp": "2019-08-14T20:55:00+00:00",
                "rawMessage": "KCNK 142055Z AUTO 02007KT 10SM CLR 28/18 A3011 RMK AO2 SLP183 T02780178 56016",
                "textDescription": "Clear",
                "icon": "https://api.weather.gov/icons/land/day/skc?size=medium",
                "presentWeather": [],
                "temperature": {
                    "value": 27.800000000000011,
                    "unitCode": "unit:degC",
                    "qualityControl": "qc:V"
                },
                "dewpoint": {
                    "value": 17.800000000000011,
                    "unitCode": "unit:degC",
                    "qualityControl": "qc:V"
                },
                "windDirection": {
                    "value": 20,
                    "unitCode": "unit:degree_(angle)",
                    "qualityControl": "qc:V"
                },
                "windSpeed": {
                    "value": 3.6000000000000001,
                    "unitCode": "unit:m_s-1",
                    "qualityControl": "qc:V"
                },
                "windGust": {
                    "value": null,
                    "unitCode": "unit:m_s-1",
                    "qualityControl": "qc:Z"
                },
                "barometricPressure": {
                    "value": 101970,
                    "unitCode": "unit:Pa",
                    "qualityControl": "qc:V"
                },
                "seaLevelPressure": {
                    "value": 101830,
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
                    "value": 54.534038564266567,
                    "unitCode": "unit:percent",
                    "qualityControl": "qc:C"
                },
                "windChill": {
                    "value": null,
                    "unitCode": "unit:degC",
                    "qualityControl": "qc:V"
                },
                "heatIndex": {
                    "value": 28.626105228861263,
                    "unitCode": "unit:degC",
                    "qualityControl": "qc:V"
                },
                "cloudLayers": [
                    {
                        "base": {
                            "value": null,
                            "unitCode": "unit:m"
                        },
                        "amount": "CLR"
                    }
                ]
            }
        },
        {
            "id": "https://api.weather.gov/stations/KCNK/observations/2019-08-14T19:55:00+00:00",
            "type": "Feature",
            "geometry": {
                "type": "Point",
                "coordinates": [
                    -97.650000000000006,
                    39.539999999999999
                ]
            },
            "properties": {
                "@id": "https://api.weather.gov/stations/KCNK/observations/2019-08-14T19:55:00+00:00",
                "@type": "wx:ObservationStation",
                "elevation": {
                    "value": 452,
                    "unitCode": "unit:m"
                },
                "station": "https://api.weather.gov/stations/KCNK",
                "timestamp": "2019-08-14T19:55:00+00:00",
                "rawMessage": "KCNK 141955Z AUTO 10SM CLR 27/17 A3012 RMK AO2 SLP185 T02720172",
                "textDescription": "Clear",
                "icon": "https://api.weather.gov/icons/land/day/skc?size=medium",
                "presentWeather": [],
                "temperature": {
                    "value": 27.200000000000045,
                    "unitCode": "unit:degC",
                    "qualityControl": "qc:V"
                },
                "dewpoint": {
                    "value": 17.200000000000045,
                    "unitCode": "unit:degC",
                    "qualityControl": "qc:V"
                },
                "windDirection": {
                    "value": null,
                    "unitCode": "unit:degree_(angle)",
                    "qualityControl": "qc:Z"
                },
                "windSpeed": {
                    "value": null,
                    "unitCode": "unit:m_s-1",
                    "qualityControl": "qc:Z"
                },
                "windGust": {
                    "value": null,
                    "unitCode": "unit:m_s-1",
                    "qualityControl": "qc:Z"
                },
                "barometricPressure": {
                    "value": 102000,
                    "unitCode": "unit:Pa",
                    "qualityControl": "qc:V"
                },
                "seaLevelPressure": {
                    "value": 101850,
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
                    "value": 54.384422361898821,
                    "unitCode": "unit:percent",
                    "qualityControl": "qc:C"
                },
                "windChill": {
                    "value": null,
                    "unitCode": "unit:degC",
                    "qualityControl": "qc:V"
                },
                "heatIndex": {
                    "value": 27.912382868112388,
                    "unitCode": "unit:degC",
                    "qualityControl": "qc:V"
                },
                "cloudLayers": [
                    {
                        "base": {
                            "value": null,
                            "unitCode": "unit:m"
                        },
                        "amount": "CLR"
                    }
                ]
            }
        },
        {
            "id": "https://api.weather.gov/stations/KCNK/observations/2019-08-14T18:55:00+00:00",
            "type": "Feature",
            "geometry": {
                "type": "Point",
                "coordinates": [
                    -97.650000000000006,
                    39.539999999999999
                ]
            },
            "properties": {
                "@id": "https://api.weather.gov/stations/KCNK/observations/2019-08-14T18:55:00+00:00",
                "@type": "wx:ObservationStation",
                "elevation": {
                    "value": 452,
                    "unitCode": "unit:m"
                },
                "station": "https://api.weather.gov/stations/KCNK",
                "timestamp": "2019-08-14T18:55:00+00:00",
                "rawMessage": "KCNK 141855Z AUTO 04003KT 10SM CLR 27/17 A3014 RMK AO2 SLP190 T02670167",
                "textDescription": "Clear",
                "icon": "https://api.weather.gov/icons/land/day/skc?size=medium",
                "presentWeather": [],
                "temperature": {
                    "value": 26.700000000000045,
                    "unitCode": "unit:degC",
                    "qualityControl": "qc:V"
                },
                "dewpoint": {
                    "value": 16.700000000000045,
                    "unitCode": "unit:degC",
                    "qualityControl": "qc:V"
                },
                "windDirection": {
                    "value": 40,
                    "unitCode": "unit:degree_(angle)",
                    "qualityControl": "qc:V"
                },
                "windSpeed": {
                    "value": 1.5,
                    "unitCode": "unit:m_s-1",
                    "qualityControl": "qc:V"
                },
                "windGust": {
                    "value": null,
                    "unitCode": "unit:m_s-1",
                    "qualityControl": "qc:Z"
                },
                "barometricPressure": {
                    "value": 102070,
                    "unitCode": "unit:Pa",
                    "qualityControl": "qc:V"
                },
                "seaLevelPressure": {
                    "value": 101900,
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
                    "value": 54.2592804267315,
                    "unitCode": "unit:percent",
                    "qualityControl": "qc:C"
                },
                "windChill": {
                    "value": null,
                    "unitCode": "unit:degC",
                    "qualityControl": "qc:V"
                },
                "heatIndex": {
                    "value": 27.375574210545039,
                    "unitCode": "unit:degC",
                    "qualityControl": "qc:V"
                },
                "cloudLayers": [
                    {
                        "base": {
                            "value": null,
                            "unitCode": "unit:m"
                        },
                        "amount": "CLR"
                    }
                ]
            }
        },
        {
            "id": "https://api.weather.gov/stations/KCNK/observations/2019-08-14T17:55:00+00:00",
            "type": "Feature",
            "geometry": {
                "type": "Point",
                "coordinates": [
                    -97.650000000000006,
                    39.539999999999999
                ]
            },
            "properties": {
                "@id": "https://api.weather.gov/stations/KCNK/observations/2019-08-14T17:55:00+00:00",
                "@type": "wx:ObservationStation",
                "elevation": {
                    "value": 452,
                    "unitCode": "unit:m"
                },
                "station": "https://api.weather.gov/stations/KCNK",
                "timestamp": "2019-08-14T17:55:00+00:00",
                "rawMessage": "KCNK 141755Z AUTO 05009KT 10SM CLR 26/17 A3016 RMK AO2 SLP199 T02560172 10256 20194 58006",
                "textDescription": "Clear",
                "icon": "https://api.weather.gov/icons/land/day/skc?size=medium",
                "presentWeather": [],
                "temperature": {
                    "value": 25.600000000000023,
                    "unitCode": "unit:degC",
                    "qualityControl": "qc:V"
                },
                "dewpoint": {
                    "value": 17.200000000000045,
                    "unitCode": "unit:degC",
                    "qualityControl": "qc:V"
                },
                "windDirection": {
                    "value": 50,
                    "unitCode": "unit:degree_(angle)",
                    "qualityControl": "qc:V"
                },
                "windSpeed": {
                    "value": 4.5999999999999996,
                    "unitCode": "unit:m_s-1",
                    "qualityControl": "qc:V"
                },
                "windGust": {
                    "value": null,
                    "unitCode": "unit:m_s-1",
                    "qualityControl": "qc:Z"
                },
                "barometricPressure": {
                    "value": 102130,
                    "unitCode": "unit:Pa",
                    "qualityControl": "qc:V"
                },
                "seaLevelPressure": {
                    "value": 101990,
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
                    "value": 59.768888806683137,
                    "unitCode": "unit:percent",
                    "qualityControl": "qc:C"
                },
                "windChill": {
                    "value": null,
                    "unitCode": "unit:degC",
                    "qualityControl": "qc:V"
                },
                "heatIndex": {
                    "value": 25.776187652174485,
                    "unitCode": "unit:degC",
                    "qualityControl": "qc:V"
                },
                "cloudLayers": [
                    {
                        "base": {
                            "value": null,
                            "unitCode": "unit:m"
                        },
                        "amount": "CLR"
                    }
                ]
            }
        },
        {
            "id": "https://api.weather.gov/stations/KCNK/observations/2019-08-14T16:55:00+00:00",
            "type": "Feature",
            "geometry": {
                "type": "Point",
                "coordinates": [
                    -97.650000000000006,
                    39.539999999999999
                ]
            },
            "properties": {
                "@id": "https://api.weather.gov/stations/KCNK/observations/2019-08-14T16:55:00+00:00",
                "@type": "wx:ObservationStation",
                "elevation": {
                    "value": 452,
                    "unitCode": "unit:m"
                },
                "station": "https://api.weather.gov/stations/KCNK",
                "timestamp": "2019-08-14T16:55:00+00:00",
                "rawMessage": "KCNK 141655Z AUTO 02007KT 10SM CLR 24/16 A3018 RMK AO2 SLP206 T02440161",
                "textDescription": "Clear",
                "icon": "https://api.weather.gov/icons/land/day/skc?size=medium",
                "presentWeather": [],
                "temperature": {
                    "value": 24.400000000000034,
                    "unitCode": "unit:degC",
                    "qualityControl": "qc:V"
                },
                "dewpoint": {
                    "value": 16.100000000000023,
                    "unitCode": "unit:degC",
                    "qualityControl": "qc:V"
                },
                "windDirection": {
                    "value": 20,
                    "unitCode": "unit:degree_(angle)",
                    "qualityControl": "qc:V"
                },
                "windSpeed": {
                    "value": 3.6000000000000001,
                    "unitCode": "unit:m_s-1",
                    "qualityControl": "qc:V"
                },
                "windGust": {
                    "value": null,
                    "unitCode": "unit:m_s-1",
                    "qualityControl": "qc:Z"
                },
                "barometricPressure": {
                    "value": 102200,
                    "unitCode": "unit:Pa",
                    "qualityControl": "qc:V"
                },
                "seaLevelPressure": {
                    "value": 102060,
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
                    "value": 59.869198871268907,
                    "unitCode": "unit:percent",
                    "qualityControl": "qc:C"
                },
                "windChill": {
                    "value": null,
                    "unitCode": "unit:degC",
                    "qualityControl": "qc:V"
                },
                "heatIndex": {
                    "value": 24.458806859416541,
                    "unitCode": "unit:degC",
                    "qualityControl": "qc:V"
                },
                "cloudLayers": [
                    {
                        "base": {
                            "value": null,
                            "unitCode": "unit:m"
                        },
                        "amount": "CLR"
                    }
                ]
            }
        },
        {
            "id": "https://api.weather.gov/stations/KCNK/observations/2019-08-14T15:55:00+00:00",
            "type": "Feature",
            "geometry": {
                "type": "Point",
                "coordinates": [
                    -97.650000000000006,
                    39.539999999999999
                ]
            },
            "properties": {
                "@id": "https://api.weather.gov/stations/KCNK/observations/2019-08-14T15:55:00+00:00",
                "@type": "wx:ObservationStation",
                "elevation": {
                    "value": 452,
                    "unitCode": "unit:m"
                },
                "station": "https://api.weather.gov/stations/KCNK",
                "timestamp": "2019-08-14T15:55:00+00:00",
                "rawMessage": "KCNK 141555Z AUTO 02011KT 10SM CLR 23/16 A3019 RMK AO2 SLP210 T02330161",
                "textDescription": "Clear",
                "icon": "https://api.weather.gov/icons/land/day/skc?size=medium",
                "presentWeather": [],
                "temperature": {
                    "value": 23.300000000000011,
                    "unitCode": "unit:degC",
                    "qualityControl": "qc:V"
                },
                "dewpoint": {
                    "value": 16.100000000000023,
                    "unitCode": "unit:degC",
                    "qualityControl": "qc:V"
                },
                "windDirection": {
                    "value": 20,
                    "unitCode": "unit:degree_(angle)",
                    "qualityControl": "qc:V"
                },
                "windSpeed": {
                    "value": 5.7000000000000002,
                    "unitCode": "unit:m_s-1",
                    "qualityControl": "qc:V"
                },
                "windGust": {
                    "value": null,
                    "unitCode": "unit:m_s-1",
                    "qualityControl": "qc:Z"
                },
                "barometricPressure": {
                    "value": 102240,
                    "unitCode": "unit:Pa",
                    "qualityControl": "qc:V"
                },
                "seaLevelPressure": {
                    "value": 102100,
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
                    "value": 63.963539378570523,
                    "unitCode": "unit:percent",
                    "qualityControl": "qc:C"
                },
                "windChill": {
                    "value": null,
                    "unitCode": "unit:degC",
                    "qualityControl": "qc:V"
                },
                "heatIndex": {
                    "value": 23.355714639329278,
                    "unitCode": "unit:degC",
                    "qualityControl": "qc:V"
                },
                "cloudLayers": [
                    {
                        "base": {
                            "value": null,
                            "unitCode": "unit:m"
                        },
                        "amount": "CLR"
                    }
                ]
            }
        },
        {
            "id": "https://api.weather.gov/stations/KCNK/observations/2019-08-14T14:55:00+00:00",
            "type": "Feature",
            "geometry": {
                "type": "Point",
                "coordinates": [
                    -97.650000000000006,
                    39.539999999999999
                ]
            },
            "properties": {
                "@id": "https://api.weather.gov/stations/KCNK/observations/2019-08-14T14:55:00+00:00",
                "@type": "wx:ObservationStation",
                "elevation": {
                    "value": 452,
                    "unitCode": "unit:m"
                },
                "station": "https://api.weather.gov/stations/KCNK",
                "timestamp": "2019-08-14T14:55:00+00:00",
                "rawMessage": "KCNK 141455Z AUTO 02011KT 10SM CLR 22/16 A3018 RMK AO2 SLP208 T02170156 51016",
                "textDescription": "Clear",
                "icon": "https://api.weather.gov/icons/land/day/skc?size=medium",
                "presentWeather": [],
                "temperature": {
                    "value": 21.700000000000045,
                    "unitCode": "unit:degC",
                    "qualityControl": "qc:V"
                },
                "dewpoint": {
                    "value": 15.600000000000023,
                    "unitCode": "unit:degC",
                    "qualityControl": "qc:V"
                },
                "windDirection": {
                    "value": 20,
                    "unitCode": "unit:degree_(angle)",
                    "qualityControl": "qc:V"
                },
                "windSpeed": {
                    "value": 5.7000000000000002,
                    "unitCode": "unit:m_s-1",
                    "qualityControl": "qc:V"
                },
                "windGust": {
                    "value": null,
                    "unitCode": "unit:m_s-1",
                    "qualityControl": "qc:Z"
                },
                "barometricPressure": {
                    "value": 102200,
                    "unitCode": "unit:Pa",
                    "qualityControl": "qc:V"
                },
                "seaLevelPressure": {
                    "value": 102080,
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
                    "value": 68.276024971619989,
                    "unitCode": "unit:percent",
                    "qualityControl": "qc:C"
                },
                "windChill": {
                    "value": null,
                    "unitCode": "unit:degC",
                    "qualityControl": "qc:V"
                },
                "heatIndex": {
                    "value": 21.70831842981454,
                    "unitCode": "unit:degC",
                    "qualityControl": "qc:V"
                },
                "cloudLayers": [
                    {
                        "base": {
                            "value": null,
                            "unitCode": "unit:m"
                        },
                        "amount": "CLR"
                    }
                ]
            }
        },
        {
            "id": "https://api.weather.gov/stations/KCNK/observations/2019-08-14T13:55:00+00:00",
            "type": "Feature",
            "geometry": {
                "type": "Point",
                "coordinates": [
                    -97.650000000000006,
                    39.539999999999999
                ]
            },
            "properties": {
                "@id": "https://api.weather.gov/stations/KCNK/observations/2019-08-14T13:55:00+00:00",
                "@type": "wx:ObservationStation",
                "elevation": {
                    "value": 452,
                    "unitCode": "unit:m"
                },
                "station": "https://api.weather.gov/stations/KCNK",
                "timestamp": "2019-08-14T13:55:00+00:00",
                "rawMessage": "KCNK 141355Z AUTO 05010KT 10SM CLR 21/16 A3017 RMK AO2 SLP204 T02060156",
                "textDescription": "Clear",
                "icon": "https://api.weather.gov/icons/land/day/skc?size=medium",
                "presentWeather": [],
                "temperature": {
                    "value": 20.600000000000023,
                    "unitCode": "unit:degC",
                    "qualityControl": "qc:V"
                },
                "dewpoint": {
                    "value": 15.600000000000023,
                    "unitCode": "unit:degC",
                    "qualityControl": "qc:V"
                },
                "windDirection": {
                    "value": 50,
                    "unitCode": "unit:degree_(angle)",
                    "qualityControl": "qc:V"
                },
                "windSpeed": {
                    "value": 5.0999999999999996,
                    "unitCode": "unit:m_s-1",
                    "qualityControl": "qc:V"
                },
                "windGust": {
                    "value": null,
                    "unitCode": "unit:m_s-1",
                    "qualityControl": "qc:Z"
                },
                "barometricPressure": {
                    "value": 102170,
                    "unitCode": "unit:Pa",
                    "qualityControl": "qc:V"
                },
                "seaLevelPressure": {
                    "value": 102040,
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
                    "value": 73.044494681259408,
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
                            "value": null,
                            "unitCode": "unit:m"
                        },
                        "amount": "CLR"
                    }
                ]
            }
        },
        {
            "id": "https://api.weather.gov/stations/KCNK/observations/2019-08-14T12:55:00+00:00",
            "type": "Feature",
            "geometry": {
                "type": "Point",
                "coordinates": [
                    -97.650000000000006,
                    39.539999999999999
                ]
            },
            "properties": {
                "@id": "https://api.weather.gov/stations/KCNK/observations/2019-08-14T12:55:00+00:00",
                "@type": "wx:ObservationStation",
                "elevation": {
                    "value": 452,
                    "unitCode": "unit:m"
                },
                "station": "https://api.weather.gov/stations/KCNK",
                "timestamp": "2019-08-14T12:55:00+00:00",
                "rawMessage": "KCNK 141255Z AUTO 04007KT 10SM CLR 20/17 A3016 RMK AO2 SLP199 T02000172",
                "textDescription": "Clear",
                "icon": "https://api.weather.gov/icons/land/day/skc?size=medium",
                "presentWeather": [],
                "temperature": {
                    "value": 20,
                    "unitCode": "unit:degC",
                    "qualityControl": "qc:V"
                },
                "dewpoint": {
                    "value": 17.200000000000045,
                    "unitCode": "unit:degC",
                    "qualityControl": "qc:V"
                },
                "windDirection": {
                    "value": 40,
                    "unitCode": "unit:degree_(angle)",
                    "qualityControl": "qc:V"
                },
                "windSpeed": {
                    "value": 3.6000000000000001,
                    "unitCode": "unit:m_s-1",
                    "qualityControl": "qc:V"
                },
                "windGust": {
                    "value": null,
                    "unitCode": "unit:m_s-1",
                    "qualityControl": "qc:Z"
                },
                "barometricPressure": {
                    "value": 102130,
                    "unitCode": "unit:Pa",
                    "qualityControl": "qc:V"
                },
                "seaLevelPressure": {
                    "value": 101990,
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
                    "value": 83.927730711854551,
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
                            "value": null,
                            "unitCode": "unit:m"
                        },
                        "amount": "CLR"
                    }
                ]
            }
        },
        {
            "id": "https://api.weather.gov/stations/KCNK/observations/2019-08-14T11:55:00+00:00",
            "type": "Feature",
            "geometry": {
                "type": "Point",
                "coordinates": [
                    -97.650000000000006,
                    39.539999999999999
                ]
            },
            "properties": {
                "@id": "https://api.weather.gov/stations/KCNK/observations/2019-08-14T11:55:00+00:00",
                "@type": "wx:ObservationStation",
                "elevation": {
                    "value": 452,
                    "unitCode": "unit:m"
                },
                "station": "https://api.weather.gov/stations/KCNK",
                "timestamp": "2019-08-14T11:55:00+00:00",
                "rawMessage": "KCNK 141155Z AUTO 03007KT 10SM CLR 19/18 A3014 RMK AO2 SLP191 T01940178 10239 20194 53017",
                "textDescription": "Clear",
                "icon": "https://api.weather.gov/icons/land/day/skc?size=medium",
                "presentWeather": [],
                "temperature": {
                    "value": 19.400000000000034,
                    "unitCode": "unit:degC",
                    "qualityControl": "qc:V"
                },
                "dewpoint": {
                    "value": 17.800000000000011,
                    "unitCode": "unit:degC",
                    "qualityControl": "qc:V"
                },
                "windDirection": {
                    "value": 29.999999999999996,
                    "unitCode": "unit:degree_(angle)",
                    "qualityControl": "qc:V"
                },
                "windSpeed": {
                    "value": 3.6000000000000001,
                    "unitCode": "unit:m_s-1",
                    "qualityControl": "qc:V"
                },
                "windGust": {
                    "value": null,
                    "unitCode": "unit:m_s-1",
                    "qualityControl": "qc:Z"
                },
                "barometricPressure": {
                    "value": 102070,
                    "unitCode": "unit:Pa",
                    "qualityControl": "qc:V"
                },
                "seaLevelPressure": {
                    "value": 101910,
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
                    "value": 90.472846794659333,
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
                            "value": null,
                            "unitCode": "unit:m"
                        },
                        "amount": "CLR"
                    }
                ]
            }
        },
        {
            "id": "https://api.weather.gov/stations/KCNK/observations/2019-08-14T10:55:00+00:00",
            "type": "Feature",
            "geometry": {
                "type": "Point",
                "coordinates": [
                    -97.650000000000006,
                    39.539999999999999
                ]
            },
            "properties": {
                "@id": "https://api.weather.gov/stations/KCNK/observations/2019-08-14T10:55:00+00:00",
                "@type": "wx:ObservationStation",
                "elevation": {
                    "value": 452,
                    "unitCode": "unit:m"
                },
                "station": "https://api.weather.gov/stations/KCNK",
                "timestamp": "2019-08-14T10:55:00+00:00",
                "rawMessage": "KCNK 141055Z AUTO 03006KT 10SM CLR 20/18 A3011 RMK AO2 SLP180 T02000178",
                "textDescription": "Clear",
                "icon": "https://api.weather.gov/icons/land/night/skc?size=medium",
                "presentWeather": [],
                "temperature": {
                    "value": 20,
                    "unitCode": "unit:degC",
                    "qualityControl": "qc:V"
                },
                "dewpoint": {
                    "value": 17.800000000000011,
                    "unitCode": "unit:degC",
                    "qualityControl": "qc:V"
                },
                "windDirection": {
                    "value": 29.999999999999996,
                    "unitCode": "unit:degree_(angle)",
                    "qualityControl": "qc:V"
                },
                "windSpeed": {
                    "value": 3.1000000000000001,
                    "unitCode": "unit:m_s-1",
                    "qualityControl": "qc:V"
                },
                "windGust": {
                    "value": null,
                    "unitCode": "unit:m_s-1",
                    "qualityControl": "qc:Z"
                },
                "barometricPressure": {
                    "value": 101970,
                    "unitCode": "unit:Pa",
                    "qualityControl": "qc:V"
                },
                "seaLevelPressure": {
                    "value": 101800,
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
                    "value": 87.166373588392688,
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
                            "value": null,
                            "unitCode": "unit:m"
                        },
                        "amount": "CLR"
                    }
                ]
            }
        },
        {
            "id": "https://api.weather.gov/stations/KCNK/observations/2019-08-14T09:55:00+00:00",
            "type": "Feature",
            "geometry": {
                "type": "Point",
                "coordinates": [
                    -97.650000000000006,
                    39.539999999999999
                ]
            },
            "properties": {
                "@id": "https://api.weather.gov/stations/KCNK/observations/2019-08-14T09:55:00+00:00",
                "@type": "wx:ObservationStation",
                "elevation": {
                    "value": 452,
                    "unitCode": "unit:m"
                },
                "station": "https://api.weather.gov/stations/KCNK",
                "timestamp": "2019-08-14T09:55:00+00:00",
                "rawMessage": "KCNK 140955Z AUTO 01004KT 10SM CLR 20/18 A3009 RMK AO2 SLP174 T02000183",
                "textDescription": "Clear",
                "icon": "https://api.weather.gov/icons/land/night/skc?size=medium",
                "presentWeather": [],
                "temperature": {
                    "value": 20,
                    "unitCode": "unit:degC",
                    "qualityControl": "qc:V"
                },
                "dewpoint": {
                    "value": 18.300000000000011,
                    "unitCode": "unit:degC",
                    "qualityControl": "qc:V"
                },
                "windDirection": {
                    "value": 10,
                    "unitCode": "unit:degree_(angle)",
                    "qualityControl": "qc:V"
                },
                "windSpeed": {
                    "value": 2.1000000000000001,
                    "unitCode": "unit:m_s-1",
                    "qualityControl": "qc:V"
                },
                "windGust": {
                    "value": null,
                    "unitCode": "unit:m_s-1",
                    "qualityControl": "qc:Z"
                },
                "barometricPressure": {
                    "value": 101900,
                    "unitCode": "unit:Pa",
                    "qualityControl": "qc:V"
                },
                "seaLevelPressure": {
                    "value": 101740,
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
                    "value": 89.948560280279935,
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
                            "value": null,
                            "unitCode": "unit:m"
                        },
                        "amount": "CLR"
                    }
                ]
            }
        },
        {
            "id": "https://api.weather.gov/stations/KCNK/observations/2019-08-14T08:55:00+00:00",
            "type": "Feature",
            "geometry": {
                "type": "Point",
                "coordinates": [
                    -97.650000000000006,
                    39.539999999999999
                ]
            },
            "properties": {
                "@id": "https://api.weather.gov/stations/KCNK/observations/2019-08-14T08:55:00+00:00",
                "@type": "wx:ObservationStation",
                "elevation": {
                    "value": 452,
                    "unitCode": "unit:m"
                },
                "station": "https://api.weather.gov/stations/KCNK",
                "timestamp": "2019-08-14T08:55:00+00:00",
                "rawMessage": "KCNK 140855Z AUTO 35003KT 10SM CLR 21/18 A3008 RMK AO2 SLP171 T02110183 50003",
                "textDescription": "Clear",
                "icon": "https://api.weather.gov/icons/land/night/skc?size=medium",
                "presentWeather": [],
                "temperature": {
                    "value": 21.100000000000023,
                    "unitCode": "unit:degC",
                    "qualityControl": "qc:V"
                },
                "dewpoint": {
                    "value": 18.300000000000011,
                    "unitCode": "unit:degC",
                    "qualityControl": "qc:V"
                },
                "windDirection": {
                    "value": 350,
                    "unitCode": "unit:degree_(angle)",
                    "qualityControl": "qc:V"
                },
                "windSpeed": {
                    "value": 1.5,
                    "unitCode": "unit:m_s-1",
                    "qualityControl": "qc:V"
                },
                "windGust": {
                    "value": null,
                    "unitCode": "unit:m_s-1",
                    "qualityControl": "qc:Z"
                },
                "barometricPressure": {
                    "value": 101860,
                    "unitCode": "unit:Pa",
                    "qualityControl": "qc:V"
                },
                "seaLevelPressure": {
                    "value": 101710,
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
                    "value": 84.050698469602409,
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
                            "value": null,
                            "unitCode": "unit:m"
                        },
                        "amount": "CLR"
                    }
                ]
            }
        },
        {
            "id": "https://api.weather.gov/stations/KCNK/observations/2019-08-14T07:55:00+00:00",
            "type": "Feature",
            "geometry": {
                "type": "Point",
                "coordinates": [
                    -97.650000000000006,
                    39.539999999999999
                ]
            },
            "properties": {
                "@id": "https://api.weather.gov/stations/KCNK/observations/2019-08-14T07:55:00+00:00",
                "@type": "wx:ObservationStation",
                "elevation": {
                    "value": 452,
                    "unitCode": "unit:m"
                },
                "station": "https://api.weather.gov/stations/KCNK",
                "timestamp": "2019-08-14T07:55:00+00:00",
                "rawMessage": "KCNK 140755Z AUTO 07003KT 10SM CLR 22/19 A3010 RMK AO2 SLP175 T02220189",
                "textDescription": "Clear",
                "icon": "https://api.weather.gov/icons/land/night/skc?size=medium",
                "presentWeather": [],
                "temperature": {
                    "value": 22.200000000000045,
                    "unitCode": "unit:degC",
                    "qualityControl": "qc:V"
                },
                "dewpoint": {
                    "value": 18.900000000000034,
                    "unitCode": "unit:degC",
                    "qualityControl": "qc:V"
                },
                "windDirection": {
                    "value": 70,
                    "unitCode": "unit:degree_(angle)",
                    "qualityControl": "qc:V"
                },
                "windSpeed": {
                    "value": 1.5,
                    "unitCode": "unit:m_s-1",
                    "qualityControl": "qc:V"
                },
                "windGust": {
                    "value": null,
                    "unitCode": "unit:m_s-1",
                    "qualityControl": "qc:Z"
                },
                "barometricPressure": {
                    "value": 101930,
                    "unitCode": "unit:Pa",
                    "qualityControl": "qc:V"
                },
                "seaLevelPressure": {
                    "value": 101750,
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
                    "value": 81.590248067882001,
                    "unitCode": "unit:percent",
                    "qualityControl": "qc:C"
                },
                "windChill": {
                    "value": null,
                    "unitCode": "unit:degC",
                    "qualityControl": "qc:V"
                },
                "heatIndex": {
                    "value": 22.605967588439171,
                    "unitCode": "unit:degC",
                    "qualityControl": "qc:V"
                },
                "cloudLayers": [
                    {
                        "base": {
                            "value": null,
                            "unitCode": "unit:m"
                        },
                        "amount": "CLR"
                    }
                ]
            }
        },
        {
            "id": "https://api.weather.gov/stations/KCNK/observations/2019-08-14T06:55:00+00:00",
            "type": "Feature",
            "geometry": {
                "type": "Point",
                "coordinates": [
                    -97.650000000000006,
                    39.539999999999999
                ]
            },
            "properties": {
                "@id": "https://api.weather.gov/stations/KCNK/observations/2019-08-14T06:55:00+00:00",
                "@type": "wx:ObservationStation",
                "elevation": {
                    "value": 452,
                    "unitCode": "unit:m"
                },
                "station": "https://api.weather.gov/stations/KCNK",
                "timestamp": "2019-08-14T06:55:00+00:00",
                "rawMessage": "KCNK 140655Z AUTO 00000KT 10SM CLR 23/19 A3010 RMK AO2 SLP177 T02280194",
                "textDescription": "Clear",
                "icon": "https://api.weather.gov/icons/land/night/skc?size=medium",
                "presentWeather": [],
                "temperature": {
                    "value": 22.800000000000011,
                    "unitCode": "unit:degC",
                    "qualityControl": "qc:V"
                },
                "dewpoint": {
                    "value": 19.400000000000034,
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
                    "value": 101930,
                    "unitCode": "unit:Pa",
                    "qualityControl": "qc:V"
                },
                "seaLevelPressure": {
                    "value": 101770,
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
                    "value": 81.159461531991042,
                    "unitCode": "unit:percent",
                    "qualityControl": "qc:C"
                },
                "windChill": {
                    "value": null,
                    "unitCode": "unit:degC",
                    "qualityControl": "qc:V"
                },
                "heatIndex": {
                    "value": 23.254719273335354,
                    "unitCode": "unit:degC",
                    "qualityControl": "qc:V"
                },
                "cloudLayers": [
                    {
                        "base": {
                            "value": null,
                            "unitCode": "unit:m"
                        },
                        "amount": "CLR"
                    }
                ]
            }
        },
        {
            "id": "https://api.weather.gov/stations/KCNK/observations/2019-08-14T05:55:00+00:00",
            "type": "Feature",
            "geometry": {
                "type": "Point",
                "coordinates": [
                    -97.650000000000006,
                    39.539999999999999
                ]
            },
            "properties": {
                "@id": "https://api.weather.gov/stations/KCNK/observations/2019-08-14T05:55:00+00:00",
                "@type": "wx:ObservationStation",
                "elevation": {
                    "value": 452,
                    "unitCode": "unit:m"
                },
                "station": "https://api.weather.gov/stations/KCNK",
                "timestamp": "2019-08-14T05:55:00+00:00",
                "rawMessage": "KCNK 140555Z AUTO 10004KT 10SM CLR 24/18 A3007 RMK AO2 SLP166 T02390183 10289 20222 403110222 51004",
                "textDescription": "Clear",
                "icon": "https://api.weather.gov/icons/land/night/skc?size=medium",
                "presentWeather": [],
                "temperature": {
                    "value": 23.900000000000034,
                    "unitCode": "unit:degC",
                    "qualityControl": "qc:V"
                },
                "dewpoint": {
                    "value": 18.300000000000011,
                    "unitCode": "unit:degC",
                    "qualityControl": "qc:V"
                },
                "windDirection": {
                    "value": 100,
                    "unitCode": "unit:degree_(angle)",
                    "qualityControl": "qc:V"
                },
                "windSpeed": {
                    "value": 2.1000000000000001,
                    "unitCode": "unit:m_s-1",
                    "qualityControl": "qc:V"
                },
                "windGust": {
                    "value": null,
                    "unitCode": "unit:m_s-1",
                    "qualityControl": "qc:Z"
                },
                "barometricPressure": {
                    "value": 101830,
                    "unitCode": "unit:Pa",
                    "qualityControl": "qc:V"
                },
                "seaLevelPressure": {
                    "value": 101660,
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
                    "value": 70.90317175734765,
                    "unitCode": "unit:percent",
                    "qualityControl": "qc:C"
                },
                "windChill": {
                    "value": null,
                    "unitCode": "unit:degC",
                    "qualityControl": "qc:V"
                },
                "heatIndex": {
                    "value": 24.196916151441883,
                    "unitCode": "unit:degC",
                    "qualityControl": "qc:V"
                },
                "cloudLayers": [
                    {
                        "base": {
                            "value": null,
                            "unitCode": "unit:m"
                        },
                        "amount": "CLR"
                    }
                ]
            }
        },
        {
            "id": "https://api.weather.gov/stations/KCNK/observations/2019-08-14T04:55:00+00:00",
            "type": "Feature",
            "geometry": {
                "type": "Point",
                "coordinates": [
                    -97.650000000000006,
                    39.539999999999999
                ]
            },
            "properties": {
                "@id": "https://api.weather.gov/stations/KCNK/observations/2019-08-14T04:55:00+00:00",
                "@type": "wx:ObservationStation",
                "elevation": {
                    "value": 452,
                    "unitCode": "unit:m"
                },
                "station": "https://api.weather.gov/stations/KCNK",
                "timestamp": "2019-08-14T04:55:00+00:00",
                "rawMessage": "KCNK 140455Z AUTO 05005KT 10SM CLR 23/19 A3006 RMK AO2 SLP163 T02330194",
                "textDescription": "Clear",
                "icon": "https://api.weather.gov/icons/land/night/skc?size=medium",
                "presentWeather": [],
                "temperature": {
                    "value": 23.300000000000011,
                    "unitCode": "unit:degC",
                    "qualityControl": "qc:V"
                },
                "dewpoint": {
                    "value": 19.400000000000034,
                    "unitCode": "unit:degC",
                    "qualityControl": "qc:V"
                },
                "windDirection": {
                    "value": 50,
                    "unitCode": "unit:degree_(angle)",
                    "qualityControl": "qc:V"
                },
                "windSpeed": {
                    "value": 2.6000000000000001,
                    "unitCode": "unit:m_s-1",
                    "qualityControl": "qc:V"
                },
                "windGust": {
                    "value": null,
                    "unitCode": "unit:m_s-1",
                    "qualityControl": "qc:Z"
                },
                "barometricPressure": {
                    "value": 101800,
                    "unitCode": "unit:Pa",
                    "qualityControl": "qc:V"
                },
                "seaLevelPressure": {
                    "value": 101630,
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
                    "value": 78.741177808944954,
                    "unitCode": "unit:percent",
                    "qualityControl": "qc:C"
                },
                "windChill": {
                    "value": null,
                    "unitCode": "unit:degC",
                    "qualityControl": "qc:V"
                },
                "heatIndex": {
                    "value": 23.741575198344606,
                    "unitCode": "unit:degC",
                    "qualityControl": "qc:V"
                },
                "cloudLayers": [
                    {
                        "base": {
                            "value": null,
                            "unitCode": "unit:m"
                        },
                        "amount": "CLR"
                    }
                ]
            }
        },
        {
            "id": "https://api.weather.gov/stations/KCNK/observations/2019-08-14T03:55:00+00:00",
            "type": "Feature",
            "geometry": {
                "type": "Point",
                "coordinates": [
                    -97.650000000000006,
                    39.539999999999999
                ]
            },
            "properties": {
                "@id": "https://api.weather.gov/stations/KCNK/observations/2019-08-14T03:55:00+00:00",
                "@type": "wx:ObservationStation",
                "elevation": {
                    "value": 452,
                    "unitCode": "unit:m"
                },
                "station": "https://api.weather.gov/stations/KCNK",
                "timestamp": "2019-08-14T03:55:00+00:00",
                "rawMessage": "KCNK 140355Z AUTO 18004KT 10SM CLR 24/19 A3008 RMK AO2 SLP169 T02390189",
                "textDescription": "Clear",
                "icon": "https://api.weather.gov/icons/land/night/skc?size=medium",
                "presentWeather": [],
                "temperature": {
                    "value": 23.900000000000034,
                    "unitCode": "unit:degC",
                    "qualityControl": "qc:V"
                },
                "dewpoint": {
                    "value": 18.900000000000034,
                    "unitCode": "unit:degC",
                    "qualityControl": "qc:V"
                },
                "windDirection": {
                    "value": 180,
                    "unitCode": "unit:degree_(angle)",
                    "qualityControl": "qc:V"
                },
                "windSpeed": {
                    "value": 2.1000000000000001,
                    "unitCode": "unit:m_s-1",
                    "qualityControl": "qc:V"
                },
                "windGust": {
                    "value": null,
                    "unitCode": "unit:m_s-1",
                    "qualityControl": "qc:Z"
                },
                "barometricPressure": {
                    "value": 101860,
                    "unitCode": "unit:Pa",
                    "qualityControl": "qc:V"
                },
                "seaLevelPressure": {
                    "value": 101690,
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
                    "value": 73.615825457564554,
                    "unitCode": "unit:percent",
                    "qualityControl": "qc:C"
                },
                "windChill": {
                    "value": null,
                    "unitCode": "unit:degC",
                    "qualityControl": "qc:V"
                },
                "heatIndex": {
                    "value": 24.267746553614245,
                    "unitCode": "unit:degC",
                    "qualityControl": "qc:V"
                },
                "cloudLayers": [
                    {
                        "base": {
                            "value": null,
                            "unitCode": "unit:m"
                        },
                        "amount": "CLR"
                    }
                ]
            }
        },
        {
            "id": "https://api.weather.gov/stations/KCNK/observations/2019-08-14T02:55:00+00:00",
            "type": "Feature",
            "geometry": {
                "type": "Point",
                "coordinates": [
                    -97.650000000000006,
                    39.539999999999999
                ]
            },
            "properties": {
                "@id": "https://api.weather.gov/stations/KCNK/observations/2019-08-14T02:55:00+00:00",
                "@type": "wx:ObservationStation",
                "elevation": {
                    "value": 452,
                    "unitCode": "unit:m"
                },
                "station": "https://api.weather.gov/stations/KCNK",
                "timestamp": "2019-08-14T02:55:00+00:00",
                "rawMessage": "KCNK 140255Z AUTO 00000KT 10SM CLR 24/21 A3006 RMK AO2 SLP163 T02390206 51005",
                "textDescription": "Clear",
                "icon": "https://api.weather.gov/icons/land/night/skc?size=medium",
                "presentWeather": [],
                "temperature": {
                    "value": 23.900000000000034,
                    "unitCode": "unit:degC",
                    "qualityControl": "qc:V"
                },
                "dewpoint": {
                    "value": 20.600000000000023,
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
                    "value": 101800,
                    "unitCode": "unit:Pa",
                    "qualityControl": "qc:V"
                },
                "seaLevelPressure": {
                    "value": 101630,
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
                    "value": 81.802603756193932,
                    "unitCode": "unit:percent",
                    "qualityControl": "qc:C"
                },
                "windChill": {
                    "value": null,
                    "unitCode": "unit:degC",
                    "qualityControl": "qc:V"
                },
                "heatIndex": {
                    "value": 24.481512431411772,
                    "unitCode": "unit:degC",
                    "qualityControl": "qc:V"
                },
                "cloudLayers": [
                    {
                        "base": {
                            "value": null,
                            "unitCode": "unit:m"
                        },
                        "amount": "CLR"
                    }
                ]
            }
        },
        {
            "id": "https://api.weather.gov/stations/KCNK/observations/2019-08-14T01:55:00+00:00",
            "type": "Feature",
            "geometry": {
                "type": "Point",
                "coordinates": [
                    -97.650000000000006,
                    39.539999999999999
                ]
            },
            "properties": {
                "@id": "https://api.weather.gov/stations/KCNK/observations/2019-08-14T01:55:00+00:00",
                "@type": "wx:ObservationStation",
                "elevation": {
                    "value": 452,
                    "unitCode": "unit:m"
                },
                "station": "https://api.weather.gov/stations/KCNK",
                "timestamp": "2019-08-14T01:55:00+00:00",
                "rawMessage": "KCNK 140155Z AUTO 00000KT 10SM CLR 26/19 A3006 RMK AO2 SLP162 T02560194",
                "textDescription": "Clear",
                "icon": "https://api.weather.gov/icons/land/night/skc?size=medium",
                "presentWeather": [],
                "temperature": {
                    "value": 25.600000000000023,
                    "unitCode": "unit:degC",
                    "qualityControl": "qc:V"
                },
                "dewpoint": {
                    "value": 19.400000000000034,
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
                    "value": 101800,
                    "unitCode": "unit:Pa",
                    "qualityControl": "qc:V"
                },
                "seaLevelPressure": {
                    "value": 101620,
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
                    "value": 68.612054435067492,
                    "unitCode": "unit:percent",
                    "qualityControl": "qc:C"
                },
                "windChill": {
                    "value": null,
                    "unitCode": "unit:degC",
                    "qualityControl": "qc:V"
                },
                "heatIndex": {
                    "value": 26.007092532471177,
                    "unitCode": "unit:degC",
                    "qualityControl": "qc:V"
                },
                "cloudLayers": [
                    {
                        "base": {
                            "value": null,
                            "unitCode": "unit:m"
                        },
                        "amount": "CLR"
                    }
                ]
            }
        },
        {
            "id": "https://api.weather.gov/stations/KCNK/observations/2019-08-14T00:55:00+00:00",
            "type": "Feature",
            "geometry": {
                "type": "Point",
                "coordinates": [
                    -97.650000000000006,
                    39.539999999999999
                ]
            },
            "properties": {
                "@id": "https://api.weather.gov/stations/KCNK/observations/2019-08-14T00:55:00+00:00",
                "@type": "wx:ObservationStation",
                "elevation": {
                    "value": 452,
                    "unitCode": "unit:m"
                },
                "station": "https://api.weather.gov/stations/KCNK",
                "timestamp": "2019-08-14T00:55:00+00:00",
                "rawMessage": "KCNK 140055Z AUTO 29003KT 10SM CLR 27/19 A3006 RMK AO2 SLP163 T02670194",
                "textDescription": "Clear",
                "icon": "https://api.weather.gov/icons/land/night/skc?size=medium",
                "presentWeather": [],
                "temperature": {
                    "value": 26.700000000000045,
                    "unitCode": "unit:degC",
                    "qualityControl": "qc:V"
                },
                "dewpoint": {
                    "value": 19.400000000000034,
                    "unitCode": "unit:degC",
                    "qualityControl": "qc:V"
                },
                "windDirection": {
                    "value": 290,
                    "unitCode": "unit:degree_(angle)",
                    "qualityControl": "qc:V"
                },
                "windSpeed": {
                    "value": 1.5,
                    "unitCode": "unit:m_s-1",
                    "qualityControl": "qc:V"
                },
                "windGust": {
                    "value": null,
                    "unitCode": "unit:m_s-1",
                    "qualityControl": "qc:Z"
                },
                "barometricPressure": {
                    "value": 101800,
                    "unitCode": "unit:Pa",
                    "qualityControl": "qc:V"
                },
                "seaLevelPressure": {
                    "value": 101630,
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
                    "value": 64.292485914891955,
                    "unitCode": "unit:percent",
                    "qualityControl": "qc:C"
                },
                "windChill": {
                    "value": null,
                    "unitCode": "unit:degC",
                    "qualityControl": "qc:V"
                },
                "heatIndex": {
                    "value": 27.981288713580284,
                    "unitCode": "unit:degC",
                    "qualityControl": "qc:V"
                },
                "cloudLayers": [
                    {
                        "base": {
                            "value": null,
                            "unitCode": "unit:m"
                        },
                        "amount": "CLR"
                    }
                ]
            }
        },
        {
            "id": "https://api.weather.gov/stations/KCNK/observations/2019-08-13T23:55:00+00:00",
            "type": "Feature",
            "geometry": {
                "type": "Point",
                "coordinates": [
                    -97.650000000000006,
                    39.539999999999999
                ]
            },
            "properties": {
                "@id": "https://api.weather.gov/stations/KCNK/observations/2019-08-13T23:55:00+00:00",
                "@type": "wx:ObservationStation",
                "elevation": {
                    "value": 452,
                    "unitCode": "unit:m"
                },
                "station": "https://api.weather.gov/stations/KCNK",
                "timestamp": "2019-08-13T23:55:00+00:00",
                "rawMessage": "KCNK 132355Z AUTO 00000KT 10SM CLR 29/19 A3004 RMK AO2 SLP158 T02890194 10311 20289 53000",
                "textDescription": "Clear",
                "icon": "https://api.weather.gov/icons/land/day/skc?size=medium",
                "presentWeather": [],
                "temperature": {
                    "value": 28.900000000000034,
                    "unitCode": "unit:degC",
                    "qualityControl": "qc:V"
                },
                "dewpoint": {
                    "value": 19.400000000000034,
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
                    "value": 101730,
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
                    "value": 56.541223193659441,
                    "unitCode": "unit:percent",
                    "qualityControl": "qc:C"
                },
                "windChill": {
                    "value": null,
                    "unitCode": "unit:degC",
                    "qualityControl": "qc:V"
                },
                "heatIndex": {
                    "value": 30.368668175219511,
                    "unitCode": "unit:degC",
                    "qualityControl": "qc:V"
                },
                "cloudLayers": [
                    {
                        "base": {
                            "value": null,
                            "unitCode": "unit:m"
                        },
                        "amount": "CLR"
                    }
                ]
            }
        },
        {
            "id": "https://api.weather.gov/stations/KCNK/observations/2019-08-13T22:55:00+00:00",
            "type": "Feature",
            "geometry": {
                "type": "Point",
                "coordinates": [
                    -97.650000000000006,
                    39.539999999999999
                ]
            },
            "properties": {
                "@id": "https://api.weather.gov/stations/KCNK/observations/2019-08-13T22:55:00+00:00",
                "@type": "wx:ObservationStation",
                "elevation": {
                    "value": 452,
                    "unitCode": "unit:m"
                },
                "station": "https://api.weather.gov/stations/KCNK",
                "timestamp": "2019-08-13T22:55:00+00:00",
                "rawMessage": "KCNK 132255Z AUTO 06004KT 10SM CLR 30/17 A3004 RMK AO2 SLP156 T03000172",
                "textDescription": "Clear",
                "icon": "https://api.weather.gov/icons/land/day/skc?size=medium",
                "presentWeather": [],
                "temperature": {
                    "value": 30,
                    "unitCode": "unit:degC",
                    "qualityControl": "qc:V"
                },
                "dewpoint": {
                    "value": 17.200000000000045,
                    "unitCode": "unit:degC",
                    "qualityControl": "qc:V"
                },
                "windDirection": {
                    "value": 59.999999999999993,
                    "unitCode": "unit:degree_(angle)",
                    "qualityControl": "qc:V"
                },
                "windSpeed": {
                    "value": 2.1000000000000001,
                    "unitCode": "unit:m_s-1",
                    "qualityControl": "qc:V"
                },
                "windGust": {
                    "value": null,
                    "unitCode": "unit:m_s-1",
                    "qualityControl": "qc:Z"
                },
                "barometricPressure": {
                    "value": 101730,
                    "unitCode": "unit:Pa",
                    "qualityControl": "qc:V"
                },
                "seaLevelPressure": {
                    "value": 101560,
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
                    "value": 46.225287581315285,
                    "unitCode": "unit:percent",
                    "qualityControl": "qc:C"
                },
                "windChill": {
                    "value": null,
                    "unitCode": "unit:degC",
                    "qualityControl": "qc:V"
                },
                "heatIndex": {
                    "value": 30.486048381524483,
                    "unitCode": "unit:degC",
                    "qualityControl": "qc:V"
                },
                "cloudLayers": [
                    {
                        "base": {
                            "value": null,
                            "unitCode": "unit:m"
                        },
                        "amount": "CLR"
                    }
                ]
            }
        },
        {
            "id": "https://api.weather.gov/stations/KCNK/observations/2019-08-13T21:55:00+00:00",
            "type": "Feature",
            "geometry": {
                "type": "Point",
                "coordinates": [
                    -97.650000000000006,
                    39.539999999999999
                ]
            },
            "properties": {
                "@id": "https://api.weather.gov/stations/KCNK/observations/2019-08-13T21:55:00+00:00",
                "@type": "wx:ObservationStation",
                "elevation": {
                    "value": 452,
                    "unitCode": "unit:m"
                },
                "station": "https://api.weather.gov/stations/KCNK",
                "timestamp": "2019-08-13T21:55:00+00:00",
                "rawMessage": "KCNK 132155Z AUTO 05005KT 10SM CLR 31/17 A3003 RMK AO2 SLP151 T03060167",
                "textDescription": "Clear",
                "icon": "https://api.weather.gov/icons/land/day/skc?size=medium",
                "presentWeather": [],
                "temperature": {
                    "value": 30.600000000000023,
                    "unitCode": "unit:degC",
                    "qualityControl": "qc:V"
                },
                "dewpoint": {
                    "value": 16.700000000000045,
                    "unitCode": "unit:degC",
                    "qualityControl": "qc:V"
                },
                "windDirection": {
                    "value": 50,
                    "unitCode": "unit:degree_(angle)",
                    "qualityControl": "qc:V"
                },
                "windSpeed": {
                    "value": 2.6000000000000001,
                    "unitCode": "unit:m_s-1",
                    "qualityControl": "qc:V"
                },
                "windGust": {
                    "value": null,
                    "unitCode": "unit:m_s-1",
                    "qualityControl": "qc:Z"
                },
                "barometricPressure": {
                    "value": 101690,
                    "unitCode": "unit:Pa",
                    "qualityControl": "qc:V"
                },
                "seaLevelPressure": {
                    "value": 101510,
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
                    "value": 43.269229030536742,
                    "unitCode": "unit:percent",
                    "qualityControl": "qc:C"
                },
                "windChill": {
                    "value": null,
                    "unitCode": "unit:degC",
                    "qualityControl": "qc:V"
                },
                "heatIndex": {
                    "value": 30.863869876988133,
                    "unitCode": "unit:degC",
                    "qualityControl": "qc:V"
                },
                "cloudLayers": [
                    {
                        "base": {
                            "value": null,
                            "unitCode": "unit:m"
                        },
                        "amount": "CLR"
                    }
                ]
            }
        },
        {
            "id": "https://api.weather.gov/stations/KCNK/observations/2019-08-13T20:55:00+00:00",
            "type": "Feature",
            "geometry": {
                "type": "Point",
                "coordinates": [
                    -97.650000000000006,
                    39.539999999999999
                ]
            },
            "properties": {
                "@id": "https://api.weather.gov/stations/KCNK/observations/2019-08-13T20:55:00+00:00",
                "@type": "wx:ObservationStation",
                "elevation": {
                    "value": 452,
                    "unitCode": "unit:m"
                },
                "station": "https://api.weather.gov/stations/KCNK",
                "timestamp": "2019-08-13T20:55:00+00:00",
                "rawMessage": "KCNK 132055Z AUTO 05008KT 10SM CLR 31/17 A3004 RMK AO2 SLP156 T03060167 58011",
                "textDescription": "Clear",
                "icon": "https://api.weather.gov/icons/land/day/skc?size=medium",
                "presentWeather": [],
                "temperature": {
                    "value": 30.600000000000023,
                    "unitCode": "unit:degC",
                    "qualityControl": "qc:V"
                },
                "dewpoint": {
                    "value": 16.700000000000045,
                    "unitCode": "unit:degC",
                    "qualityControl": "qc:V"
                },
                "windDirection": {
                    "value": 50,
                    "unitCode": "unit:degree_(angle)",
                    "qualityControl": "qc:V"
                },
                "windSpeed": {
                    "value": 4.0999999999999996,
                    "unitCode": "unit:m_s-1",
                    "qualityControl": "qc:V"
                },
                "windGust": {
                    "value": null,
                    "unitCode": "unit:m_s-1",
                    "qualityControl": "qc:Z"
                },
                "barometricPressure": {
                    "value": 101730,
                    "unitCode": "unit:Pa",
                    "qualityControl": "qc:V"
                },
                "seaLevelPressure": {
                    "value": 101560,
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
                    "value": 43.269229030536742,
                    "unitCode": "unit:percent",
                    "qualityControl": "qc:C"
                },
                "windChill": {
                    "value": null,
                    "unitCode": "unit:degC",
                    "qualityControl": "qc:V"
                },
                "heatIndex": {
                    "value": 30.863869876988133,
                    "unitCode": "unit:degC",
                    "qualityControl": "qc:V"
                },
                "cloudLayers": [
                    {
                        "base": {
                            "value": null,
                            "unitCode": "unit:m"
                        },
                        "amount": "CLR"
                    }
                ]
            }
        },
        {
            "id": "https://api.weather.gov/stations/KCNK/observations/2018-05-15T10:55:00+00:00",
            "type": "Feature",
            "geometry": {
                "type": "Point",
                "coordinates": [
                    -97.650001500000002,
                    39.540000900000003
                ]
            },
            "properties": {
                "@id": "https://api.weather.gov/stations/KCNK/observations/2018-05-15T10:55:00+00:00",
                "@type": "wx:ObservationStation",
                "elevation": {
                    "value": 452,
                    "unitCode": "unit:m"
                },
                "station": "https://api.weather.gov/stations/KCNK",
                "timestamp": "2018-05-15T10:55:00+00:00",
                "rawMessage": "KCNK 151055Z AUTO 33004KT 10SM SCT041 OVC065 18/16 A2998 RMK AO2 SLP140 T01780156 TSNO",
                "textDescription": "Cloudy",
                "icon": "https://api.weather.gov/icons/land/night/ovc?size=medium",
                "presentWeather": [],
                "temperature": {
                    "value": 17.800012207031273,
                    "unitCode": "unit:degC",
                    "qualityControl": "qc:V"
                },
                "dewpoint": {
                    "value": 15.600000000000023,
                    "unitCode": "unit:degC",
                    "qualityControl": "qc:V"
                },
                "windDirection": {
                    "value": 330,
                    "unitCode": "unit:degree_(angle)",
                    "qualityControl": "qc:V"
                },
                "windSpeed": {
                    "value": 2.0999999046325684,
                    "unitCode": "unit:m_s-1",
                    "qualityControl": "qc:V"
                },
                "windGust": {
                    "value": null,
                    "unitCode": "unit:m_s-1",
                    "qualityControl": "qc:Z"
                },
                "barometricPressure": {
                    "value": 101520,
                    "unitCode": "unit:Pa",
                    "qualityControl": "qc:V"
                },
                "seaLevelPressure": {
                    "value": 101400,
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
                    "value": 86.962868675638774,
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
                            "value": 1250,
                            "unitCode": "unit:m"
                        },
                        "amount": "SCT"
                    },
                    {
                        "base": {
                            "value": 1980,
                            "unitCode": "unit:m"
                        },
                        "amount": "OVC"
                    }
                ]
            }
        },
        {
            "id": "https://api.weather.gov/stations/KCNK/observations/2018-05-14T13:41:00+00:00",
            "type": "Feature",
            "geometry": {
                "type": "Point",
                "coordinates": [
                    -97.650001500000002,
                    39.540000900000003
                ]
            },
            "properties": {
                "@id": "https://api.weather.gov/stations/KCNK/observations/2018-05-14T13:41:00+00:00",
                "@type": "wx:ObservationStation",
                "elevation": {
                    "value": 452,
                    "unitCode": "unit:m"
                },
                "station": "https://api.weather.gov/stations/KCNK",
                "timestamp": "2018-05-14T13:41:00+00:00",
                "rawMessage": "KCNK 141341Z AUTO 29010G17KT 3SM BR OVC003 16/15 A2999 RMK AO2 PRESRR T01560150 TSNO",
                "textDescription": "Fog/Mist",
                "icon": "https://api.weather.gov/icons/land/day/fog?size=medium",
                "presentWeather": [
                    {
                        "intensity": null,
                        "modifier": null,
                        "weather": "fog_mist",
                        "rawString": "BR"
                    }
                ],
                "temperature": {
                    "value": 15.600000000000023,
                    "unitCode": "unit:degC",
                    "qualityControl": "qc:S"
                },
                "dewpoint": {
                    "value": 14.999993896484398,
                    "unitCode": "unit:degC",
                    "qualityControl": "qc:S"
                },
                "windDirection": {
                    "value": 290,
                    "unitCode": "unit:degree_(angle)",
                    "qualityControl": "qc:S"
                },
                "windSpeed": {
                    "value": 5.0999999046325684,
                    "unitCode": "unit:m_s-1",
                    "qualityControl": "qc:S"
                },
                "windGust": {
                    "value": 8.8000001907348633,
                    "unitCode": "unit:m_s-1",
                    "qualityControl": "qc:S"
                },
                "barometricPressure": {
                    "value": 101560,
                    "unitCode": "unit:Pa",
                    "qualityControl": "qc:S"
                },
                "seaLevelPressure": {
                    "value": null,
                    "unitCode": "unit:Pa",
                    "qualityControl": "qc:Z"
                },
                "visibility": {
                    "value": 4830,
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
                    "value": 96.222154346325709,
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
                            "value": 90,
                            "unitCode": "unit:m"
                        },
                        "amount": "OVC"
                    }
                ]
            }
        },
        {
            "id": "https://api.weather.gov/stations/KCNK/observations/2018-05-14T02:55:00+00:00",
            "type": "Feature",
            "geometry": {
                "type": "Point",
                "coordinates": [
                    -97.650001500000002,
                    39.540000900000003
                ]
            },
            "properties": {
                "@id": "https://api.weather.gov/stations/KCNK/observations/2018-05-14T02:55:00+00:00",
                "@type": "wx:ObservationStation",
                "elevation": {
                    "value": 452,
                    "unitCode": "unit:m"
                },
                "station": "https://api.weather.gov/stations/KCNK",
                "timestamp": "2018-05-14T02:55:00+00:00",
                "rawMessage": "KCNK 140255Z AUTO 35009KT 10SM CLR 21/16 A2987 RMK AO2 SLP107 T02110161 53007 TSNO",
                "textDescription": "Clear",
                "icon": "https://api.weather.gov/icons/land/night/skc?size=medium",
                "presentWeather": [],
                "temperature": {
                    "value": 21.100000000000023,
                    "unitCode": "unit:degC",
                    "qualityControl": "qc:V"
                },
                "dewpoint": {
                    "value": 16.100000000000023,
                    "unitCode": "unit:degC",
                    "qualityControl": "qc:V"
                },
                "windDirection": {
                    "value": 350,
                    "unitCode": "unit:degree_(angle)",
                    "qualityControl": "qc:V"
                },
                "windSpeed": {
                    "value": 4.5999999046325684,
                    "unitCode": "unit:m_s-1",
                    "qualityControl": "qc:V"
                },
                "windGust": {
                    "value": null,
                    "unitCode": "unit:m_s-1",
                    "qualityControl": "qc:Z"
                },
                "barometricPressure": {
                    "value": 101150,
                    "unitCode": "unit:Pa",
                    "qualityControl": "qc:V"
                },
                "seaLevelPressure": {
                    "value": 101070,
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
                    "value": 73.132162098067255,
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
                            "value": null,
                            "unitCode": "unit:m"
                        },
                        "amount": "CLR"
                    }
                ]
            }
        },
        {
            "id": "https://api.weather.gov/stations/KCNK/observations/2018-05-13T18:55:00+00:00",
            "type": "Feature",
            "geometry": {
                "type": "Point",
                "coordinates": [
                    -97.650001500000002,
                    39.540000900000003
                ]
            },
            "properties": {
                "@id": "https://api.weather.gov/stations/KCNK/observations/2018-05-13T18:55:00+00:00",
                "@type": "wx:ObservationStation",
                "elevation": {
                    "value": 452,
                    "unitCode": "unit:m"
                },
                "station": "https://api.weather.gov/stations/KCNK",
                "timestamp": "2018-05-13T18:55:00+00:00",
                "rawMessage": "KCNK 131855Z AUTO VRB03KT 10SM CLR 24/16 A2993 RMK AO2 SLP124 T02440161 TSNO",
                "textDescription": "Clear",
                "icon": "https://api.weather.gov/icons/land/day/skc?size=medium",
                "presentWeather": [],
                "temperature": {
                    "value": 24.399987792968773,
                    "unitCode": "unit:degC",
                    "qualityControl": "qc:V"
                },
                "dewpoint": {
                    "value": 16.100000000000023,
                    "unitCode": "unit:degC",
                    "qualityControl": "qc:V"
                },
                "windDirection": {
                    "value": null,
                    "unitCode": "unit:degree_(angle)",
                    "qualityControl": "qc:Z"
                },
                "windSpeed": {
                    "value": 1.5,
                    "unitCode": "unit:m_s-1",
                    "qualityControl": "qc:V"
                },
                "windGust": {
                    "value": null,
                    "unitCode": "unit:m_s-1",
                    "qualityControl": "qc:Z"
                },
                "barometricPressure": {
                    "value": 101360,
                    "unitCode": "unit:Pa",
                    "qualityControl": "qc:V"
                },
                "seaLevelPressure": {
                    "value": 101240,
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
                    "value": 59.869242640391114,
                    "unitCode": "unit:percent",
                    "qualityControl": "qc:C"
                },
                "windChill": {
                    "value": null,
                    "unitCode": "unit:degC",
                    "qualityControl": "qc:V"
                },
                "heatIndex": {
                    "value": 24.45879457454248,
                    "unitCode": "unit:degC",
                    "qualityControl": "qc:V"
                },
                "cloudLayers": [
                    {
                        "base": {
                            "value": null,
                            "unitCode": "unit:m"
                        },
                        "amount": "CLR"
                    }
                ]
            }
        },
        {
            "id": "https://api.weather.gov/stations/KCNK/observations/2018-05-12T17:55:00+00:00",
            "type": "Feature",
            "geometry": {
                "type": "Point",
                "coordinates": [
                    -97.650001500000002,
                    39.540000900000003
                ]
            },
            "properties": {
                "@id": "https://api.weather.gov/stations/KCNK/observations/2018-05-12T17:55:00+00:00",
                "@type": "wx:ObservationStation",
                "elevation": {
                    "value": 452,
                    "unitCode": "unit:m"
                },
                "station": "https://api.weather.gov/stations/KCNK",
                "timestamp": "2018-05-12T17:55:00+00:00",
                "rawMessage": "KCNK 121755Z AUTO 04006KT 10SM CLR 24/15 A2985 RMK AO2 SLP097 T02390150 10239 20139 57001 TSNO",
                "textDescription": "Clear",
                "icon": "https://api.weather.gov/icons/land/day/skc?size=medium",
                "presentWeather": [],
                "temperature": {
                    "value": 23.899987792968773,
                    "unitCode": "unit:degC",
                    "qualityControl": "qc:V"
                },
                "dewpoint": {
                    "value": 14.999993896484398,
                    "unitCode": "unit:degC",
                    "qualityControl": "qc:V"
                },
                "windDirection": {
                    "value": 40,
                    "unitCode": "unit:degree_(angle)",
                    "qualityControl": "qc:V"
                },
                "windSpeed": {
                    "value": 3.0999999046325684,
                    "unitCode": "unit:m_s-1",
                    "qualityControl": "qc:V"
                },
                "windGust": {
                    "value": null,
                    "unitCode": "unit:m_s-1",
                    "qualityControl": "qc:Z"
                },
                "barometricPressure": {
                    "value": 101080,
                    "unitCode": "unit:Pa",
                    "qualityControl": "qc:V"
                },
                "seaLevelPressure": {
                    "value": 100970,
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
                    "value": 57.494991127058569,
                    "unitCode": "unit:percent",
                    "qualityControl": "qc:C"
                },
                "windChill": {
                    "value": null,
                    "unitCode": "unit:degC",
                    "qualityControl": "qc:V"
                },
                "heatIndex": {
                    "value": 23.846800229472194,
                    "unitCode": "unit:degC",
                    "qualityControl": "qc:V"
                },
                "cloudLayers": [
                    {
                        "base": {
                            "value": null,
                            "unitCode": "unit:m"
                        },
                        "amount": "CLR"
                    }
                ]
            }
        },
        {
            "id": "https://api.weather.gov/stations/KCNK/observations/2018-05-12T07:55:00+00:00",
            "type": "Feature",
            "geometry": {
                "type": "Point",
                "coordinates": [
                    -97.650001500000002,
                    39.540000900000003
                ]
            },
            "properties": {
                "@id": "https://api.weather.gov/stations/KCNK/observations/2018-05-12T07:55:00+00:00",
                "@type": "wx:ObservationStation",
                "elevation": {
                    "value": 452,
                    "unitCode": "unit:m"
                },
                "station": "https://api.weather.gov/stations/KCNK",
                "timestamp": "2018-05-12T07:55:00+00:00",
                "rawMessage": "KCNK 120755Z AUTO 06007KT 5SM BR CLR 15/14 A2977 RMK AO2 SLP070 T01500139 TSNO",
                "textDescription": "Fog/Mist",
                "icon": "https://api.weather.gov/icons/land/night/fog?size=medium",
                "presentWeather": [
                    {
                        "intensity": null,
                        "modifier": null,
                        "weather": "fog_mist",
                        "rawString": "BR"
                    }
                ],
                "temperature": {
                    "value": 14.999993896484398,
                    "unitCode": "unit:degC",
                    "qualityControl": "qc:V"
                },
                "dewpoint": {
                    "value": 13.899987792968773,
                    "unitCode": "unit:degC",
                    "qualityControl": "qc:V"
                },
                "windDirection": {
                    "value": 59.999999999999993,
                    "unitCode": "unit:degree_(angle)",
                    "qualityControl": "qc:V"
                },
                "windSpeed": {
                    "value": 3.5999999046325684,
                    "unitCode": "unit:m_s-1",
                    "qualityControl": "qc:V"
                },
                "windGust": {
                    "value": null,
                    "unitCode": "unit:m_s-1",
                    "qualityControl": "qc:Z"
                },
                "barometricPressure": {
                    "value": 100810,
                    "unitCode": "unit:Pa",
                    "qualityControl": "qc:V"
                },
                "seaLevelPressure": {
                    "value": 100700,
                    "unitCode": "unit:Pa",
                    "qualityControl": "qc:V"
                },
                "visibility": {
                    "value": 8050,
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
                    "value": 93.139715854574732,
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
                            "value": null,
                            "unitCode": "unit:m"
                        },
                        "amount": "CLR"
                    }
                ]
            }
        },
        {
            "id": "https://api.weather.gov/stations/KCNK/observations/2018-05-12T03:55:00+00:00",
            "type": "Feature",
            "geometry": {
                "type": "Point",
                "coordinates": [
                    -97.650001500000002,
                    39.540000900000003
                ]
            },
            "properties": {
                "@id": "https://api.weather.gov/stations/KCNK/observations/2018-05-12T03:55:00+00:00",
                "@type": "wx:ObservationStation",
                "elevation": {
                    "value": 452,
                    "unitCode": "unit:m"
                },
                "station": "https://api.weather.gov/stations/KCNK",
                "timestamp": "2018-05-12T03:55:00+00:00",
                "rawMessage": "KCNK 120355Z AUTO 06007KT 10SM CLR 17/15 A2977 RMK AO2 SLP070 T01720150 TSNO",
                "textDescription": "Clear",
                "icon": "https://api.weather.gov/icons/land/night/skc?size=medium",
                "presentWeather": [],
                "temperature": {
                    "value": 17.200006103515648,
                    "unitCode": "unit:degC",
                    "qualityControl": "qc:V"
                },
                "dewpoint": {
                    "value": 14.999993896484398,
                    "unitCode": "unit:degC",
                    "qualityControl": "qc:V"
                },
                "windDirection": {
                    "value": 59.999999999999993,
                    "unitCode": "unit:degree_(angle)",
                    "qualityControl": "qc:V"
                },
                "windSpeed": {
                    "value": 3.5999999046325684,
                    "unitCode": "unit:m_s-1",
                    "qualityControl": "qc:V"
                },
                "windGust": {
                    "value": null,
                    "unitCode": "unit:m_s-1",
                    "qualityControl": "qc:Z"
                },
                "barometricPressure": {
                    "value": 100810,
                    "unitCode": "unit:Pa",
                    "qualityControl": "qc:V"
                },
                "seaLevelPressure": {
                    "value": 100700,
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
                    "value": 86.906567582690457,
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
                            "value": null,
                            "unitCode": "unit:m"
                        },
                        "amount": "CLR"
                    }
                ]
            }
        },
        {
            "id": "https://api.weather.gov/stations/KCNK/observations/2018-05-12T01:55:00+00:00",
            "type": "Feature",
            "geometry": {
                "type": "Point",
                "coordinates": [
                    -97.650001500000002,
                    39.540000900000003
                ]
            },
            "properties": {
                "@id": "https://api.weather.gov/stations/KCNK/observations/2018-05-12T01:55:00+00:00",
                "@type": "wx:ObservationStation",
                "elevation": {
                    "value": 452,
                    "unitCode": "unit:m"
                },
                "station": "https://api.weather.gov/stations/KCNK",
                "timestamp": "2018-05-12T01:55:00+00:00",
                "rawMessage": "KCNK 120155Z AUTO 07010KT 10SM CLR 19/15 A2971 RMK AO2 SLP049 T01890150 TSNO",
                "textDescription": "Clear",
                "icon": "https://api.weather.gov/icons/land/night/skc?size=medium",
                "presentWeather": [],
                "temperature": {
                    "value": 18.899987792968773,
                    "unitCode": "unit:degC",
                    "qualityControl": "qc:V"
                },
                "dewpoint": {
                    "value": 14.999993896484398,
                    "unitCode": "unit:degC",
                    "qualityControl": "qc:V"
                },
                "windDirection": {
                    "value": 70,
                    "unitCode": "unit:degree_(angle)",
                    "qualityControl": "qc:V"
                },
                "windSpeed": {
                    "value": 5.0999999046325684,
                    "unitCode": "unit:m_s-1",
                    "qualityControl": "qc:V"
                },
                "windGust": {
                    "value": null,
                    "unitCode": "unit:m_s-1",
                    "qualityControl": "qc:Z"
                },
                "barometricPressure": {
                    "value": 100610,
                    "unitCode": "unit:Pa",
                    "qualityControl": "qc:V"
                },
                "seaLevelPressure": {
                    "value": 100490,
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
                    "value": 78.101403327041425,
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
                            "value": null,
                            "unitCode": "unit:m"
                        },
                        "amount": "CLR"
                    }
                ]
            }
        },
        {
            "id": "https://api.weather.gov/stations/KCNK/observations/2018-05-11T23:55:00+00:00",
            "type": "Feature",
            "geometry": {
                "type": "Point",
                "coordinates": [
                    -97.650001500000002,
                    39.540000900000003
                ]
            },
            "properties": {
                "@id": "https://api.weather.gov/stations/KCNK/observations/2018-05-11T23:55:00+00:00",
                "@type": "wx:ObservationStation",
                "elevation": {
                    "value": 452,
                    "unitCode": "unit:m"
                },
                "station": "https://api.weather.gov/stations/KCNK",
                "timestamp": "2018-05-11T23:55:00+00:00",
                "rawMessage": "KCNK 112355Z AUTO 04012G24KT 10SM CLR 22/16 A2968 RMK AO2 SLP042 T02220156 10289 20222 53003 TSNO",
                "textDescription": "Clear",
                "icon": "https://api.weather.gov/icons/land/day/skc?size=medium",
                "presentWeather": [],
                "temperature": {
                    "value": 22.200006103515648,
                    "unitCode": "unit:degC",
                    "qualityControl": "qc:V"
                },
                "dewpoint": {
                    "value": 15.600000000000023,
                    "unitCode": "unit:degC",
                    "qualityControl": "qc:V"
                },
                "windDirection": {
                    "value": 40,
                    "unitCode": "unit:degree_(angle)",
                    "qualityControl": "qc:V"
                },
                "windSpeed": {
                    "value": 6.1999998092651367,
                    "unitCode": "unit:m_s-1",
                    "qualityControl": "qc:V"
                },
                "windGust": {
                    "value": null,
                    "unitCode": "unit:m_s-1",
                    "qualityControl": "qc:Z"
                },
                "barometricPressure": {
                    "value": 100510,
                    "unitCode": "unit:Pa",
                    "qualityControl": "qc:V"
                },
                "seaLevelPressure": {
                    "value": 100420,
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
                    "value": 66.224932196846737,
                    "unitCode": "unit:percent",
                    "qualityControl": "qc:C"
                },
                "windChill": {
                    "value": null,
                    "unitCode": "unit:degC",
                    "qualityControl": "qc:V"
                },
                "heatIndex": {
                    "value": 22.204768832340392,
                    "unitCode": "unit:degC",
                    "qualityControl": "qc:V"
                },
                "cloudLayers": [
                    {
                        "base": {
                            "value": null,
                            "unitCode": "unit:m"
                        },
                        "amount": "CLR"
                    }
                ]
            }
        },
        {
            "id": "https://api.weather.gov/stations/KCNK/observations/2018-05-11T20:55:00+00:00",
            "type": "Feature",
            "geometry": {
                "type": "Point",
                "coordinates": [
                    -97.650001500000002,
                    39.540000900000003
                ]
            },
            "properties": {
                "@id": "https://api.weather.gov/stations/KCNK/observations/2018-05-11T20:55:00+00:00",
                "@type": "wx:ObservationStation",
                "elevation": {
                    "value": 452,
                    "unitCode": "unit:m"
                },
                "station": "https://api.weather.gov/stations/KCNK",
                "timestamp": "2018-05-11T20:55:00+00:00",
                "rawMessage": "KCNK 112055Z AUTO 01013KT 10SM SCT055 24/16 A2967 RMK AO2 SLP033 T02440156 55004 TSNO",
                "textDescription": "Partly Cloudy",
                "icon": "https://api.weather.gov/icons/land/day/sct?size=medium",
                "presentWeather": [],
                "temperature": {
                    "value": 24.399987792968773,
                    "unitCode": "unit:degC",
                    "qualityControl": "qc:V"
                },
                "dewpoint": {
                    "value": 15.600000000000023,
                    "unitCode": "unit:degC",
                    "qualityControl": "qc:V"
                },
                "windDirection": {
                    "value": 10,
                    "unitCode": "unit:degree_(angle)",
                    "qualityControl": "qc:V"
                },
                "windSpeed": {
                    "value": 6.6999998092651367,
                    "unitCode": "unit:m_s-1",
                    "qualityControl": "qc:V"
                },
                "windGust": {
                    "value": null,
                    "unitCode": "unit:m_s-1",
                    "qualityControl": "qc:Z"
                },
                "barometricPressure": {
                    "value": 100480,
                    "unitCode": "unit:Pa",
                    "qualityControl": "qc:V"
                },
                "seaLevelPressure": {
                    "value": 100330,
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
                    "value": 57.986331103351965,
                    "unitCode": "unit:percent",
                    "qualityControl": "qc:C"
                },
                "windChill": {
                    "value": null,
                    "unitCode": "unit:degC",
                    "qualityControl": "qc:V"
                },
                "heatIndex": {
                    "value": 24.409629662186489,
                    "unitCode": "unit:degC",
                    "qualityControl": "qc:V"
                },
                "cloudLayers": [
                    {
                        "base": {
                            "value": 1680,
                            "unitCode": "unit:m"
                        },
                        "amount": "SCT"
                    }
                ]
            }
        },
        {
            "id": "https://api.weather.gov/stations/KCNK/observations/2018-05-11T18:55:00+00:00",
            "type": "Feature",
            "geometry": {
                "type": "Point",
                "coordinates": [
                    -97.650001500000002,
                    39.540000900000003
                ]
            },
            "properties": {
                "@id": "https://api.weather.gov/stations/KCNK/observations/2018-05-11T18:55:00+00:00",
                "@type": "wx:ObservationStation",
                "elevation": {
                    "value": 452,
                    "unitCode": "unit:m"
                },
                "station": "https://api.weather.gov/stations/KCNK",
                "timestamp": "2018-05-11T18:55:00+00:00",
                "rawMessage": "KCNK 111855Z AUTO 17006G17KT 10SM BKN050 28/14 A2966 RMK AO2 SLP027 T02780144 TSNO",
                "textDescription": "Mostly Cloudy",
                "icon": "https://api.weather.gov/icons/land/day/bkn?size=medium",
                "presentWeather": [],
                "temperature": {
                    "value": 27.800012207031273,
                    "unitCode": "unit:degC",
                    "qualityControl": "qc:V"
                },
                "dewpoint": {
                    "value": 14.399987792968773,
                    "unitCode": "unit:degC",
                    "qualityControl": "qc:V"
                },
                "windDirection": {
                    "value": 170,
                    "unitCode": "unit:degree_(angle)",
                    "qualityControl": "qc:V"
                },
                "windSpeed": {
                    "value": 3.0999999046325684,
                    "unitCode": "unit:m_s-1",
                    "qualityControl": "qc:V"
                },
                "windGust": {
                    "value": null,
                    "unitCode": "unit:m_s-1",
                    "qualityControl": "qc:Z"
                },
                "barometricPressure": {
                    "value": 100440,
                    "unitCode": "unit:Pa",
                    "qualityControl": "qc:V"
                },
                "seaLevelPressure": {
                    "value": 100270,
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
                    "value": 43.900931444509105,
                    "unitCode": "unit:percent",
                    "qualityControl": "qc:C"
                },
                "windChill": {
                    "value": null,
                    "unitCode": "unit:degC",
                    "qualityControl": "qc:V"
                },
                "heatIndex": {
                    "value": 27.756573033768859,
                    "unitCode": "unit:degC",
                    "qualityControl": "qc:V"
                },
                "cloudLayers": [
                    {
                        "base": {
                            "value": 1520,
                            "unitCode": "unit:m"
                        },
                        "amount": "BKN"
                    }
                ]
            }
        },
        {
            "id": "https://api.weather.gov/stations/KCNK/observations/2017-06-12T01:55:00+00:00",
            "type": "Feature",
            "geometry": {
                "type": "Point",
                "coordinates": [
                    -97.650001500000002,
                    39.549999200000002
                ]
            },
            "properties": {
                "@id": "https://api.weather.gov/stations/KCNK/observations/2017-06-12T01:55:00+00:00",
                "@type": "wx:ObservationStation",
                "elevation": {
                    "value": 452,
                    "unitCode": "unit:m"
                },
                "station": "https://api.weather.gov/stations/KCNK",
                "timestamp": "2017-06-12T01:55:00+00:00",
                "rawMessage": "KCNK 120155Z AUTO 17010KT 10SM CLR 29/19 A2970 RMK AO2 SLP041 T02940194",
                "textDescription": "Clear",
                "icon": "https://api.weather.gov/icons/land/night/skc?size=medium",
                "presentWeather": [],
                "temperature": {
                    "value": 29.399987792968773,
                    "unitCode": "unit:degC",
                    "qualityControl": "qc:V"
                },
                "dewpoint": {
                    "value": 19.399987792968773,
                    "unitCode": "unit:degC",
                    "qualityControl": "qc:V"
                },
                "windDirection": {
                    "value": 170,
                    "unitCode": "unit:degree_(angle)",
                    "qualityControl": "qc:V"
                },
                "windSpeed": {
                    "value": 5.0999999046325684,
                    "unitCode": "unit:m_s-1",
                    "qualityControl": "qc:V"
                },
                "windGust": {
                    "value": null,
                    "unitCode": "unit:m_s-1",
                    "qualityControl": "qc:Z"
                },
                "barometricPressure": {
                    "value": 100580,
                    "unitCode": "unit:Pa",
                    "qualityControl": "qc:V"
                },
                "seaLevelPressure": {
                    "value": 100410,
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
                    "value": 54.930071074451561,
                    "unitCode": "unit:percent",
                    "qualityControl": "qc:C"
                },
                "windChill": {
                    "value": null,
                    "unitCode": "unit:degC",
                    "qualityControl": "qc:V"
                },
                "heatIndex": {
                    "value": 30.904632877606161,
                    "unitCode": "unit:degC",
                    "qualityControl": "qc:V"
                },
                "cloudLayers": []
            }
        },
        {
            "id": "https://api.weather.gov/stations/KCNK/observations/2017-06-11T16:55:00+00:00",
            "type": "Feature",
            "geometry": {
                "type": "Point",
                "coordinates": [
                    -97.650001500000002,
                    39.549999200000002
                ]
            },
            "properties": {
                "@id": "https://api.weather.gov/stations/KCNK/observations/2017-06-11T16:55:00+00:00",
                "@type": "wx:ObservationStation",
                "elevation": {
                    "value": 452,
                    "unitCode": "unit:m"
                },
                "station": "https://api.weather.gov/stations/KCNK",
                "timestamp": "2017-06-11T16:55:00+00:00",
                "rawMessage": "KCNK 111655Z AUTO 18023G32KT 10SM CLR 31/20 A2968 RMK AO2 PK WND 18032/1648 SLP032 T03060200",
                "textDescription": "Clear and Breezy",
                "icon": "https://api.weather.gov/icons/land/day/wind_skc?size=medium",
                "presentWeather": [],
                "temperature": {
                    "value": 30.600000000000023,
                    "unitCode": "unit:degC",
                    "qualityControl": "qc:V"
                },
                "dewpoint": {
                    "value": 19.999993896484398,
                    "unitCode": "unit:degC",
                    "qualityControl": "qc:V"
                },
                "windDirection": {
                    "value": 180,
                    "unitCode": "unit:degree_(angle)",
                    "qualityControl": "qc:V"
                },
                "windSpeed": {
                    "value": 11.800000190734863,
                    "unitCode": "unit:m_s-1",
                    "qualityControl": "qc:V"
                },
                "windGust": {
                    "value": 16.5,
                    "unitCode": "unit:m_s-1",
                    "qualityControl": "qc:S"
                },
                "barometricPressure": {
                    "value": 100510,
                    "unitCode": "unit:Pa",
                    "qualityControl": "qc:V"
                },
                "seaLevelPressure": {
                    "value": 100320,
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
                    "value": 53.215048097497423,
                    "unitCode": "unit:percent",
                    "qualityControl": "qc:C"
                },
                "windChill": {
                    "value": null,
                    "unitCode": "unit:degC",
                    "qualityControl": "qc:V"
                },
                "heatIndex": {
                    "value": 32.573426665844011,
                    "unitCode": "unit:degC",
                    "qualityControl": "qc:V"
                },
                "cloudLayers": [
                    {
                        "base": {
                            "value": null,
                            "unitCode": "unit:m"
                        },
                        "amount": "CLR"
                    }
                ]
            }
        },
        {
            "id": "https://api.weather.gov/stations/KCNK/observations/2017-06-11T04:55:00+00:00",
            "type": "Feature",
            "geometry": {
                "type": "Point",
                "coordinates": [
                    -97.650001500000002,
                    39.549999200000002
                ]
            },
            "properties": {
                "@id": "https://api.weather.gov/stations/KCNK/observations/2017-06-11T04:55:00+00:00",
                "@type": "wx:ObservationStation",
                "elevation": {
                    "value": 452,
                    "unitCode": "unit:m"
                },
                "station": "https://api.weather.gov/stations/KCNK",
                "timestamp": "2017-06-11T04:55:00+00:00",
                "rawMessage": "KCNK 110455Z AUTO 17017G26KT 10SM CLR 26/20 A2968 RMK AO2 PK WND 18026/0453 SLP031 T02610200",
                "textDescription": "Clear and Windy",
                "icon": "https://api.weather.gov/icons/land/night/wind_skc?size=medium",
                "presentWeather": [],
                "temperature": {
                    "value": 26.100000000000023,
                    "unitCode": "unit:degC",
                    "qualityControl": "qc:V"
                },
                "dewpoint": {
                    "value": 19.999993896484398,
                    "unitCode": "unit:degC",
                    "qualityControl": "qc:V"
                },
                "windDirection": {
                    "value": 170,
                    "unitCode": "unit:degree_(angle)",
                    "qualityControl": "qc:V"
                },
                "windSpeed": {
                    "value": 8.8000001907348633,
                    "unitCode": "unit:m_s-1",
                    "qualityControl": "qc:V"
                },
                "windGust": {
                    "value": 13.399999618530273,
                    "unitCode": "unit:m_s-1",
                    "qualityControl": "qc:S"
                },
                "barometricPressure": {
                    "value": 100510,
                    "unitCode": "unit:Pa",
                    "qualityControl": "qc:V"
                },
                "seaLevelPressure": {
                    "value": 100310,
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
                    "value": 69.136034164678918,
                    "unitCode": "unit:percent",
                    "qualityControl": "qc:C"
                },
                "windChill": {
                    "value": null,
                    "unitCode": "unit:degC",
                    "qualityControl": "qc:V"
                },
                "heatIndex": {
                    "value": 26.570774225411128,
                    "unitCode": "unit:degC",
                    "qualityControl": "qc:V"
                },
                "cloudLayers": [
                    {
                        "base": {
                            "value": null,
                            "unitCode": "unit:m"
                        },
                        "amount": "CLR"
                    }
                ]
            }
        },
        {
            "id": "https://api.weather.gov/stations/KCNK/observations/2017-06-11T02:55:00+00:00",
            "type": "Feature",
            "geometry": {
                "type": "Point",
                "coordinates": [
                    -97.650001500000002,
                    39.549999200000002
                ]
            },
            "properties": {
                "@id": "https://api.weather.gov/stations/KCNK/observations/2017-06-11T02:55:00+00:00",
                "@type": "wx:ObservationStation",
                "elevation": {
                    "value": 452,
                    "unitCode": "unit:m"
                },
                "station": "https://api.weather.gov/stations/KCNK",
                "timestamp": "2017-06-11T02:55:00+00:00",
                "rawMessage": "KCNK 110255Z AUTO 18016G22KT 10SM CLR 29/19 A2965 RMK AO2 PK WND 20026/0227 SLP023 T02890194 51012",
                "textDescription": "Clear",
                "icon": "https://api.weather.gov/icons/land/night/skc?size=medium",
                "presentWeather": [],
                "temperature": {
                    "value": 28.899987792968773,
                    "unitCode": "unit:degC",
                    "qualityControl": "qc:V"
                },
                "dewpoint": {
                    "value": 19.399987792968773,
                    "unitCode": "unit:degC",
                    "qualityControl": "qc:V"
                },
                "windDirection": {
                    "value": 180,
                    "unitCode": "unit:degree_(angle)",
                    "qualityControl": "qc:V"
                },
                "windSpeed": {
                    "value": 8.1999998092651367,
                    "unitCode": "unit:m_s-1",
                    "qualityControl": "qc:V"
                },
                "windGust": {
                    "value": null,
                    "unitCode": "unit:m_s-1",
                    "qualityControl": "qc:Z"
                },
                "barometricPressure": {
                    "value": 100410,
                    "unitCode": "unit:Pa",
                    "qualityControl": "qc:V"
                },
                "seaLevelPressure": {
                    "value": 100230,
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
                    "value": 56.541220246865855,
                    "unitCode": "unit:percent",
                    "qualityControl": "qc:C"
                },
                "windChill": {
                    "value": null,
                    "unitCode": "unit:degC",
                    "qualityControl": "qc:V"
                },
                "heatIndex": {
                    "value": 30.368649165888542,
                    "unitCode": "unit:degC",
                    "qualityControl": "qc:V"
                },
                "cloudLayers": [
                    {
                        "base": {
                            "value": null,
                            "unitCode": "unit:m"
                        },
                        "amount": "CLR"
                    }
                ]
            }
        },
        {
            "id": "https://api.weather.gov/stations/KCNK/observations/2017-06-10T22:55:00+00:00",
            "type": "Feature",
            "geometry": {
                "type": "Point",
                "coordinates": [
                    -97.650001500000002,
                    39.549999200000002
                ]
            },
            "properties": {
                "@id": "https://api.weather.gov/stations/KCNK/observations/2017-06-10T22:55:00+00:00",
                "@type": "wx:ObservationStation",
                "elevation": {
                    "value": 452,
                    "unitCode": "unit:m"
                },
                "station": "https://api.weather.gov/stations/KCNK",
                "timestamp": "2017-06-10T22:55:00+00:00",
                "rawMessage": "KCNK 102255Z AUTO 19019G24KT 10SM CLR 33/21 A2962 RMK AO2 PK WND 19027/2217 SLP012 T03280206",
                "textDescription": "Clear and Windy",
                "icon": "https://api.weather.gov/icons/land/day/wind_skc?size=medium",
                "presentWeather": [],
                "temperature": {
                    "value": 32.800012207031273,
                    "unitCode": "unit:degC",
                    "qualityControl": "qc:V"
                },
                "dewpoint": {
                    "value": 20.600000000000023,
                    "unitCode": "unit:degC",
                    "qualityControl": "qc:V"
                },
                "windDirection": {
                    "value": 190,
                    "unitCode": "unit:degree_(angle)",
                    "qualityControl": "qc:V"
                },
                "windSpeed": {
                    "value": 9.8000001907348633,
                    "unitCode": "unit:m_s-1",
                    "qualityControl": "qc:V"
                },
                "windGust": {
                    "value": 12.399999618530273,
                    "unitCode": "unit:m_s-1",
                    "qualityControl": "qc:S"
                },
                "barometricPressure": {
                    "value": 100310,
                    "unitCode": "unit:Pa",
                    "qualityControl": "qc:V"
                },
                "seaLevelPressure": {
                    "value": 100120,
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
                    "value": 48.742501756406817,
                    "unitCode": "unit:percent",
                    "qualityControl": "qc:C"
                },
                "windChill": {
                    "value": null,
                    "unitCode": "unit:degC",
                    "qualityControl": "qc:V"
                },
                "heatIndex": {
                    "value": 35.546769568517334,
                    "unitCode": "unit:degC",
                    "qualityControl": "qc:V"
                },
                "cloudLayers": [
                    {
                        "base": {
                            "value": null,
                            "unitCode": "unit:m"
                        },
                        "amount": "CLR"
                    }
                ]
            }
        },
        {
            "id": "https://api.weather.gov/stations/KCNK/observations/2017-06-10T05:55:00+00:00",
            "type": "Feature",
            "geometry": {
                "type": "Point",
                "coordinates": [
                    -97.650001500000002,
                    39.549999200000002
                ]
            },
            "properties": {
                "@id": "https://api.weather.gov/stations/KCNK/observations/2017-06-10T05:55:00+00:00",
                "@type": "wx:ObservationStation",
                "elevation": {
                    "value": 452,
                    "unitCode": "unit:m"
                },
                "station": "https://api.weather.gov/stations/KCNK",
                "timestamp": "2017-06-10T05:55:00+00:00",
                "rawMessage": "KCNK 100555Z AUTO 17014KT 10SM CLR 22/18 A2973 RMK AO2 SLP049 T02220178 10300 20222 403110167 50000",
                "textDescription": "Clear",
                "icon": "https://api.weather.gov/icons/land/night/skc?size=medium",
                "presentWeather": [],
                "temperature": {
                    "value": 22.200006103515648,
                    "unitCode": "unit:degC",
                    "qualityControl": "qc:V"
                },
                "dewpoint": {
                    "value": 17.800012207031273,
                    "unitCode": "unit:degC",
                    "qualityControl": "qc:V"
                },
                "windDirection": {
                    "value": 170,
                    "unitCode": "unit:degree_(angle)",
                    "qualityControl": "qc:V"
                },
                "windSpeed": {
                    "value": 7.1999998092651367,
                    "unitCode": "unit:m_s-1",
                    "qualityControl": "qc:V"
                },
                "windGust": {
                    "value": null,
                    "unitCode": "unit:m_s-1",
                    "qualityControl": "qc:Z"
                },
                "barometricPressure": {
                    "value": 100680,
                    "unitCode": "unit:Pa",
                    "qualityControl": "qc:V"
                },
                "seaLevelPressure": {
                    "value": 100490,
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
                    "value": 76.153113628136978,
                    "unitCode": "unit:percent",
                    "qualityControl": "qc:C"
                },
                "windChill": {
                    "value": null,
                    "unitCode": "unit:degC",
                    "qualityControl": "qc:V"
                },
                "heatIndex": {
                    "value": 22.464004680824132,
                    "unitCode": "unit:degC",
                    "qualityControl": "qc:V"
                },
                "cloudLayers": [
                    {
                        "base": {
                            "value": null,
                            "unitCode": "unit:m"
                        },
                        "amount": "CLR"
                    }
                ]
            }
        },
        {
            "id": "https://api.weather.gov/stations/KCNK/observations/2017-06-09T07:55:00+00:00",
            "type": "Feature",
            "geometry": {
                "type": "Point",
                "coordinates": [
                    -97.650001500000002,
                    39.549999200000002
                ]
            },
            "properties": {
                "@id": "https://api.weather.gov/stations/KCNK/observations/2017-06-09T07:55:00+00:00",
                "@type": "wx:ObservationStation",
                "elevation": {
                    "value": 452,
                    "unitCode": "unit:m"
                },
                "station": "https://api.weather.gov/stations/KCNK",
                "timestamp": "2017-06-09T07:55:00+00:00",
                "rawMessage": "KCNK 090755Z AUTO 19009KT 10SM CLR 17/15 A2986 RMK AO2 SLP099 T01720150",
                "textDescription": "Clear",
                "icon": "https://api.weather.gov/icons/land/night/skc?size=medium",
                "presentWeather": [],
                "temperature": {
                    "value": 17.200006103515648,
                    "unitCode": "unit:degC",
                    "qualityControl": "qc:V"
                },
                "dewpoint": {
                    "value": 14.999993896484398,
                    "unitCode": "unit:degC",
                    "qualityControl": "qc:V"
                },
                "windDirection": {
                    "value": 190,
                    "unitCode": "unit:degree_(angle)",
                    "qualityControl": "qc:V"
                },
                "windSpeed": {
                    "value": 4.5999999046325684,
                    "unitCode": "unit:m_s-1",
                    "qualityControl": "qc:V"
                },
                "windGust": {
                    "value": null,
                    "unitCode": "unit:m_s-1",
                    "qualityControl": "qc:Z"
                },
                "barometricPressure": {
                    "value": 101120,
                    "unitCode": "unit:Pa",
                    "qualityControl": "qc:V"
                },
                "seaLevelPressure": {
                    "value": 100990,
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
                    "value": 86.906567582690457,
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
                "cloudLayers": []
            }
        },
        {
            "id": "https://api.weather.gov/stations/KCNK/observations/2017-06-08T21:55:00+00:00",
            "type": "Feature",
            "geometry": {
                "type": "Point",
                "coordinates": [
                    -97.650001500000002,
                    39.549999200000002
                ]
            },
            "properties": {
                "@id": "https://api.weather.gov/stations/KCNK/observations/2017-06-08T21:55:00+00:00",
                "@type": "wx:ObservationStation",
                "elevation": {
                    "value": 452,
                    "unitCode": "unit:m"
                },
                "station": "https://api.weather.gov/stations/KCNK",
                "timestamp": "2017-06-08T21:55:00+00:00",
                "rawMessage": "KCNK 082155Z AUTO 20010KT 10SM CLR 29/14 A2992 RMK AO2 SLP118 T02890144",
                "textDescription": "Clear",
                "icon": "https://api.weather.gov/icons/land/day/skc?size=medium",
                "presentWeather": [],
                "temperature": {
                    "value": 28.899987792968773,
                    "unitCode": "unit:degC",
                    "qualityControl": "qc:V"
                },
                "dewpoint": {
                    "value": 14.399987792968773,
                    "unitCode": "unit:degC",
                    "qualityControl": "qc:V"
                },
                "windDirection": {
                    "value": 200,
                    "unitCode": "unit:degree_(angle)",
                    "qualityControl": "qc:V"
                },
                "windSpeed": {
                    "value": 5.0999999046325684,
                    "unitCode": "unit:m_s-1",
                    "qualityControl": "qc:V"
                },
                "windGust": {
                    "value": null,
                    "unitCode": "unit:m_s-1",
                    "qualityControl": "qc:Z"
                },
                "barometricPressure": {
                    "value": 101320,
                    "unitCode": "unit:Pa",
                    "qualityControl": "qc:V"
                },
                "seaLevelPressure": {
                    "value": 101180,
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
                    "value": 41.180360677005837,
                    "unitCode": "unit:percent",
                    "qualityControl": "qc:C"
                },
                "windChill": {
                    "value": null,
                    "unitCode": "unit:degC",
                    "qualityControl": "qc:V"
                },
                "heatIndex": {
                    "value": 28.610601008625167,
                    "unitCode": "unit:degC",
                    "qualityControl": "qc:V"
                },
                "cloudLayers": [
                    {
                        "base": {
                            "value": null,
                            "unitCode": "unit:m"
                        },
                        "amount": "CLR"
                    }
                ]
            }
        },
        {
            "id": "https://api.weather.gov/stations/KCNK/observations/2017-06-08T02:55:00+00:00",
            "type": "Feature",
            "geometry": {
                "type": "Point",
                "coordinates": [
                    -97.650001500000002,
                    39.549999200000002
                ]
            },
            "properties": {
                "@id": "https://api.weather.gov/stations/KCNK/observations/2017-06-08T02:55:00+00:00",
                "@type": "wx:ObservationStation",
                "elevation": {
                    "value": 452,
                    "unitCode": "unit:m"
                },
                "station": "https://api.weather.gov/stations/KCNK",
                "timestamp": "2017-06-08T02:55:00+00:00",
                "rawMessage": "KCNK 080255Z AUTO 16007KT 9SM CLR 17/12 A3004 RMK AO2 SLP161 T01720117 53003",
                "textDescription": "Clear",
                "icon": "https://api.weather.gov/icons/land/night/skc?size=medium",
                "presentWeather": [],
                "temperature": {
                    "value": 17.200006103515648,
                    "unitCode": "unit:degC",
                    "qualityControl": "qc:V"
                },
                "dewpoint": {
                    "value": 11.700006103515648,
                    "unitCode": "unit:degC",
                    "qualityControl": "qc:V"
                },
                "windDirection": {
                    "value": 160,
                    "unitCode": "unit:degree_(angle)",
                    "qualityControl": "qc:V"
                },
                "windSpeed": {
                    "value": 3.5999999046325684,
                    "unitCode": "unit:m_s-1",
                    "qualityControl": "qc:V"
                },
                "windGust": {
                    "value": null,
                    "unitCode": "unit:m_s-1",
                    "qualityControl": "qc:Z"
                },
                "barometricPressure": {
                    "value": 101730,
                    "unitCode": "unit:Pa",
                    "qualityControl": "qc:V"
                },
                "seaLevelPressure": {
                    "value": 101610,
                    "unitCode": "unit:Pa",
                    "qualityControl": "qc:V"
                },
                "visibility": {
                    "value": 14480,
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
                    "value": 70.09039660582323,
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
                            "value": null,
                            "unitCode": "unit:m"
                        },
                        "amount": "CLR"
                    }
                ]
            }
        },
        {
            "id": "https://api.weather.gov/stations/KCNK/observations/2017-06-06T04:42:00+00:00",
            "type": "Feature",
            "geometry": {
                "type": "Point",
                "coordinates": [
                    -97.650001500000002,
                    39.549999200000002
                ]
            },
            "properties": {
                "@id": "https://api.weather.gov/stations/KCNK/observations/2017-06-06T04:42:00+00:00",
                "@type": "wx:ObservationStation",
                "elevation": {
                    "value": 452,
                    "unitCode": "unit:m"
                },
                "station": "https://api.weather.gov/stations/KCNK",
                "timestamp": "2017-06-06T04:42:00+00:00",
                "rawMessage": "KCNK 060442Z AUTO 27008KT 10SM VCTS OVC085 22/18 A2994 RMK AO2 LTG DSNT SW-NW RAB12E41 TSB0359E36 P0000 T02220183",
                "textDescription": "Cloudy",
                "icon": "https://api.weather.gov/icons/land/night/ovc?size=medium",
                "presentWeather": [],
                "temperature": {
                    "value": 22.200006103515648,
                    "unitCode": "unit:degC",
                    "qualityControl": "qc:V"
                },
                "dewpoint": {
                    "value": 18.300012207031273,
                    "unitCode": "unit:degC",
                    "qualityControl": "qc:V"
                },
                "windDirection": {
                    "value": 270,
                    "unitCode": "unit:degree_(angle)",
                    "qualityControl": "qc:V"
                },
                "windSpeed": {
                    "value": 4.0999999046325684,
                    "unitCode": "unit:m_s-1",
                    "qualityControl": "qc:V"
                },
                "windGust": {
                    "value": null,
                    "unitCode": "unit:m_s-1",
                    "qualityControl": "qc:Z"
                },
                "barometricPressure": {
                    "value": 101390,
                    "unitCode": "unit:Pa",
                    "qualityControl": "qc:V"
                },
                "seaLevelPressure": {
                    "value": null,
                    "unitCode": "unit:Pa",
                    "qualityControl": "qc:Z"
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
                    "value": 0,
                    "unitCode": "unit:m",
                    "qualityControl": "qc:C"
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
                    "value": 78.583777546287152,
                    "unitCode": "unit:percent",
                    "qualityControl": "qc:C"
                },
                "windChill": {
                    "value": null,
                    "unitCode": "unit:degC",
                    "qualityControl": "qc:V"
                },
                "heatIndex": {
                    "value": 22.527472016464685,
                    "unitCode": "unit:degC",
                    "qualityControl": "qc:V"
                },
                "cloudLayers": [
                    {
                        "base": {
                            "value": 2590,
                            "unitCode": "unit:m"
                        },
                        "amount": "OVC"
                    }
                ]
            }
        }
    ]
}
"""#
