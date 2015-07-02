## GET /api/v1/g/:group_id/invite/doing/:inviter_id
Success.

### Example

#### Request
```
GET /api/v1/g/548/invite/doing/623 HTTP/1.1
Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
Authorization: Token token="ce6692555e279346dad3aeca584e19585f8341f88a94bf8f893b2adc439b88678fb5dd2ad76b7dbd"
Content-Length: 0
Content-Type: application/x-www-form-urlencoded
Host: www.example.com
```

#### Response
```
HTTP/1.1 201
Cache-Control: max-age=0, private, must-revalidate
Content-Length: 365
Content-Type: application/json; charset=utf-8
ETag: W/"2e81a6ca9fdd2fc6c4a80664e55d54bc"
X-Content-Type-Options: nosniff
X-Frame-Options: SAMEORIGIN
X-Request-Id: 169170fd-81d4-4d60-9af1-251df47d2e43
X-Runtime: 0.143606
X-XSS-Protection: 1; mode=block

{
  "invite": {
    "id": 68,
    "host_user": {
      "id": 622,
      "profile": {
        "display_id": "laury.collins",
        "display_name": "角間 知洋",
        "icon_url": "http://robohash.org/aliquidlaborumvoluptatem.png?size=300x300"
      }
    },
    "invite_user": {
      "id": 623,
      "profile": {
        "display_id": "beaulah_armstrong",
        "display_name": "久石 胤平",
        "icon_url": "http://robohash.org/molestiasassumendaipsam.png?size=300x300"
      }
    }
  }
}
```

## PATCH /api/v1/g/:group_id/invite/agree
Success.

### Example

#### Request
```
PATCH /api/v1/g/549/invite/agree HTTP/1.1
Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
Authorization: Token token="d944f51fcef3927398a354589dee41373fdbd655228a797b979e8b83e8243081ad9e0f9b9d8147f9"
Content-Length: 0
Content-Type: application/x-www-form-urlencoded
Host: www.example.com
```

#### Response
```
HTTP/1.1 204
Cache-Control: no-cache
X-Content-Type-Options: nosniff
X-Frame-Options: SAMEORIGIN
X-Request-Id: 0c5cdbad-43f1-4cae-abdf-2484a6ce2994
X-Runtime: 0.038116
X-XSS-Protection: 1; mode=block
```
