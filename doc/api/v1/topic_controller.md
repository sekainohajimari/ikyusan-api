## GET /api/v1/g/:group_id/t
Success.

### Example

#### Request
```
GET /api/v1/g/548/t HTTP/1.1
Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
Authorization: Token token="76ddda34ddff7dcab7a942c2ef953b1085dee79814634e95533331bf976fb332ca898e2522d087ff"
Content-Length: 0
Content-Type: application/x-www-form-urlencoded
Host: www.example.com
```

#### Response
```
HTTP/1.1 200
Cache-Control: max-age=0, private, must-revalidate
Content-Length: 154
Content-Type: application/json; charset=utf-8
ETag: W/"7b84fbf93d2b6f2a8cb39e3fe98fc62d"
X-Content-Type-Options: nosniff
X-Frame-Options: SAMEORIGIN
X-Request-Id: 9e7df576-b56e-4978-9e92-09711a0615bb
X-Runtime: 0.042835
X-XSS-Protection: 1; mode=block

{
  "topics": [
    {
      "id": 197,
      "name": "topic_1",
      "idea_max_num": 100,
      "build_user": {
        "id": 338,
        "profile": {
          "display_id": "tom",
          "display_name": "ボブ",
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
POST /api/v1/g/549/t HTTP/1.1
Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
Authorization: Token token="412de480720e4f1ede7d69362cff532200084a79f59b649e7cdee778c0a6ee4d0bf3436e6fe08bd4"
Content-Length: 9
Content-Type: application/x-www-form-urlencoded
Host: www.example.com

name=hoge
```

#### Response
```
HTTP/1.1 200
Cache-Control: max-age=0, private, must-revalidate
Content-Length: 154
Content-Type: application/json; charset=utf-8
ETag: W/"d4ff941c5814569d64646a2135c57a23"
X-Content-Type-Options: nosniff
X-Frame-Options: SAMEORIGIN
X-Request-Id: 3230152d-3ecc-4052-844d-1a1e123dd054
X-Runtime: 0.035188
X-XSS-Protection: 1; mode=block

{
  "topic": {
    "id": 199,
    "name": "hoge",
    "idea_max_num": 100,
    "build_user": {
      "id": 339,
      "profile": {
        "display_id": "bob",
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
GET /api/v1/g/550/t/200/edit?name=hoge HTTP/1.1
Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
Authorization: Token token="3928e20078ca03d18681e2fe66af408714d7f9792a37a5ee4137c7a8829be05e41c696f7366e3946"
Content-Length: 0
Content-Type: application/x-www-form-urlencoded
Host: www.example.com
```

#### Response
```
HTTP/1.1 200
Cache-Control: max-age=0, private, must-revalidate
Content-Length: 148
Content-Type: application/json; charset=utf-8
ETag: W/"40e93b90b4fbf3c2bc73b6cadf405376"
X-Content-Type-Options: nosniff
X-Frame-Options: SAMEORIGIN
X-Request-Id: 9ab78b6b-4f1a-4444-9fee-853ef1b3dba4
X-Runtime: 0.020233
X-XSS-Protection: 1; mode=block

{
  "topic": {
    "id": 200,
    "name": "hoge",
    "idea_max_num": 100,
    "build_user": {
      "id": 340,
      "profile": {
        "display_id": "tom",
        "display_name": "ボブ",
        "icon_url": null
      }
    }
  }
}
```
