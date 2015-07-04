## GET /api/v1/g/:group_id/invite/doing/:inviter_id
Success.

### Example

#### Request
```
GET /api/v1/g/655/invite/doing/770 HTTP/1.1
Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
Authorization: Token token="f146bca622c985011cee8357fc720e6c638a086e01fe5cd2e01e36ac3930d4d5489df93378db4fa9"
Content-Length: 0
Content-Type: application/x-www-form-urlencoded
Host: www.example.com
```

#### Response
```
HTTP/1.1 201
Cache-Control: max-age=0, private, must-revalidate
Content-Length: 363
Content-Type: application/json; charset=utf-8
ETag: W/"9d4159ad5c03c4376bb633a83826e653"
X-Content-Type-Options: nosniff
X-Frame-Options: SAMEORIGIN
X-Request-Id: 65c3e8ef-d3df-435a-a47b-099b8bc73ead
X-Runtime: 0.087082
X-XSS-Protection: 1; mode=block

{
  "invite": {
    "id": 51,
    "host_user": {
      "id": 769,
      "profile": {
        "display_id": "raphaelle.legros",
        "display_name": "平石 智史",
        "icon_url": "http://robohash.org/veritatismolestiaereiciendis.png?size=300x300"
      }
    },
    "invite_user": {
      "id": 770,
      "profile": {
        "display_id": "donald",
        "display_name": "都留 ハルヲ",
        "icon_url": "http://robohash.org/repellatquiaccusantium.png?size=300x300"
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
PATCH /api/v1/g/656/invite/agree HTTP/1.1
Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
Authorization: Token token="5f30f16be6d2c475454530bbde1f51d2f272b4e27d40489603ff1eb80deb498a69931593452731ca"
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
X-Request-Id: 9f427a2c-a332-4866-9df7-0c402338726a
X-Runtime: 0.042912
X-XSS-Protection: 1; mode=block
```
