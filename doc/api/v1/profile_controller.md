## GET /api/v1/profile
Success.

### Example

#### Request
```
GET /api/v1/profile HTTP/1.1
Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
Authorization: Token token="2be96280afbbd9e666a1d5c86d535709aff4922846a7f460c61071618ae43e85adeda054b4bcf6e1"
Content-Length: 0
Content-Type: application/x-www-form-urlencoded
Host: www.example.com
```

#### Response
```
HTTP/1.1 200
Cache-Control: max-age=0, private, must-revalidate
Content-Length: 166
Content-Type: application/json; charset=utf-8
ETag: W/"a1d735b40a6c0a2b6e25125cab1dcb44"
X-Content-Type-Options: nosniff
X-Frame-Options: SAMEORIGIN
X-Request-Id: 999916d4-83f5-492a-b8a9-ba84cf1b419d
X-Runtime: 0.017081
X-XSS-Protection: 1; mode=block

{
  "profile": {
    "display_id": "cydney",
    "display_name": "東浜 蘆村",
    "icon_url": "http://robohash.org/veritatissedassumenda.png?size=300x300",
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
Authorization: Token token="5536e34bbc03cce07cdb73001c87ee0f40bae1dfdcfe246f9f83e1beb23497985ff2b64ad46d06ba"
Content-Length: 31
Content-Type: application/x-www-form-urlencoded
Host: www.example.com

display_name=%E3%81%BB%E3%81%92
```

#### Response
```
HTTP/1.1 200
Cache-Control: max-age=0, private, must-revalidate
Content-Length: 169
Content-Type: application/json; charset=utf-8
ETag: W/"d8139d2996d308dc87789fe7639924a3"
X-Content-Type-Options: nosniff
X-Frame-Options: SAMEORIGIN
X-Request-Id: 7d6be799-e0a4-42eb-93d9-5576288fd683
X-Runtime: 0.014178
X-XSS-Protection: 1; mode=block

{
  "profile": {
    "display_id": "dawn_thompson",
    "display_name": "ほげ",
    "icon_url": "http://robohash.org/voluptatemsuscipitfacere.png?size=300x300",
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
Authorization: Token token="c2b6d87e5bbaed3673c65b3d6073e271eadd38842f946a76f8a9b77f65fdde89d974ce3099a3c838"
Content-Length: 47
Content-Type: application/x-www-form-urlencoded
Host: www.example.com

display_name=%E3%81%BB%E3%81%92&display_id=hoge
```

#### Response
```
HTTP/1.1 200
Cache-Control: max-age=0, private, must-revalidate
Content-Length: 161
Content-Type: application/json; charset=utf-8
ETag: W/"9f958611d21c6f21c79c6c55099c4bfe"
X-Content-Type-Options: nosniff
X-Frame-Options: SAMEORIGIN
X-Request-Id: fcb2b19f-a1f1-4081-85e0-112834d30e88
X-Runtime: 0.014789
X-XSS-Protection: 1; mode=block

{
  "profile": {
    "display_id": "hoge",
    "display_name": "ほげ",
    "icon_url": "http://robohash.org/repudiandaesimiliquemagni.png?size=300x300",
    "in_use_default_icon": false
  }
}
```

## GET /api/v1/profile/enabled
Success.

### Example

#### Request
```
GET /api/v1/profile/enabled?display_id=elia_harvey-dummy HTTP/1.1
Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
Authorization: Token token="654e5ee7f1bef030adea185d967bbdfa8a6c91c534e10e27d50a171587dd956a5f6b8f29b390ab5c"
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
X-Request-Id: dae35152-aa9e-48b4-ae47-1354e942fb22
X-Runtime: 0.016448
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
GET /api/v1/profile/enabled?display_id=lance.walter HTTP/1.1
Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
Authorization: Token token="ca4def3722e1bdc49dbe75dfc81491e81d93f67199c0e0bb1e7c2fc28d1338322bc69a7877e29f8e"
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
X-Request-Id: 97dfb111-2c73-4373-af04-bc4c4a357654
X-Runtime: 0.016023
X-XSS-Protection: 1; mode=block

{
  "enabled": false
}
```

## PUT /api/v1/profile/default_icon
Success.

### Example

#### Request
```
PUT /api/v1/profile/default_icon HTTP/1.1
Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
Authorization: Token token="d010de1e6179cd93f2c7247b99db0f5f072c996b9d32ece00d28007eac13c1a787eb6d584aead881"
Content-Length: 0
Content-Type: application/x-www-form-urlencoded
Host: www.example.com
```

#### Response
```
HTTP/1.1 200
Cache-Control: max-age=0, private, must-revalidate
Content-Length: 146
Content-Type: application/json; charset=utf-8
ETag: W/"c0ef85e64d0f0934565f6a456f2e32b8"
X-Content-Type-Options: nosniff
X-Frame-Options: SAMEORIGIN
X-Request-Id: 5ee4403a-a1a4-4d51-9570-fe5efafeb08a
X-Runtime: 0.012558
X-XSS-Protection: 1; mode=block

{
  "profile": {
    "display_id": "webster",
    "display_name": "沢井 四方吉",
    "icon_url": "http://example.com/default_icon.png",
    "in_use_default_icon": true
  }
}
```
