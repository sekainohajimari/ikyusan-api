## GET /api/v1/g/:group_id/invite/doing/:inviter_id
Return 201.

### Example

#### Request
```
GET /api/v1/g/91/invite/doing/tiana HTTP/1.1
Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
Authorization: Token token="1fa494ae162490aec3f53ebb89dc809de2b85ceeb466bf9dd7afe8826a14c673becf0b5adb78840c"
Content-Length: 0
Content-Type: application/x-www-form-urlencoded
Host: www.example.com
```

#### Response
```
HTTP/1.1 201
Cache-Control: max-age=0, private, must-revalidate
Content-Length: 388
Content-Type: application/json; charset=utf-8
ETag: W/"06d9487e40b53fdd40b439b17aaf2013"
X-Content-Type-Options: nosniff
X-Frame-Options: SAMEORIGIN
X-Request-Id: e0182066-7adb-4d94-a316-c0bed2f346a5
X-Runtime: 0.057976
X-XSS-Protection: 1; mode=block

{
  "invite": {
    "id": 27,
    "host_user": {
      "id": 108,
      "profile": {
        "display_id": "kaela.feil",
        "display_name": "奥崎 留吉",
        "icon_url": "http://robohash.org/evenietnonquia.png?size=300x300",
        "in_use_default_icon": false
      }
    },
    "invite_user": {
      "id": 107,
      "profile": {
        "display_id": "tiana",
        "display_name": "原口 徳内",
        "icon_url": "http://robohash.org/quidemminimaest.png?size=300x300",
        "in_use_default_icon": false
      }
    }
  }
}
```

## GET /api/v1/g/:group_id/invite/doing/:inviter_id
Return 400.

### Example

#### Request
```
GET /api/v1/g/92/invite/doing/dummy HTTP/1.1
Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
Authorization: Token token="ac2b09a91f8200ea4689dbf66b37799df1215e3aad683e549d1592e91d2376e51c11f0568e2f892c"
Content-Length: 0
Content-Type: application/x-www-form-urlencoded
Host: www.example.com
```

#### Response
```
HTTP/1.1 400
Cache-Control: no-cache
Content-Length: 45
Content-Type: application/json; charset=utf-8
X-Content-Type-Options: nosniff
X-Frame-Options: SAMEORIGIN
X-Request-Id: afb73deb-c17d-4829-8f6c-518c27194c22
X-Runtime: 0.015584
X-XSS-Protection: 1; mode=block

{
  "message": "dummyは存在しないIDです"
}
```

## PATCH /api/v1/g/:group_id/invite/agree
Success.

### Example

#### Request
```
PATCH /api/v1/g/94/invite/agree HTTP/1.1
Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
Authorization: Token token="db5be6ca09c914d6641d8e8eada78f88026ccd3d259695760aef99ab4cc04807ad49acd12b7f9b0f"
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
X-Request-Id: 5c5bd5d3-e6f0-4494-8cd2-7a80ffb23d02
X-Runtime: 0.037905
X-XSS-Protection: 1; mode=block
```

## PATCH /api/v1/g/:group_id/invite/denial
Success.

### Example

#### Request
```
PATCH /api/v1/g/96/invite/denial HTTP/1.1
Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
Authorization: Token token="962bc913cee8200c0f0a755858a12fb60928c2e8e5b549e73e98f211b6a97107d5d71b75664973b0"
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
X-Request-Id: de2d2655-8258-46ca-82eb-586fb023b147
X-Runtime: 0.036254
X-XSS-Protection: 1; mode=block
```
