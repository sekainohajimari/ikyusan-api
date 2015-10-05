## GET /api/v1/profile
Success.

### Example

#### Request
```
GET /api/v1/profile HTTP/1.1
Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
Authorization: Token token="0871ab13eef4ff0efad0164bcdb9a5db651ae293a219ca267dc4af5d3835d132e7a20e48cf658934"
Content-Length: 0
Content-Type: application/x-www-form-urlencoded
Host: www.example.com
```

#### Response
```
HTTP/1.1 200
Cache-Control: max-age=0, private, must-revalidate
Content-Length: 242
Content-Type: application/json; charset=utf-8
ETag: W/"ced2c4171821bc80aa5cfde4ec180cb5"
X-Content-Type-Options: nosniff
X-Frame-Options: SAMEORIGIN
X-Request-Id: e7e484c4-9fae-4b16-b02b-b7143d503cef
X-Runtime: 0.017979
X-XSS-Protection: 1; mode=block

{
  "profile": {
    "display_id": "barney",
    "display_name": "松舘 絵里加",
    "icon_url": "http://robohash.org/delectusrerumvoluptatem.png?size=300x300&set=set1",
    "in_use_default_icon": false,
    "default_icon_url": "http://example.com/default_icon.png"
  }
}
```

## PATCH /api/v1/profile
Success.

### Example

#### Request
```
PATCH /api/v1/profile HTTP/1.1
Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
Authorization: Token token="8a8430b0b6a150e2c56638f75094b2c4934e345c60a0a7cd3fd7c77008ec1f6b583632f8eb64f586"
Content-Length: 31
Content-Type: application/x-www-form-urlencoded
Host: www.example.com

display_name=%E3%81%BB%E3%81%92
```

#### Response
```
HTTP/1.1 200
Cache-Control: max-age=0, private, must-revalidate
Content-Length: 228
Content-Type: application/json; charset=utf-8
ETag: W/"a171e193eb81f563bb084f9a3d5f0349"
X-Content-Type-Options: nosniff
X-Frame-Options: SAMEORIGIN
X-Request-Id: 9f883823-de0c-47b9-98c9-badb1bac9bac
X-Runtime: 0.017406
X-XSS-Protection: 1; mode=block

{
  "profile": {
    "display_id": "theron_heaney",
    "display_name": "ほげ",
    "icon_url": "http://robohash.org/totamquinisi.png?size=300x300&set=set1",
    "in_use_default_icon": false,
    "default_icon_url": "http://example.com/default_icon.png"
  }
}
```

## PATCH /api/v1/profile
Success.

### Example

#### Request
```
PATCH /api/v1/profile HTTP/1.1
Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
Authorization: Token token="88f63808f41f264dd3a4e7dfc9190bc86bf9820df4cd4e6fbdbd2f00a08bb67f174d13e3a3672e3f"
Content-Length: 47
Content-Type: application/x-www-form-urlencoded
Host: www.example.com

display_name=%E3%81%BB%E3%81%92&display_id=hoge
```

#### Response
```
HTTP/1.1 200
Cache-Control: max-age=0, private, must-revalidate
Content-Length: 227
Content-Type: application/json; charset=utf-8
ETag: W/"e1a6f7e6f083772498d0acee0385cf4c"
X-Content-Type-Options: nosniff
X-Frame-Options: SAMEORIGIN
X-Request-Id: 1c5299dd-1881-424e-b381-f43da8f28587
X-Runtime: 0.015981
X-XSS-Protection: 1; mode=block

{
  "profile": {
    "display_id": "hoge",
    "display_name": "ほげ",
    "icon_url": "http://robohash.org/omnisquivoluptatibus.png?size=300x300&set=set1",
    "in_use_default_icon": false,
    "default_icon_url": "http://example.com/default_icon.png"
  }
}
```

## PATCH /api/v1/profile
Success.

### Example

#### Request
```
PATCH /api/v1/profile HTTP/1.1
Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
Authorization: Token token="b725748abd188957262ecdd6406efdaf36c55a259471ba522b584d878baa2475e795681d3fa2494e"
Content-Length: 68
Content-Type: application/x-www-form-urlencoded
Host: www.example.com

display_name=%E3%81%BB%E3%81%92&display_id=hoge&apply_default_icon=1
```

#### Response
```
HTTP/1.1 200
Cache-Control: max-age=0, private, must-revalidate
Content-Length: 224
Content-Type: application/json; charset=utf-8
ETag: W/"8398f74650906572469d034ed2b235d3"
X-Content-Type-Options: nosniff
X-Frame-Options: SAMEORIGIN
X-Request-Id: e0c71d34-40fb-4a18-9d87-50e215b5d8c6
X-Runtime: 0.018482
X-XSS-Protection: 1; mode=block

{
  "profile": {
    "display_id": "hoge",
    "display_name": "ほげ",
    "icon_url": "http://robohash.org/solutamolestiaequi.png?size=300x300&set=set1",
    "in_use_default_icon": true,
    "default_icon_url": "http://example.com/default_icon.png"
  }
}
```

## PATCH /api/v1/profile
Success.

### Example

#### Request
```
PATCH /api/v1/profile HTTP/1.1
Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
Authorization: Token token="cb88c4608816bc94f8485f476c64364f35647886ceca89235541805f1af858ae7726fb53dec9fdcc"
Content-Length: 68
Content-Type: application/x-www-form-urlencoded
Host: www.example.com

display_name=%E3%81%BB%E3%81%92&display_id=hoge&apply_default_icon=0
```

#### Response
```
HTTP/1.1 200
Cache-Control: max-age=0, private, must-revalidate
Content-Length: 219
Content-Type: application/json; charset=utf-8
ETag: W/"bfdafc2739ad7610baa2fcff24764249"
X-Content-Type-Options: nosniff
X-Frame-Options: SAMEORIGIN
X-Request-Id: f5bf796d-ad48-4f68-b296-1b89e59cfa80
X-Runtime: 0.011433
X-XSS-Protection: 1; mode=block

{
  "profile": {
    "display_id": "hoge",
    "display_name": "ほげ",
    "icon_url": "http://robohash.org/etautdolorem.png?size=300x300&set=set1",
    "in_use_default_icon": false,
    "default_icon_url": "http://example.com/default_icon.png"
  }
}
```

## GET /api/v1/profile/enabled
Success.

### Example

#### Request
```
GET /api/v1/profile/enabled?display_id=wanda_schinner-dummy HTTP/1.1
Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
Authorization: Token token="6d889ee299540522d4b1a46136d539df941d37c07a2e92c28ce63f30af79ac7f77baff51998253ed"
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
X-Request-Id: b79c652a-09a5-4f81-8561-7df5e5fe0ffc
X-Runtime: 0.022440
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
GET /api/v1/profile/enabled?display_id=hailee HTTP/1.1
Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
Authorization: Token token="5bd3a5e2478e32d2f697809a1e94bebaca9d59ce858bbf2b7c84c85311a5d1bccb1b4d63c4a026b4"
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
X-Request-Id: 80e37118-467c-4cab-8fc2-50c5efe92676
X-Runtime: 0.018427
X-XSS-Protection: 1; mode=block

{
  "enabled": false
}
```
