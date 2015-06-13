## GET /api/v1/g/:group_id/t
Success.

### Example

#### Request
```
GET /api/v1/g/313/t HTTP/1.1
Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
Authorization: Token token="dcfd687c031a0495a42ea782017f421f51a7bc5cb2f4e08afe9b8c04bbf1aa214477cf9876891c36"
Content-Length: 0
Content-Type: application/x-www-form-urlencoded
Host: www.example.com
```

#### Response
```
HTTP/1.1 200
Cache-Control: max-age=0, private, must-revalidate
Content-Length: 161
Content-Type: application/json; charset=utf-8
ETag: W/"303b15d06f992cdf374968810321e541"
X-Content-Type-Options: nosniff
X-Frame-Options: SAMEORIGIN
X-Request-Id: 2133f948-b76b-422d-8609-bd5057ce0a94
X-Runtime: 0.044274
X-XSS-Protection: 1; mode=block

{
  "topics": [
    {
      "id": 46,
      "name": "topic_1",
      "idea_max_num": 100,
      "build_user": {
        "id": 156,
        "profile": {
          "display_id": "kyoko",
          "display_name": "きょうこ",
          "icon_url": null
        }
      }
    }
  ]
}
```

## POST /api/v1/g/:group_id/t
Success.

### Example

#### Request
```
POST /api/v1/g/314/t HTTP/1.1
Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
Authorization: Token token="a1e735c00c6d6c1932a6dc6cde0dba7a3e203302e5e314b9495648a2f9d528a8705fff884e8374d8"
Content-Length: 9
Content-Type: application/x-www-form-urlencoded
Host: www.example.com

name=hoge
```

#### Response
```
HTTP/1.1 200
Cache-Control: max-age=0, private, must-revalidate
Content-Length: 155
Content-Type: application/json; charset=utf-8
ETag: W/"b1cdc9892e76ae9b4d4357cfff4d0498"
X-Content-Type-Options: nosniff
X-Frame-Options: SAMEORIGIN
X-Request-Id: d0953f25-d9c2-4770-8659-4b6907241e43
X-Runtime: 0.036165
X-XSS-Protection: 1; mode=block

{
  "topic": {
    "id": 48,
    "name": "hoge",
    "idea_max_num": 100,
    "build_user": {
      "id": 157,
      "profile": {
        "display_id": "kyoko",
        "display_name": "きょうこ",
        "icon_url": null
      }
    }
  }
}
```

## GET /api/v1/g/:group_id/t/:id/edit
Success.

### Example

#### Request
```
GET /api/v1/g/315/t/49/edit?name=hoge HTTP/1.1
Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
Authorization: Token token="d47196d39bc7514202fc6041bf8b9076fa70ee8b2c16a9d4e110e1b2890745a3d8a1b0bfa80f4900"
Content-Length: 0
Content-Type: application/x-www-form-urlencoded
Host: www.example.com
```

#### Response
```
HTTP/1.1 200
Cache-Control: max-age=0, private, must-revalidate
Content-Length: 155
Content-Type: application/json; charset=utf-8
ETag: W/"5851c917707e1e1c2c0019133f8db047"
X-Content-Type-Options: nosniff
X-Frame-Options: SAMEORIGIN
X-Request-Id: c23e167b-744d-4856-a43d-ceb4256fede1
X-Runtime: 0.042099
X-XSS-Protection: 1; mode=block

{
  "topic": {
    "id": 49,
    "name": "hoge",
    "idea_max_num": 100,
    "build_user": {
      "id": 158,
      "profile": {
        "display_id": "kyoko",
        "display_name": "きょうこ",
        "icon_url": null
      }
    }
  }
}
```
