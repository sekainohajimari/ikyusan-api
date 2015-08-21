## GET /api/v1/profile
Success.

### Example

#### Request
```
GET /api/v1/profile HTTP/1.1
Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
Authorization: Token token="fba7227a858916069b6445c1e95a7e28a6b29b3356b81865f76e7c6eade764cafc2aaffcf44357bb"
Content-Length: 0
Content-Type: application/x-www-form-urlencoded
Host: www.example.com
```

#### Response
```
HTTP/1.1 200
Cache-Control: max-age=0, private, must-revalidate
Content-Length: 163
Content-Type: application/json; charset=utf-8
ETag: W/"10bfbcfb69227f72935efcec7972e816"
X-Content-Type-Options: nosniff
X-Frame-Options: SAMEORIGIN
X-Request-Id: 553f160f-ab5b-4f8b-913b-73cd972cfa12
X-Runtime: 0.030406
X-XSS-Protection: 1; mode=block

{
  "profile": {
    "display_id": "sadie.gleichner",
    "display_name": "平磯 梓",
    "icon_url": "http://robohash.org/eaquiratione.png?size=300x300",
    "in_use_default_icon": false
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
Authorization: Token token="53e5eb8bcdf9dcd3265c28e9c54d98c50e7a2af6e9ddff14035a9a678a60869bd176178248b39168"
Content-Length: 31
Content-Type: application/x-www-form-urlencoded
Host: www.example.com

display_name=%E3%81%BB%E3%81%92
```

#### Response
```
HTTP/1.1 200
Cache-Control: max-age=0, private, must-revalidate
Content-Length: 151
Content-Type: application/json; charset=utf-8
ETag: W/"a7e2d423cf1b6378dfb393bb43972cd8"
X-Content-Type-Options: nosniff
X-Frame-Options: SAMEORIGIN
X-Request-Id: 51f05831-56f1-43b8-9677-39b36cda89cb
X-Runtime: 0.028939
X-XSS-Protection: 1; mode=block

{
  "profile": {
    "display_id": "deondre",
    "display_name": "ほげ",
    "icon_url": "http://robohash.org/atillumvelit.png?size=300x300",
    "in_use_default_icon": false
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
Authorization: Token token="ea8e6800702e19f5595d0430b7f05ef97febff261388bd04345064e021c0dc3dab54173ab0d8c1ac"
Content-Length: 47
Content-Type: application/x-www-form-urlencoded
Host: www.example.com

display_name=%E3%81%BB%E3%81%92&display_id=hoge
```

#### Response
```
HTTP/1.1 200
Cache-Control: max-age=0, private, must-revalidate
Content-Length: 147
Content-Type: application/json; charset=utf-8
ETag: W/"75a9972d595305537c04275c42a28f58"
X-Content-Type-Options: nosniff
X-Frame-Options: SAMEORIGIN
X-Request-Id: 0f536208-2cc0-4a7b-bfcb-30cd5ef5fc20
X-Runtime: 0.020666
X-XSS-Protection: 1; mode=block

{
  "profile": {
    "display_id": "hoge",
    "display_name": "ほげ",
    "icon_url": "http://robohash.org/quiautsequi.png?size=300x300",
    "in_use_default_icon": false
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
Authorization: Token token="add5987f87e365b327778e08bc16ef97e60cc6e64618cb68292db4594051ca4c9f244c76be810433"
Content-Length: 68
Content-Type: application/x-www-form-urlencoded
Host: www.example.com

display_name=%E3%81%BB%E3%81%92&display_id=hoge&apply_default_icon=1
```

#### Response
```
HTTP/1.1 200
Cache-Control: max-age=0, private, must-revalidate
Content-Length: 133
Content-Type: application/json; charset=utf-8
ETag: W/"20beae940c9aa2f02f3f6c019c04d77a"
X-Content-Type-Options: nosniff
X-Frame-Options: SAMEORIGIN
X-Request-Id: 4860ab88-329a-4490-8d82-c317b6d61602
X-Runtime: 0.026449
X-XSS-Protection: 1; mode=block

{
  "profile": {
    "display_id": "hoge",
    "display_name": "ほげ",
    "icon_url": "http://example.com/default_icon.png",
    "in_use_default_icon": true
  }
}
```

## GET /api/v1/profile/enabled
Success.

### Example

#### Request
```
GET /api/v1/profile/enabled?display_id=roslyn_parker-dummy HTTP/1.1
Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
Authorization: Token token="6713d3a23c55c993e9b9c4c162302be834d6732269823a09c5a27f746efee3368f3690f1e3f301fe"
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
X-Request-Id: 68843567-5cd7-466d-aed9-66c069627de3
X-Runtime: 0.027376
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
GET /api/v1/profile/enabled?display_id=jarrell.trantow HTTP/1.1
Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
Authorization: Token token="9eaf691042bdb3e1aa136ffcd8320bad013261707fb942b9d1a5abe24eba7f1d546e5154828919b9"
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
X-Request-Id: d00d5f65-474f-4eee-89ae-abb5fac42155
X-Runtime: 0.025185
X-XSS-Protection: 1; mode=block

{
  "enabled": false
}
```
