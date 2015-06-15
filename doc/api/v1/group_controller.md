## GET /api/v1/g
Success.

### Example

#### Request
```
GET /api/v1/g HTTP/1.1
Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
Authorization: Token token="b5549cb62acf6fc15c2487542d901a9b6f9de6010546780393e87d01e8e6b38a99405ec9cec46ecd"
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
ETag: W/"27e9e8900830021a89530a3aee95f135"
X-Content-Type-Options: nosniff
X-Frame-Options: SAMEORIGIN
X-Request-Id: b88527ee-5ebe-49a9-a811-23530e9338bb
X-Runtime: 0.044625
X-XSS-Protection: 1; mode=block

{
  "groups": [
    {
      "id": 531,
      "name": "group_1",
      "membar_max_num": 10,
      "topic_max_num": 100
    },
    {
      "id": 532,
      "name": "group_2",
      "membar_max_num": 10,
      "topic_max_num": 100
    },
    {
      "id": 533,
      "name": "group_3",
      "membar_max_num": 10,
      "topic_max_num": 100
    },
    {
      "id": 534,
      "name": "group_4",
      "membar_max_num": 10,
      "topic_max_num": 100
    },
    {
      "id": 535,
      "name": "group_5",
      "membar_max_num": 10,
      "topic_max_num": 100
    },
    {
      "id": 536,
      "name": "group_6",
      "membar_max_num": 10,
      "topic_max_num": 100
    },
    {
      "id": 537,
      "name": "group_7",
      "membar_max_num": 10,
      "topic_max_num": 100
    },
    {
      "id": 538,
      "name": "group_8",
      "membar_max_num": 10,
      "topic_max_num": 100
    },
    {
      "id": 539,
      "name": "group_9",
      "membar_max_num": 10,
      "topic_max_num": 100
    },
    {
      "id": 540,
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
Authorization: Token token="0a4e915e8c2cd96181ebe15307c3af30cec1c3e33d49c3a0dc0e588ba5642bdde0b4ccd14e912ba4"
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
ETag: W/"66f9b1b59f7973562245bc1001dd7ce3"
X-Content-Type-Options: nosniff
X-Frame-Options: SAMEORIGIN
X-Request-Id: 0514ebf0-d15a-4295-8cfb-e93c096e1ffc
X-Runtime: 0.015820
X-XSS-Protection: 1; mode=block

{
  "id": 541,
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
GET /api/v1/g/542/edit?name=foo HTTP/1.1
Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
Authorization: Token token="16da0a7d96f97d2d6091a189e49034d293a7914fdfafb827f1367ccb977dde313463e6c3bc08f352"
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
ETag: W/"624a9564f6838e40f3904b0ecd0d2e14"
X-Content-Type-Options: nosniff
X-Frame-Options: SAMEORIGIN
X-Request-Id: 791b0ce0-0709-4615-ba7e-5f015db81a0a
X-Runtime: 0.022797
X-XSS-Protection: 1; mode=block

{
  "id": 542,
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
GET /api/v1/g/543/detail HTTP/1.1
Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
Authorization: Token token="414af02fdb674c15f577df452a38dd734959940ddfc5f270c13a37a1dd8ec3028d5f0cdac94a9dc8"
Content-Length: 0
Content-Type: application/x-www-form-urlencoded
Host: www.example.com
```

#### Response
```
HTTP/1.1 200
Cache-Control: max-age=0, private, must-revalidate
Content-Length: 360
Content-Type: application/json; charset=utf-8
ETag: W/"c511c7c460241402ceddf0c1d1b8a2c3"
X-Content-Type-Options: nosniff
X-Frame-Options: SAMEORIGIN
X-Request-Id: 97a10dce-77b3-4c98-9dbc-a45683afa818
X-Runtime: 0.050498
X-XSS-Protection: 1; mode=block

{
  "id": 543,
  "name": "group_12",
  "membar_max_num": 10,
  "topic_max_num": 100,
  "group_members": [
    {
      "id": 565,
      "role": "owner",
      "status": "joining",
      "user": {
        "id": 332,
        "profile": {
          "display_id": "kyoko",
          "display_name": "トム",
          "icon_url": null
        }
      }
    },
    {
      "id": 566,
      "role": "member",
      "status": "inviting",
      "user": {
        "id": 333,
        "profile": {
          "display_id": "kyoko",
          "display_name": "ボブ",
          "icon_url": null
        }
      }
    }
  ]
}
```
