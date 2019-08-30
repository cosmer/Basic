//
//  Created by Charlie Osmer on 8/25/19.
//  Copyright © 2019 Charlie Osmer. All rights reserved.
//

import Foundation

let productsModelData =
#"""
{
  "@context": {
    "@vocab": "https://api.weather.gov/ontology#"
  },
  "@graph": [
    {
      "@id": "https://api.weather.gov/products/2a244c90-fec3-446c-b73b-d333569c0329",
      "id": "2a244c90-fec3-446c-b73b-d333569c0329",
      "wmoCollectiveId": "FXUS61",
      "issuingOffice": "KGYX",
      "issuanceTime": "2019-08-25T10:00:00+00:00",
      "productCode": "AFD",
      "productName": "Area Forecast Discussion"
    },
    {
      "@id": "https://api.weather.gov/products/9b7bc83c-fe6f-407b-bbde-c45be08cb4a3",
      "id": "9b7bc83c-fe6f-407b-bbde-c45be08cb4a3",
      "wmoCollectiveId": "FXUS61",
      "issuingOffice": "KGYX",
      "issuanceTime": "2019-08-25T06:34:00+00:00",
      "productCode": "AFD",
      "productName": "Area Forecast Discussion"
    },
    {
      "@id": "https://api.weather.gov/products/81088245-e01f-41d6-8c20-3907e7e6316d",
      "id": "81088245-e01f-41d6-8c20-3907e7e6316d",
      "wmoCollectiveId": "FXUS61",
      "issuingOffice": "KGYX",
      "issuanceTime": "2019-08-25T02:30:00+00:00",
      "productCode": "AFD",
      "productName": "Area Forecast Discussion"
    },
    {
      "@id": "https://api.weather.gov/products/2a6aa86f-60af-4434-bcd1-e6b03caabe60",
      "id": "2a6aa86f-60af-4434-bcd1-e6b03caabe60",
      "wmoCollectiveId": "FXUS61",
      "issuingOffice": "KGYX",
      "issuanceTime": "2019-08-24T22:51:00+00:00",
      "productCode": "AFD",
      "productName": "Area Forecast Discussion"
    },
    {
      "@id": "https://api.weather.gov/products/612a298a-8be9-4fd3-8c62-aaae8f2aab56",
      "id": "612a298a-8be9-4fd3-8c62-aaae8f2aab56",
      "wmoCollectiveId": "FXUS61",
      "issuingOffice": "KGYX",
      "issuanceTime": "2019-08-24T18:32:00+00:00",
      "productCode": "AFD",
      "productName": "Area Forecast Discussion"
    },
    {
      "@id": "https://api.weather.gov/products/9b25256e-444f-481c-a7b4-3e9f5b6ac520",
      "id": "9b25256e-444f-481c-a7b4-3e9f5b6ac520",
      "wmoCollectiveId": "FXUS61",
      "issuingOffice": "KGYX",
      "issuanceTime": "2019-08-24T16:31:00+00:00",
      "productCode": "AFD",
      "productName": "Area Forecast Discussion"
    },
    {
      "@id": "https://api.weather.gov/products/501a1632-07e1-4693-9323-bde26143df16",
      "id": "501a1632-07e1-4693-9323-bde26143df16",
      "wmoCollectiveId": "FXUS61",
      "issuingOffice": "KGYX",
      "issuanceTime": "2019-08-24T15:20:00+00:00",
      "productCode": "AFD",
      "productName": "Area Forecast Discussion"
    },
    {
      "@id": "https://api.weather.gov/products/a7928b82-1705-42b7-98b2-80f720706605",
      "id": "a7928b82-1705-42b7-98b2-80f720706605",
      "wmoCollectiveId": "FXUS61",
      "issuingOffice": "KGYX",
      "issuanceTime": "2019-08-24T13:00:00+00:00",
      "productCode": "AFD",
      "productName": "Area Forecast Discussion"
    },
    {
      "@id": "https://api.weather.gov/products/b36071b7-2bd2-488c-ae97-becf3846a8d0",
      "id": "b36071b7-2bd2-488c-ae97-becf3846a8d0",
      "wmoCollectiveId": "FXUS61",
      "issuingOffice": "KGYX",
      "issuanceTime": "2019-08-24T10:02:00+00:00",
      "productCode": "AFD",
      "productName": "Area Forecast Discussion"
    },
    {
      "@id": "https://api.weather.gov/products/916ccd46-f67b-4a44-88c4-053687ef5539",
      "id": "916ccd46-f67b-4a44-88c4-053687ef5539",
      "wmoCollectiveId": "FXUS61",
      "issuingOffice": "KGYX",
      "issuanceTime": "2019-08-24T06:35:00+00:00",
      "productCode": "AFD",
      "productName": "Area Forecast Discussion"
    },
    {
      "@id": "https://api.weather.gov/products/f44dfbe7-dc55-48b7-8d94-ded7fd44ed09",
      "id": "f44dfbe7-dc55-48b7-8d94-ded7fd44ed09",
      "wmoCollectiveId": "FXUS61",
      "issuingOffice": "KGYX",
      "issuanceTime": "2019-08-24T01:12:00+00:00",
      "productCode": "AFD",
      "productName": "Area Forecast Discussion"
    },
    {
      "@id": "https://api.weather.gov/products/d0274743-96ff-4f16-9572-39873f094a03",
      "id": "d0274743-96ff-4f16-9572-39873f094a03",
      "wmoCollectiveId": "FXUS61",
      "issuingOffice": "KGYX",
      "issuanceTime": "2019-08-23T22:29:00+00:00",
      "productCode": "AFD",
      "productName": "Area Forecast Discussion"
    },
    {
      "@id": "https://api.weather.gov/products/e811e0aa-f614-44a0-9293-809ce818d5bb",
      "id": "e811e0aa-f614-44a0-9293-809ce818d5bb",
      "wmoCollectiveId": "FXUS61",
      "issuingOffice": "KGYX",
      "issuanceTime": "2019-08-23T18:47:00+00:00",
      "productCode": "AFD",
      "productName": "Area Forecast Discussion"
    },
    {
      "@id": "https://api.weather.gov/products/aafd3c80-0622-48db-8bd9-3211b5566310",
      "id": "aafd3c80-0622-48db-8bd9-3211b5566310",
      "wmoCollectiveId": "FXUS61",
      "issuingOffice": "KGYX",
      "issuanceTime": "2019-08-23T16:06:00+00:00",
      "productCode": "AFD",
      "productName": "Area Forecast Discussion"
    },
    {
      "@id": "https://api.weather.gov/products/8db3aa44-3f4b-4e11-a4b7-38bf70fb11d4",
      "id": "8db3aa44-3f4b-4e11-a4b7-38bf70fb11d4",
      "wmoCollectiveId": "FXUS61",
      "issuingOffice": "KGYX",
      "issuanceTime": "2019-08-23T12:52:00+00:00",
      "productCode": "AFD",
      "productName": "Area Forecast Discussion"
    },
    {
      "@id": "https://api.weather.gov/products/454c9b45-935d-482f-b650-da5d205a021f",
      "id": "454c9b45-935d-482f-b650-da5d205a021f",
      "wmoCollectiveId": "FXUS61",
      "issuingOffice": "KGYX",
      "issuanceTime": "2019-08-23T10:03:00+00:00",
      "productCode": "AFD",
      "productName": "Area Forecast Discussion"
    },
    {
      "@id": "https://api.weather.gov/products/c696d463-3fac-4079-8611-6fe16f8b10b1",
      "id": "c696d463-3fac-4079-8611-6fe16f8b10b1",
      "wmoCollectiveId": "FXUS61",
      "issuingOffice": "KGYX",
      "issuanceTime": "2019-08-23T06:12:00+00:00",
      "productCode": "AFD",
      "productName": "Area Forecast Discussion"
    },
    {
      "@id": "https://api.weather.gov/products/d36f654f-b4af-46f5-864c-c19842e870b4",
      "id": "d36f654f-b4af-46f5-864c-c19842e870b4",
      "wmoCollectiveId": "FXUS61",
      "issuingOffice": "KGYX",
      "issuanceTime": "2019-08-23T06:10:00+00:00",
      "productCode": "AFD",
      "productName": "Area Forecast Discussion"
    },
    {
      "@id": "https://api.weather.gov/products/fb97d40d-93f5-4508-8748-9ea67c7520a9",
      "id": "fb97d40d-93f5-4508-8748-9ea67c7520a9",
      "wmoCollectiveId": "FXUS61",
      "issuingOffice": "KGYX",
      "issuanceTime": "2019-08-23T01:35:00+00:00",
      "productCode": "AFD",
      "productName": "Area Forecast Discussion"
    },
    {
      "@id": "https://api.weather.gov/products/21dbde53-47de-49ac-ab35-55723f17d810",
      "id": "21dbde53-47de-49ac-ab35-55723f17d810",
      "wmoCollectiveId": "FXUS61",
      "issuingOffice": "KGYX",
      "issuanceTime": "2019-08-22T21:37:00+00:00",
      "productCode": "AFD",
      "productName": "Area Forecast Discussion"
    },
    {
      "@id": "https://api.weather.gov/products/4ee9a81a-43cf-41a8-ae3d-6fcca5941166",
      "id": "4ee9a81a-43cf-41a8-ae3d-6fcca5941166",
      "wmoCollectiveId": "FXUS61",
      "issuingOffice": "KGYX",
      "issuanceTime": "2019-08-22T19:07:00+00:00",
      "productCode": "AFD",
      "productName": "Area Forecast Discussion"
    },
    {
      "@id": "https://api.weather.gov/products/95d9d34d-9d84-4b06-a1b0-f73b5cd85459",
      "id": "95d9d34d-9d84-4b06-a1b0-f73b5cd85459",
      "wmoCollectiveId": "FXUS61",
      "issuingOffice": "KGYX",
      "issuanceTime": "2019-08-22T13:41:00+00:00",
      "productCode": "AFD",
      "productName": "Area Forecast Discussion"
    }
  ]
}
"""#
