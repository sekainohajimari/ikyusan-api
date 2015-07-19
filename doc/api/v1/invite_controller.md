## GET /api/v1/g/:group_id/invite/doing/:inviter_id
Success.

### Example

#### Request
```
GET /api/v1/g/366/invite/doing/575 HTTP/1.1
Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
Authorization: Token token="590353235795cd666a3e1874df22de6018cfbcfdbf95c41ce8ee2b2729eaf4ccc70f094f3793ae81"
Content-Length: 0
Content-Type: application/x-www-form-urlencoded
Host: www.example.com
```

#### Response
```
HTTP/1.1 201
Cache-Control: max-age=0, private, must-revalidate
Content-Length: 340
Content-Type: application/json; charset=utf-8
ETag: W/"125c1b113f2f63676e1d3e6d0aa420b6"
X-Content-Type-Options: nosniff
X-Frame-Options: SAMEORIGIN
X-Request-Id: 050fea4d-fc01-4d51-a2b2-ca8305ebb8b6
X-Runtime: 0.068653
X-XSS-Protection: 1; mode=block

{
  "invite": {
    "id": 157,
    "host_user": {
      "id": 576,
      "profile": {
        "display_id": "scarlett.orn",
        "display_name": "鳴尾 福蔵",
        "icon_url": "http://robohash.org/distinctiositsunt.png?size=300x300"
      }
    },
    "invite_user": {
      "id": 575,
      "profile": {
        "display_id": "arnaldo.nolan",
        "display_name": "島尻 泰紀",
        "icon_url": "http://robohash.org/idetdolor.png?size=300x300"
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
PATCH /api/v1/g/368/invite/agree HTTP/1.1
Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
Authorization: Token token="af8d3c3df8f5d3c790f5a63ea3001c4d6d94a230c33139d31313ca6f853ed26207a572d2aec70381"
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
X-Request-Id: 3ca48c56-13a1-45d9-8964-946891ef1c43
X-Runtime: 0.041821
X-XSS-Protection: 1; mode=block
```

## PATCH /api/v1/g/:group_id/invite/denial
Success.

### Example

#### Request
```
PATCH /api/v1/g/370/invite/denial HTTP/1.1
Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
Authorization: Token token="498e934dd62d2423637ba4bf4fe689cd2b5d6adeb04806f6508ee49468ccd3606b4e5fcdcfe476d5"
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
X-Request-Id: 38ebc2af-07ba-4ce8-b03b-f8d78bad1277
X-Runtime: 0.038959
X-XSS-Protection: 1; mode=block
```
