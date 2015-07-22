## GET /api/v1/g/:group_id/t
Return 200..

### Example

#### Request
```
GET /api/v1/g/752/t HTTP/1.1
Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
Authorization: Token token="19fb7dd58f96dbbd4caa8125cd9d6b52eaffbb383bbbb45b42c494b1043e2bcd1597e62b2100da00"
Content-Length: 0
Content-Type: application/x-www-form-urlencoded
Host: www.example.com
```

#### Response
```
HTTP/1.1 200
Cache-Control: max-age=0, private, must-revalidate
Content-Length: 275
Content-Type: application/json; charset=utf-8
ETag: W/"476d462ecba1ad81be0253d3638665fa"
X-Content-Type-Options: nosniff
X-Frame-Options: SAMEORIGIN
X-Request-Id: b55b8bc5-2e38-4435-9517-60c5f065c149
X-Runtime: 0.034255
X-XSS-Protection: 1; mode=block

{
  "topics": [
    {
      "id": 324,
      "name": "topic_1",
      "idea_max_num": 100,
      "anonymity": false,
      "build_user": {
        "id": 1156,
        "profile": {
          "display_id": "daphnee_quitzon",
          "display_name": "伊東 浩嗣",
          "icon_url": "http://robohash.org/hicvoluptatemlaborum.png?size=300x300",
          "in_use_default_icon": false
        }
      }
    }
  ]
}
```

## POST /api/v1/g/:group_id/t
Return 201..

### Example

#### Request
```
POST /api/v1/g/753/t HTTP/1.1
Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
Authorization: Token token="c3d0530b82156279a4055f4ae9bca7c2e28ed692009b80208facf2a6f0ed993eb93dbb52aabbc719"
Content-Length: 9
Content-Type: application/x-www-form-urlencoded
Host: www.example.com

name=hoge
```

#### Response
```
HTTP/1.1 201
Cache-Control: max-age=0, private, must-revalidate
Content-Length: 262
Content-Type: application/json; charset=utf-8
ETag: W/"7cad12c717bb44dcb9297718ddf92cbe"
X-Content-Type-Options: nosniff
X-Frame-Options: SAMEORIGIN
X-Request-Id: 051f6c99-7416-454b-88b3-807de7b2cd84
X-Runtime: 0.019049
X-XSS-Protection: 1; mode=block

{
  "topic": {
    "id": 326,
    "name": "hoge",
    "idea_max_num": 100,
    "anonymity": false,
    "build_user": {
      "id": 1157,
      "profile": {
        "display_id": "prince",
        "display_name": "冷川 黄石",
        "icon_url": "http://robohash.org/facerequiavoluptatibus.png?size=300x300",
        "in_use_default_icon": false
      }
    }
  }
}
```

## POST /api/v1/g/:group_id/t
Return 201..

### Example

#### Request
```
POST /api/v1/g/754/t HTTP/1.1
Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
Authorization: Token token="1ff5266add4d46a2dea1a259abfdc17c52bf7d7e4fde9de6ed5cacf774ceeb05b09dcd9e1830b51c"
Content-Length: 21
Content-Type: application/x-www-form-urlencoded
Host: www.example.com

name=hoge&anonymity=1
```

#### Response
```
HTTP/1.1 201
Cache-Control: max-age=0, private, must-revalidate
Content-Length: 248
Content-Type: application/json; charset=utf-8
ETag: W/"79ade229635919370900c3135569103c"
X-Content-Type-Options: nosniff
X-Frame-Options: SAMEORIGIN
X-Request-Id: c8d569ac-2b6d-4e28-b20a-c06852cf1bd0
X-Runtime: 0.022414
X-XSS-Protection: 1; mode=block

{
  "topic": {
    "id": 328,
    "name": "hoge",
    "idea_max_num": 100,
    "anonymity": true,
    "build_user": {
      "id": 1158,
      "profile": {
        "display_id": "eve",
        "display_name": "青垣 嘉隆",
        "icon_url": "http://robohash.org/eosisteomnis.png?size=300x300",
        "in_use_default_icon": false
      }
    }
  }
}
```

## PATCH /api/v1/g/:group_id/t/:id
Success.

### Example

#### Request
```
PATCH /api/v1/g/755/t/329 HTTP/1.1
Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
Authorization: Token token="08057efbd9c2dd056b9604c373570364c0c3f2ca77e8327c6a8c133f56547383300e25efac8b8ad3"
Content-Length: 9
Content-Type: application/x-www-form-urlencoded
Host: www.example.com

name=hoge
```

#### Response
```
HTTP/1.1 200
Cache-Control: max-age=0, private, must-revalidate
Content-Length: 260
Content-Type: application/json; charset=utf-8
ETag: W/"cff661fd84490126f2e97bc4b66904ed"
X-Content-Type-Options: nosniff
X-Frame-Options: SAMEORIGIN
X-Request-Id: dfba1b91-8036-4f21-b76d-ddfd9df47f4e
X-Runtime: 0.023479
X-XSS-Protection: 1; mode=block

{
  "topic": {
    "id": 329,
    "name": "hoge",
    "idea_max_num": 100,
    "anonymity": false,
    "build_user": {
      "id": 1159,
      "profile": {
        "display_id": "gail",
        "display_name": "真中 文治郎",
        "icon_url": "http://robohash.org/doloribusdoloremest.png?size=300x300",
        "in_use_default_icon": false
      }
    }
  }
}
```
