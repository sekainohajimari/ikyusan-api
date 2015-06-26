## GET /api/v1/g/:group_id/invite/doing/:inviter_id
Success.

### Example

#### Request
```
GET /api/v1/g/134/invite/doing/186 HTTP/1.1
Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
Authorization: Token token="c2acf7e19ae9fc88c5a6dd6faaf253ea7654aad1e04515233f320e86f8e64531946d8c488ef96bc5"
Content-Length: 0
Content-Type: application/x-www-form-urlencoded
Host: www.example.com
```

#### Response
```
HTTP/1.1 200
Cache-Control: max-age=0, private, must-revalidate
Content-Length: 340
Content-Type: application/json; charset=utf-8
ETag: W/"4c5119f01d51801c7f26d76de529a95e"
X-Content-Type-Options: nosniff
X-Frame-Options: SAMEORIGIN
X-Request-Id: 5ef58d59-b890-4f7e-8dfb-cbf513070575
X-Runtime: 0.061202
X-XSS-Protection: 1; mode=block

{
  "invite": {
    "id": 28,
    "host_user": {
      "id": 185,
      "profile": {
        "display_id": "giovanni",
        "display_name": "名和 明央",
        "icon_url": "http://robohash.org/temporibusmagniminus.png?size=300x300"
      }
    },
    "invite_user": {
      "id": 186,
      "profile": {
        "display_id": "virgil",
        "display_name": "梶子 飛香",
        "icon_url": "http://robohash.org/magnisedvoluptatum.png?size=300x300"
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
PATCH /api/v1/g/135/invite/agree HTTP/1.1
Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
Authorization: Token token="9877e6feca7908ed8784b87edcac47b4a6d0543c9a32905c437930985de54ae0c7d7fcabe221e4ea"
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
ETag: W/"7363e85fe9edee6f053a4b319588c086"
X-Content-Type-Options: nosniff
X-Frame-Options: SAMEORIGIN
X-Request-Id: 85b1904e-3372-4be1-bd21-0e703f169e69
X-Runtime: 0.041073
X-XSS-Protection: 1; mode=block

{
  "success": true
}
```
