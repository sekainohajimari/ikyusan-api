## GET /api/v1/profile
Success.

### Example

#### Request
```
GET /api/v1/profile HTTP/1.1
Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
Authorization: Token token="dd9db75567a8227a1bcf5f0673f60f9b44cf92aa4dae4c66ca8776cea1dc84379251ef3b37bda96a"
Content-Length: 0
Content-Type: application/x-www-form-urlencoded
Host: www.example.com
```

#### Response
```
HTTP/1.1 200
Cache-Control: max-age=0, private, must-revalidate
Content-Length: 143
Content-Type: application/json; charset=utf-8
ETag: W/"0f4eb684e402bc65336cb561d5bebf9a"
X-Content-Type-Options: nosniff
X-Frame-Options: SAMEORIGIN
X-Request-Id: 74b1b6f6-2f11-4558-879e-b391f0ae1d71
X-Runtime: 0.015629
X-XSS-Protection: 1; mode=block

{
  "profile": {
    "display_id": "deshaun_keler",
    "display_name": "ブライアント 泰彦",
    "icon_url": "http://robohash.org/exeosut.png?size=300x300"
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
Authorization: Token token="dcaf02c807cf224499a84def91298e97d056394ddce4ba96dc900d6b742818e7ad0d8c611162e18d"
Content-Length: 0
Content-Type: application/x-www-form-urlencoded
Host: www.example.com
```

#### Response
```
HTTP/1.1 200
Cache-Control: max-age=0, private, must-revalidate
Content-Length: 132
Content-Type: application/json; charset=utf-8
ETag: W/"c83b7dc14d73934b79d08a560c8e7b6d"
X-Content-Type-Options: nosniff
X-Frame-Options: SAMEORIGIN
X-Request-Id: b02e3406-3850-4f70-81c1-6d0790404256
X-Runtime: 0.021042
X-XSS-Protection: 1; mode=block

{
  "profile": {
    "display_id": "tremayne.hills",
    "display_name": "ほげ",
    "icon_url": "http://robohash.org/velnesciuntaut.png?size=300x300"
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
Authorization: Token token="431ab1ab48d3b50f304873e5c9de28f13f8104e73b96f056342a9c59254093efbfe11b34ad6d98b4"
Content-Length: 0
Content-Type: application/x-www-form-urlencoded
Host: www.example.com
```

#### Response
```
HTTP/1.1 200
Cache-Control: max-age=0, private, must-revalidate
Content-Length: 116
Content-Type: application/json; charset=utf-8
ETag: W/"15ea3973090da52aed415b076eef857c"
X-Content-Type-Options: nosniff
X-Frame-Options: SAMEORIGIN
X-Request-Id: 2f79812d-7f8c-4fa3-a3f5-dcc799b0d00f
X-Runtime: 0.016367
X-XSS-Protection: 1; mode=block

{
  "profile": {
    "display_id": "hoge",
    "display_name": "ほげ",
    "icon_url": "http://robohash.org/hicutaut.png?size=300x300"
  }
}
```

## GET /api/v1/profile/enabled
Success.

### Example

#### Request
```
GET /api/v1/profile/enabled?display_id=mikel-dummy HTTP/1.1
Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
Authorization: Token token="a428a3382055556b401fad23ed260107f059af89eaef5208eded33bb68ff7173ca46f29e910cedc6"
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
X-Request-Id: 46b3ce1d-8653-4272-a55a-5c9de3845ef1
X-Runtime: 0.027399
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
GET /api/v1/profile/enabled?display_id=vada HTTP/1.1
Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
Authorization: Token token="5e526b4be22f0128c4dbc95f906aa63778c265c98393a89351ba0eeb2349a4e8b21d8b8298ef24d4"
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
X-Request-Id: d60ccd9a-ece3-4b36-9aef-73bac29c7b22
X-Runtime: 0.017477
X-XSS-Protection: 1; mode=block

{
  "enabled": false
}
```
