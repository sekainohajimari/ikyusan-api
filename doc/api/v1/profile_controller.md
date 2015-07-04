## GET /api/v1/profile
Success.

### Example

#### Request
```
GET /api/v1/profile HTTP/1.1
Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
Authorization: Token token="5e629fd61a6e9b4829a99955dbd21ee06251a81883401a41a3b088cbca2e931b0ab578dbf80eea6a"
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
ETag: W/"426aa5efbff360a795e1da2b7a7a9df5"
X-Content-Type-Options: nosniff
X-Frame-Options: SAMEORIGIN
X-Request-Id: 686a6fa6-6e2d-4914-a447-064ddfba4044
X-Runtime: 0.017532
X-XSS-Protection: 1; mode=block

{
  "profile": {
    "display_id": "myrtle",
    "display_name": "久川 夕貴子",
    "icon_url": "http://robohash.org/corruptiadnihil.png?size=300x300"
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
Authorization: Token token="b3f7c49020cf07c15edcf3b3df90eeb27d16687c2e5c586aead0f170f1a2a63b6d0ea9b7af174d9f"
Content-Length: 0
Content-Type: application/x-www-form-urlencoded
Host: www.example.com
```

#### Response
```
HTTP/1.1 200
Cache-Control: max-age=0, private, must-revalidate
Content-Length: 129
Content-Type: application/json; charset=utf-8
ETag: W/"14fe1e6b88a03a1431f219445c5ae69d"
X-Content-Type-Options: nosniff
X-Frame-Options: SAMEORIGIN
X-Request-Id: 0d7cf839-fff5-45ae-9d5d-a32c2f697829
X-Runtime: 0.023776
X-XSS-Protection: 1; mode=block

{
  "profile": {
    "display_id": "greta",
    "display_name": "ほげ",
    "icon_url": "http://robohash.org/dolorumcumquefacilis.png?size=300x300"
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
Authorization: Token token="8fabf019f6ffaac926ee636eac4364430db581e0a89588c759a0d43137f67ae2e9e4eb25a8719e7d"
Content-Length: 0
Content-Type: application/x-www-form-urlencoded
Host: www.example.com
```

#### Response
```
HTTP/1.1 200
Cache-Control: max-age=0, private, must-revalidate
Content-Length: 125
Content-Type: application/json; charset=utf-8
ETag: W/"3d99e41d25924f8876494c0027348842"
X-Content-Type-Options: nosniff
X-Frame-Options: SAMEORIGIN
X-Request-Id: 672b8f52-2b53-4ada-8bc4-3cdf5233448e
X-Runtime: 0.020658
X-XSS-Protection: 1; mode=block

{
  "profile": {
    "display_id": "hoge",
    "display_name": "ほげ",
    "icon_url": "http://robohash.org/odioquoarchitecto.png?size=300x300"
  }
}
```

## GET /api/v1/profile/enabled
Success.

### Example

#### Request
```
GET /api/v1/profile/enabled?display_id=pat_reinger-dummy HTTP/1.1
Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
Authorization: Token token="1c024775733d00d2ff4bc74c5e9df18d27900b41f1f06a00c5185172d8eab73f34bad587926cbb9b"
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
X-Request-Id: 311687ba-04ff-4e00-b213-58409c22761f
X-Runtime: 0.022202
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
GET /api/v1/profile/enabled?display_id=madisyn_smitham HTTP/1.1
Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
Authorization: Token token="6f3e08028e1a6183fa0f0025ec5d481bc412512af16c7650970275bb9c570e17b807a361db50a28d"
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
X-Request-Id: 055ffb6b-a979-4c48-9845-9024c70f9f08
X-Runtime: 0.023739
X-XSS-Protection: 1; mode=block

{
  "enabled": false
}
```
