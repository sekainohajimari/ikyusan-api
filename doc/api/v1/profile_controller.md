## GET /api/v1/profile
Success.

### Example

#### Request
```
GET /api/v1/profile HTTP/1.1
Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
Authorization: Token token="b1e5de687259db7e7276f20337c97523ff97d8a6539fcd8f5dbeeee5a1802408899fc4cf367bc332"
Content-Length: 0
Content-Type: application/x-www-form-urlencoded
Host: www.example.com
```

#### Response
```
HTTP/1.1 200
Cache-Control: max-age=0, private, must-revalidate
Content-Length: 241
Content-Type: application/json; charset=utf-8
ETag: W/"9678a0340593b960474daaeecec3e9d0"
X-Content-Type-Options: nosniff
X-Frame-Options: SAMEORIGIN
X-Request-Id: 25eedf61-5e05-43ea-b980-a902f950824d
X-Runtime: 0.017353
X-XSS-Protection: 1; mode=block

{
  "profile": {
    "display_id": "jermain.swift",
    "display_name": "高井 太平",
    "icon_url": "http://robohash.org/rerumsedreiciendis.png?size=300x300&set=set1",
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
Authorization: Token token="eb437785812d835b75a59c0d45eb53dfb6a5ada8a6ddbb1906f47c8efdf135e97b8968cf4bfbca5e"
Content-Length: 31
Content-Type: application/x-www-form-urlencoded
Host: www.example.com

display_name=%E3%81%BB%E3%81%92
```

#### Response
```
HTTP/1.1 200
Cache-Control: max-age=0, private, must-revalidate
Content-Length: 162
Content-Type: application/json; charset=utf-8
ETag: W/"d146393f43a50b2bc47e76e1c6bc945d"
X-Content-Type-Options: nosniff
X-Frame-Options: SAMEORIGIN
X-Request-Id: cf6b5b85-9152-4758-9a83-6c518fbd2954
X-Runtime: 0.022298
X-XSS-Protection: 1; mode=block

{
  "profile": {
    "display_id": "lisa",
    "display_name": "ほげ",
    "icon_url": "http://robohash.org/uteveniethic.png?size=300x300&set=set1",
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
Authorization: Token token="5ff375dee76f5aac58325e53d3f47b90062457c38e145d2053abc09c20b571d78889a933c8740283"
Content-Length: 47
Content-Type: application/x-www-form-urlencoded
Host: www.example.com

display_name=%E3%81%BB%E3%81%92&display_id=hoge
```

#### Response
```
HTTP/1.1 200
Cache-Control: max-age=0, private, must-revalidate
Content-Length: 167
Content-Type: application/json; charset=utf-8
ETag: W/"a7d2748cc399bbb2c5e516a994f8b9ba"
X-Content-Type-Options: nosniff
X-Frame-Options: SAMEORIGIN
X-Request-Id: bcd1fbee-e3d1-4378-a74b-046e8d691a9a
X-Runtime: 0.012896
X-XSS-Protection: 1; mode=block

{
  "profile": {
    "display_id": "hoge",
    "display_name": "ほげ",
    "icon_url": "http://robohash.org/utdebitisrepellat.png?size=300x300&set=set1",
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
Authorization: Token token="d5ad45c6fed8005b2729787880e4adb7ef0c872c91fe9252717d6294cbfd4f0ff1c60f02bfb2778a"
Content-Length: 68
Content-Type: application/x-www-form-urlencoded
Host: www.example.com

display_name=%E3%81%BB%E3%81%92&display_id=hoge&apply_default_icon=1
```

#### Response
```
HTTP/1.1 200
Cache-Control: max-age=0, private, must-revalidate
Content-Length: 165
Content-Type: application/json; charset=utf-8
ETag: W/"00261c6bc2e817e59e7f2cc5330cc994"
X-Content-Type-Options: nosniff
X-Frame-Options: SAMEORIGIN
X-Request-Id: f1e2122c-a862-497e-b52f-7c842bb820df
X-Runtime: 0.015709
X-XSS-Protection: 1; mode=block

{
  "profile": {
    "display_id": "hoge",
    "display_name": "ほげ",
    "icon_url": "http://robohash.org/autemenimaliquam.png?size=300x300&set=set1",
    "in_use_default_icon": true
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
Authorization: Token token="f4ab14119ad2db8ee9d89120fadbabaf9d3c6d268170961f2f15f1fdccfd1d075799479b5a2137a1"
Content-Length: 68
Content-Type: application/x-www-form-urlencoded
Host: www.example.com

display_name=%E3%81%BB%E3%81%92&display_id=hoge&apply_default_icon=0
```

#### Response
```
HTTP/1.1 200
Cache-Control: max-age=0, private, must-revalidate
Content-Length: 168
Content-Type: application/json; charset=utf-8
ETag: W/"d88aea9a0b11347ba8034a439dd75f1c"
X-Content-Type-Options: nosniff
X-Frame-Options: SAMEORIGIN
X-Request-Id: a0abe271-d0aa-4b92-8d5b-f1f141b1863e
X-Runtime: 0.013838
X-XSS-Protection: 1; mode=block

{
  "profile": {
    "display_id": "hoge",
    "display_name": "ほげ",
    "icon_url": "http://robohash.org/delenitiquidolorem.png?size=300x300&set=set1",
    "in_use_default_icon": false
  }
}
```

## GET /api/v1/profile/enabled
Success.

### Example

#### Request
```
GET /api/v1/profile/enabled?display_id=amelia-dummy HTTP/1.1
Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
Authorization: Token token="cb4c3cb3537ad15acd3e2b0e8257408550fad6a1b5bd952349ae06d590bdf5a011c39ef0f5dd5114"
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
X-Request-Id: 96d51999-4097-4ac6-92ba-3d6dc0653e9d
X-Runtime: 0.016041
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
GET /api/v1/profile/enabled?display_id=shannon_schowalter HTTP/1.1
Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
Authorization: Token token="a991f009d674b621d818af6f5e17c3336b7841b7f202d4acea5571502bceb7c4de7199ab88b4f499"
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
X-Request-Id: c26b8fed-6d9b-4de1-9db8-3d329effed44
X-Runtime: 0.012623
X-XSS-Protection: 1; mode=block

{
  "enabled": false
}
```
