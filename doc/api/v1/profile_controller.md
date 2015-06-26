## GET /api/v1/profile
Success.

### Example

#### Request
```
GET /api/v1/profile HTTP/1.1
Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
Authorization: Token token="812490a000cee248bb02ba4e18b784bbaaa53914868f8c8ee0fbfed6704dddabd17417b3c6a612ad"
Content-Length: 0
Content-Type: application/x-www-form-urlencoded
Host: www.example.com
```

#### Response
```
HTTP/1.1 200
Cache-Control: max-age=0, private, must-revalidate
Content-Length: 147
Content-Type: application/json; charset=utf-8
ETag: W/"99aa989510a5e914760a7cec27122585"
X-Content-Type-Options: nosniff
X-Frame-Options: SAMEORIGIN
X-Request-Id: 2cadd9b1-057d-49a2-8872-adca235045b9
X-Runtime: 0.016391
X-XSS-Protection: 1; mode=block

{
  "profile": {
    "display_id": "jermey_tromp",
    "display_name": "シャフライ ユキヱ",
    "icon_url": "http://robohash.org/eaeosdolorem.png?size=300x300"
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
Authorization: Token token="1c53565789134f79746d284dc6b069ea61b97f217f41676549a4045237de26466067a25fb51e345d"
Content-Length: 0
Content-Type: application/x-www-form-urlencoded
Host: www.example.com
```

#### Response
```
HTTP/1.1 200
Cache-Control: max-age=0, private, must-revalidate
Content-Length: 126
Content-Type: application/json; charset=utf-8
ETag: W/"849de50c440c4b4b82a41aab3d3c3a6d"
X-Content-Type-Options: nosniff
X-Frame-Options: SAMEORIGIN
X-Request-Id: f336321b-bc81-4ccd-9b00-42d82f508511
X-Runtime: 0.020323
X-XSS-Protection: 1; mode=block

{
  "profile": {
    "display_id": "larue_volkman",
    "display_name": "ほげ",
    "icon_url": "http://robohash.org/nonetipsa.png?size=300x300"
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
Authorization: Token token="90de68690d6b66164f0d6a0b000cdfdd279155accf9b30aab9ee0c3e70f4eb503fdfa01bd0cef8df"
Content-Length: 0
Content-Type: application/x-www-form-urlencoded
Host: www.example.com
```

#### Response
```
HTTP/1.1 200
Cache-Control: max-age=0, private, must-revalidate
Content-Length: 121
Content-Type: application/json; charset=utf-8
ETag: W/"42be5325e20b8ff86b6018ecc435fc91"
X-Content-Type-Options: nosniff
X-Frame-Options: SAMEORIGIN
X-Request-Id: 4bc97a9b-e7b3-4733-b8a9-64609decb29b
X-Runtime: 0.014660
X-XSS-Protection: 1; mode=block

{
  "profile": {
    "display_id": "hoge",
    "display_name": "ほげ",
    "icon_url": "http://robohash.org/quoquidolorem.png?size=300x300"
  }
}
```

## GET /api/v1/profile/enabled
Success.

### Example

#### Request
```
GET /api/v1/profile/enabled?display_id=raheem.walsh-dummy HTTP/1.1
Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
Authorization: Token token="cc7a14095e80fda912b5e6ff4807cb4e4b4cc9cdce600507d9c30e512fb7a1652f9506229ee49c33"
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
X-Request-Id: 2c789b8e-2271-4bc5-a076-e46ffe701f4b
X-Runtime: 0.023502
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
GET /api/v1/profile/enabled?display_id=chad HTTP/1.1
Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
Authorization: Token token="d9644aec5bab3768964926f7ca8245ae7e8d072d931ec6b5521829e6efea185c743d5f08dc17f89f"
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
X-Request-Id: 84f9674b-bf0f-4828-8f77-705ba4564dc9
X-Runtime: 0.014269
X-XSS-Protection: 1; mode=block

{
  "enabled": false
}
```
