## GET /api/v1/g
Success.

### Example

#### Request
```
GET /api/v1/g HTTP/1.1
Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
Authorization: Token token="857b48509d2d687db343c229c954600f752c74eaa1e2a56203450a37ed3f16b8d0fe8e68a17712de"
Content-Length: 0
Content-Type: application/x-www-form-urlencoded
Host: www.example.com
```

#### Response
```
HTTP/1.1 200
Cache-Control: max-age=0, private, must-revalidate
Content-Length: 693
Content-Type: application/json; charset=utf-8
ETag: W/"e28a7538ab84f92807c45c028dbce006"
X-Content-Type-Options: nosniff
X-Frame-Options: SAMEORIGIN
X-Request-Id: 542f1d01-9097-442d-9ef4-6abd5f9fa7d0
X-Runtime: 0.055718
X-XSS-Protection: 1; mode=block

{
  "groups": [
    {
      "id": 300,
      "name": "group_1",
      "membar_max_num": 10,
      "topic_max_num": 100
    },
    {
      "id": 301,
      "name": "group_2",
      "membar_max_num": 10,
      "topic_max_num": 100
    },
    {
      "id": 302,
      "name": "group_3",
      "membar_max_num": 10,
      "topic_max_num": 100
    },
    {
      "id": 303,
      "name": "group_4",
      "membar_max_num": 10,
      "topic_max_num": 100
    },
    {
      "id": 304,
      "name": "group_5",
      "membar_max_num": 10,
      "topic_max_num": 100
    },
    {
      "id": 305,
      "name": "group_6",
      "membar_max_num": 10,
      "topic_max_num": 100
    },
    {
      "id": 306,
      "name": "group_7",
      "membar_max_num": 10,
      "topic_max_num": 100
    },
    {
      "id": 307,
      "name": "group_8",
      "membar_max_num": 10,
      "topic_max_num": 100
    },
    {
      "id": 308,
      "name": "group_9",
      "membar_max_num": 10,
      "topic_max_num": 100
    },
    {
      "id": 309,
      "name": "group_10",
      "membar_max_num": 10,
      "topic_max_num": 100
    }
  ]
}
```

## POST /api/v1/g
Success.

### Example

#### Request
```
POST /api/v1/g HTTP/1.1
Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
Authorization: Token token="6407996719fc894200e19287baffab61c300c18bd340e3f05195c14bf225c18c2fa4c9ed9d41e5a0"
Content-Length: 9
Content-Type: application/x-www-form-urlencoded
Host: www.example.com

name=hoge
```

#### Response
```
HTTP/1.1 200
Cache-Control: max-age=0, private, must-revalidate
Content-Length: 64
Content-Type: application/json; charset=utf-8
ETag: W/"b8826ef60cabc9e90504b767683a9561"
X-Content-Type-Options: nosniff
X-Frame-Options: SAMEORIGIN
X-Request-Id: 147337ee-ff02-446e-b2f7-a92b7d5183a9
X-Runtime: 0.019214
X-XSS-Protection: 1; mode=block

{
  "id": 310,
  "name": "hoge",
  "membar_max_num": 10,
  "topic_max_num": 100
}
```

## GET /api/v1/g/:id/edit
Success.

### Example

#### Request
```
GET /api/v1/g/311/edit?name=foo HTTP/1.1
Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
Authorization: Token token="fb6a35b1d16bd94dae4bfcc28f7f13b922cf575fdb11599436a813180d45fc664606551f9e97681b"
Content-Length: 0
Content-Type: application/x-www-form-urlencoded
Host: www.example.com
```

#### Response
```
HTTP/1.1 200
Cache-Control: max-age=0, private, must-revalidate
Content-Length: 63
Content-Type: application/json; charset=utf-8
ETag: W/"b5a29b0c3f489c09f115976e0d7e2e51"
X-Content-Type-Options: nosniff
X-Frame-Options: SAMEORIGIN
X-Request-Id: 08006b11-64dd-4dab-866e-565bf1fc77a9
X-Runtime: 0.028682
X-XSS-Protection: 1; mode=block

{
  "id": 311,
  "name": "foo",
  "membar_max_num": 10,
  "topic_max_num": 100
}
```

## GET /api/v1/g/:id/detail
Success.

### Example

#### Request
```
GET /api/v1/g/312/detail HTTP/1.1
Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
Authorization: Token token="f236b9e175b544eb938f8d977e40f6fb36bceec3a395677f0cec523813f7d7ad0cb84487efb3fc3e"
Content-Length: 0
Content-Type: application/x-www-form-urlencoded
Host: www.example.com
```

#### Response
```
HTTP/1.1 200
Cache-Control: max-age=0, private, must-revalidate
Content-Length: 372
Content-Type: application/json; charset=utf-8
ETag: W/"1c26c6f71a37d5102b6084ecccefca06"
X-Content-Type-Options: nosniff
X-Frame-Options: SAMEORIGIN
X-Request-Id: 9a224b2e-bfd5-4c7a-b619-ca1800457876
X-Runtime: 0.055619
X-XSS-Protection: 1; mode=block

{
  "id": 312,
  "name": "group_12",
  "membar_max_num": 10,
  "topic_max_num": 100,
  "group_members": [
    {
      "id": 328,
      "role": "owner",
      "status": "joining",
      "user": {
        "id": 154,
        "profile": {
          "display_id": "kyoko",
          "display_name": "きょうこ",
          "icon_url": null
        }
      }
    },
    {
      "id": 329,
      "role": "member",
      "status": "inviting",
      "user": {
        "id": 155,
        "profile": {
          "display_id": "kyoko",
          "display_name": "きょうこ",
          "icon_url": null
        }
      }
    }
  ]
}
```
