## GET /api/v1/g/:group_id/t
Success.

### Example

#### Request
```
GET /api/v1/g/552/t HTTP/1.1
Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
Authorization: Token token="3a1c2ab8f5f3a04f77508040c34a464752059af14b2783f9ac18e3ffb866abde315f9b159c81b515"
Content-Length: 0
Content-Type: application/x-www-form-urlencoded
Host: www.example.com
```

#### Response
```
HTTP/1.1 200
Cache-Control: max-age=0, private, must-revalidate
Content-Length: 233
Content-Type: application/json; charset=utf-8
ETag: W/"0a104a257963c43ccb6dd386716e8f54"
X-Content-Type-Options: nosniff
X-Frame-Options: SAMEORIGIN
X-Request-Id: 4dc06491-fa25-4555-9a31-bb2c44499f9f
X-Runtime: 0.030055
X-XSS-Protection: 1; mode=block

{
  "topics": [
    {
      "id": 241,
      "name": "topic_1",
      "idea_max_num": 100,
      "build_user": {
        "id": 635,
        "profile": {
          "display_id": "damian.mclaughlin",
          "display_name": "五十里 保弘",
          "icon_url": "http://robohash.org/iustoeligendidolores.png?size=300x300"
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
POST /api/v1/g/553/t HTTP/1.1
Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
Authorization: Token token="4e7a854d759abfc6c289605859dbca62985d6e0ee288e69f7efaae180f7875744f85470417f4522d"
Content-Length: 9
Content-Type: application/x-www-form-urlencoded
Host: www.example.com

name=hoge
```

#### Response
```
HTTP/1.1 201
Cache-Control: max-age=0, private, must-revalidate
Content-Length: 214
Content-Type: application/json; charset=utf-8
ETag: W/"75ec11d57237ec7121becd5fe280317f"
X-Content-Type-Options: nosniff
X-Frame-Options: SAMEORIGIN
X-Request-Id: 8b46ec4a-904f-411a-9099-e4a9a2b436e6
X-Runtime: 0.015726
X-XSS-Protection: 1; mode=block

{
  "topic": {
    "id": 243,
    "name": "hoge",
    "idea_max_num": 100,
    "build_user": {
      "id": 636,
      "profile": {
        "display_id": "chasity.wiza",
        "display_name": "百田 鈞",
        "icon_url": "http://robohash.org/quidemautaccusamus.png?size=300x300"
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
GET /api/v1/g/554/t/244/edit?name=hoge HTTP/1.1
Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
Authorization: Token token="1f021bd2a0183b1263a3dd69e839ca89531f8c10fe66a6cffe96f7421283ff8d3328c3103af31da1"
Content-Length: 0
Content-Type: application/x-www-form-urlencoded
Host: www.example.com
```

#### Response
```
HTTP/1.1 200
Cache-Control: max-age=0, private, must-revalidate
Content-Length: 223
Content-Type: application/json; charset=utf-8
ETag: W/"90d436b324c891cf7ed8e7d7e01b3879"
X-Content-Type-Options: nosniff
X-Frame-Options: SAMEORIGIN
X-Request-Id: 49bed2cb-6bde-449e-bcf3-564255f87256
X-Runtime: 0.018725
X-XSS-Protection: 1; mode=block

{
  "topic": {
    "id": 244,
    "name": "hoge",
    "idea_max_num": 100,
    "build_user": {
      "id": 637,
      "profile": {
        "display_id": "sylvester_lowe",
        "display_name": "美名口 優希",
        "icon_url": "http://robohash.org/autperferendisnihil.png?size=300x300"
      }
    }
  }
}
```
