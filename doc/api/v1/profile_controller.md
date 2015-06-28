## GET /api/v1/profile
Success.

### Example

#### Request
```
GET /api/v1/profile HTTP/1.1
Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
Authorization: Token token="90746039bb3b5a6993926422c0ad469eb0e16e8079ee23fa7c0272332b0070b951925032ea245326"
Content-Length: 0
Content-Type: application/x-www-form-urlencoded
Host: www.example.com
```

#### Response
```
HTTP/1.1 200
Cache-Control: max-age=0, private, must-revalidate
Content-Length: 135
Content-Type: application/json; charset=utf-8
ETag: W/"98223957023c6f4624b0243ef7d1a35c"
X-Content-Type-Options: nosniff
X-Frame-Options: SAMEORIGIN
X-Request-Id: 724ccd67-1871-4e93-a2a9-8187b9f81cf8
X-Runtime: 0.015339
X-XSS-Protection: 1; mode=block

{
  "profile": {
    "display_id": "lynn_kub",
    "display_name": "金程 雅木",
    "icon_url": "http://robohash.org/iustomolestiaein.png?size=300x300"
  }
}
```

## GET /api/v1/profile/edit
Success.

### Example

#### Request
```
GET /api/v1/profile/edit?display_name=ほげ HTTP/1.1
Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
Authorization: Token token="79b4aed5b6e8f0fba233dac6faf1b7981d67426eb2b7242f378d2aa2eadbc3e6f39e9530e3a3017b"
Content-Length: 0
Content-Type: application/x-www-form-urlencoded
Host: www.example.com
```

#### Response
```
HTTP/1.1 200
Cache-Control: max-age=0, private, must-revalidate
Content-Length: 134
Content-Type: application/json; charset=utf-8
ETag: W/"882532f7c02f20ac1c5cda2feacff3d4"
X-Content-Type-Options: nosniff
X-Frame-Options: SAMEORIGIN
X-Request-Id: 0f7afb85-ea20-4070-927b-a1e4779a9be2
X-Runtime: 0.018412
X-XSS-Protection: 1; mode=block

{
  "profile": {
    "display_id": "percival.rolfson",
    "display_name": "ほげ",
    "icon_url": "http://robohash.org/voluptateminab.png?size=300x300"
  }
}
```

## GET /api/v1/profile/edit
Success.

### Example

#### Request
```
GET /api/v1/profile/edit?display_name=ほげ&display_id=hoge HTTP/1.1
Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
Authorization: Token token="1d454dbdbc0d759d48ed9b315ab2f396b361e258150fe3d1866846fdfc99e1b0eefe83e3b324b54f"
Content-Length: 0
Content-Type: application/x-www-form-urlencoded
Host: www.example.com
```

#### Response
```
HTTP/1.1 200
Cache-Control: max-age=0, private, must-revalidate
Content-Length: 118
Content-Type: application/json; charset=utf-8
ETag: W/"600b0c360e74e9f8d8beb16b815bde9b"
X-Content-Type-Options: nosniff
X-Frame-Options: SAMEORIGIN
X-Request-Id: 36ab964f-39dc-4ece-8ce5-b570e7076fd9
X-Runtime: 0.012675
X-XSS-Protection: 1; mode=block

{
  "profile": {
    "display_id": "hoge",
    "display_name": "ほげ",
    "icon_url": "http://robohash.org/autipsumut.png?size=300x300"
  }
}
```

## GET /api/v1/profile/enabled
Success.

### Example

#### Request
```
GET /api/v1/profile/enabled?display_id=jamie-dummy HTTP/1.1
Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
Authorization: Token token="b9285e4152bd718b7cd2a63888a4c15b47cad8778b95432627955fa8f401bad96359c4a141bb3df5"
Content-Length: 0
Content-Type: application/x-www-form-urlencoded
Host: www.example.com
```

#### Response
```
HTTP/1.1 200
Cache-Control: max-age=0, private, must-revalidate
Content-Length: 16
Content-Type: application/json; charset=utf-8
ETag: W/"ebd28baaaa212dca587bc607653bbaf0"
X-Content-Type-Options: nosniff
X-Frame-Options: SAMEORIGIN
X-Request-Id: 538f6011-3ee5-426b-b62d-3d1cbe09154c
X-Runtime: 0.016295
X-XSS-Protection: 1; mode=block

{
  "enabled": true
}
```

## GET /api/v1/profile/enabled
Success.

### Example

#### Request
```
GET /api/v1/profile/enabled?display_id=edwardo.gleichner HTTP/1.1
Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
Authorization: Token token="2bf89072d8bd2f27d2f91dec089e9c645f65d660a6013debf7bae7bcc1d87752861e669217006005"
Content-Length: 0
Content-Type: application/x-www-form-urlencoded
Host: www.example.com
```

#### Response
```
HTTP/1.1 200
Cache-Control: max-age=0, private, must-revalidate
Content-Length: 17
Content-Type: application/json; charset=utf-8
ETag: W/"d987f50e402ceb8f1a41643a6c665ef0"
X-Content-Type-Options: nosniff
X-Frame-Options: SAMEORIGIN
X-Request-Id: a2ab77a4-993e-4ce2-a7f0-c2fe0b15c1a8
X-Runtime: 0.012709
X-XSS-Protection: 1; mode=block

{
  "enabled": false
}
```
