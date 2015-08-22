## GET /api/v1/profile
Success.

### Example

#### Request
```
GET /api/v1/profile HTTP/1.1
Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
Authorization: Token token="a546af9028dbe79999392a6c37e3a5c7eb2e6e64a863c45af65d21d42b6ceec10455fa10007f6137"
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
ETag: W/"ec44ff1842a47caa9724336a9b44a284"
X-Content-Type-Options: nosniff
X-Frame-Options: SAMEORIGIN
X-Request-Id: 3dce07da-340a-463a-be87-6c0595f9fe78
X-Runtime: 0.015115
X-XSS-Protection: 1; mode=block

{
  "profile": {
    "display_id": "lavon",
    "display_name": "タイラー ミドリ",
    "icon_url": "http://robohash.org/illumetcum.png?size=300x300",
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
Authorization: Token token="e171bacc8f2a36250621d360ea20a6a32825b9b073482fa12f3c5e30f3f28ccabc3bcca24ce2d7e9"
Content-Length: 31
Content-Type: application/x-www-form-urlencoded
Host: www.example.com

display_name=%E3%81%BB%E3%81%92
```

#### Response
```
HTTP/1.1 200
Cache-Control: max-age=0, private, must-revalidate
Content-Length: 156
Content-Type: application/json; charset=utf-8
ETag: W/"8d28077999575bdc6f3472a01afaa8c6"
X-Content-Type-Options: nosniff
X-Frame-Options: SAMEORIGIN
X-Request-Id: d0a2524f-dba2-4237-8bec-fc04a60886e8
X-Runtime: 0.019505
X-XSS-Protection: 1; mode=block

{
  "profile": {
    "display_id": "nina",
    "display_name": "ほげ",
    "icon_url": "http://robohash.org/idvoluptasvoluptatem.png?size=300x300",
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
Authorization: Token token="9c5bcb73b4d92dcdee97a669ccce9d7fd00520bb96471ebbdd72bf92ea36f3311492619080b91e61"
Content-Length: 47
Content-Type: application/x-www-form-urlencoded
Host: www.example.com

display_name=%E3%81%BB%E3%81%92&display_id=hoge
```

#### Response
```
HTTP/1.1 200
Cache-Control: max-age=0, private, must-revalidate
Content-Length: 156
Content-Type: application/json; charset=utf-8
ETag: W/"19f0dd5f223521adecca0861cb253a45"
X-Content-Type-Options: nosniff
X-Frame-Options: SAMEORIGIN
X-Request-Id: e2574d31-1807-4d63-9801-385442cf1711
X-Runtime: 0.014568
X-XSS-Protection: 1; mode=block

{
  "profile": {
    "display_id": "hoge",
    "display_name": "ほげ",
    "icon_url": "http://robohash.org/laudantiumminimaquia.png?size=300x300",
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
Authorization: Token token="4c8f7cb9a1138d9bfcb63961e33285017c93575bbbf65a955efb95b90b7fabc94f6265b67bffa6dc"
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
X-Request-Id: e061a394-63c7-426e-a5d2-55262eff1f58
X-Runtime: 0.020744
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

## PATCH /api/v1/profile
Success.

### Example

#### Request
```
PATCH /api/v1/profile HTTP/1.1
Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
Authorization: Token token="bfe0d76b5b4cb9fce779da5f1047b66d3b08968d4af04198afa1328a4a1ec7c89ba789e905de356b"
Content-Length: 68
Content-Type: application/x-www-form-urlencoded
Host: www.example.com

display_name=%E3%81%BB%E3%81%92&display_id=hoge&apply_default_icon=0
```

#### Response
```
HTTP/1.1 200
Cache-Control: max-age=0, private, must-revalidate
Content-Length: 147
Content-Type: application/json; charset=utf-8
ETag: W/"bb1361605fcbf6f31a345b14f598c12b"
X-Content-Type-Options: nosniff
X-Frame-Options: SAMEORIGIN
X-Request-Id: badc73be-5fa6-4a30-88db-395e01194840
X-Runtime: 0.013194
X-XSS-Protection: 1; mode=block

{
  "profile": {
    "display_id": "hoge",
    "display_name": "ほげ",
    "icon_url": "http://robohash.org/solutaetaut.png?size=300x300",
    "in_use_default_icon": false
  }
}
```

## GET /api/v1/profile/enabled
Success.

### Example

#### Request
```
GET /api/v1/profile/enabled?display_id=scarlett_hayes-dummy HTTP/1.1
Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
Authorization: Token token="cf75e1fb6fbb21ac9c42dc6aabf55d0c0b7214b70ac4e4f02cfad066f7112b5152133bfcda41abfb"
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
X-Request-Id: 4a09bcd8-f25c-4f75-bf2c-f849731f2cb2
X-Runtime: 0.015457
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
GET /api/v1/profile/enabled?display_id=denis_thiel HTTP/1.1
Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
Authorization: Token token="cbf1b0f82acc4607d2d33ab5a97c21bf5ee529a8cc9bc956109b049f465af1b8555eb5074d0a2fa0"
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
X-Request-Id: 7830a430-c657-4bc6-9dad-36e732f13920
X-Runtime: 0.013474
X-XSS-Protection: 1; mode=block

{
  "enabled": false
}
```
