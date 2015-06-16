## GET /api/v1/g/:group_id/t
Success.

### Example

#### Request
```
GET /api/v1/g/906/t HTTP/1.1
Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
Authorization: Token token="8bb27a36340ac2534bf2b03daeceacfbb6b0dd7dc73f100a876973d7fe467b1d5e554f49ea2a4a6e"
Content-Length: 0
Content-Type: application/x-www-form-urlencoded
Host: www.example.com
```

#### Response
```
HTTP/1.1 200
Cache-Control: max-age=0, private, must-revalidate
Content-Length: 222
Content-Type: application/json; charset=utf-8
ETag: W/"4eaa94915c6b880eeeb85616a907fe4f"
X-Content-Type-Options: nosniff
X-Frame-Options: SAMEORIGIN
X-Request-Id: 9a50a791-ade0-4d15-b6db-364dedcea93a
X-Runtime: 0.032318
X-XSS-Protection: 1; mode=block

{
  "topics": [
    {
      "id": 257,
      "name": "topic_1",
      "idea_max_num": 100,
      "build_user": {
        "id": 568,
        "profile": {
          "display_id": "euna_walker",
          "display_name": "丹下 由可子",
          "icon_url": "http://robohash.org/eosvoluptatesut.png?size=300x300"
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
POST /api/v1/g/907/t HTTP/1.1
Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
Authorization: Token token="bba8b40affa7bfae0a23c76774aee7297b0107ffe8d40dde3fc57e9549c3ee8e5d10b410055a0a51"
Content-Length: 9
Content-Type: application/x-www-form-urlencoded
Host: www.example.com

name=hoge
```

#### Response
```
HTTP/1.1 200
Cache-Control: max-age=0, private, must-revalidate
Content-Length: 210
Content-Type: application/json; charset=utf-8
ETag: W/"6974bf1e1112b0b95fbf7d815a5ea381"
X-Content-Type-Options: nosniff
X-Frame-Options: SAMEORIGIN
X-Request-Id: 114a95f9-2ddf-4b0f-adc1-d8152182abf1
X-Runtime: 0.021089
X-XSS-Protection: 1; mode=block

{
  "topic": {
    "id": 259,
    "name": "hoge",
    "idea_max_num": 100,
    "build_user": {
      "id": 569,
      "profile": {
        "display_id": "eda",
        "display_name": "野本 義太夫",
        "icon_url": "http://robohash.org/molestiaesuntsint.png?size=300x300"
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
GET /api/v1/g/908/t/260/edit?name=hoge HTTP/1.1
Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
Authorization: Token token="f94956b8dfd4ae7cd94205ce838333e9a99c41771c6bf5c2d677693993d33953597cd11b9d7a8c63"
Content-Length: 0
Content-Type: application/x-www-form-urlencoded
Host: www.example.com
```

#### Response
```
HTTP/1.1 200
Cache-Control: max-age=0, private, must-revalidate
Content-Length: 218
Content-Type: application/json; charset=utf-8
ETag: W/"15b03cb6687c6733bb5d45a7c4a5e6ef"
X-Content-Type-Options: nosniff
X-Frame-Options: SAMEORIGIN
X-Request-Id: cf5b6cbf-67f5-4311-886b-4ebff076149f
X-Runtime: 0.030915
X-XSS-Protection: 1; mode=block

{
  "topic": {
    "id": 260,
    "name": "hoge",
    "idea_max_num": 100,
    "build_user": {
      "id": 570,
      "profile": {
        "display_id": "vincenza",
        "display_name": "木之元 摩子",
        "icon_url": "http://robohash.org/inventorequiadolorem.png?size=300x300"
      }
    }
  }
}
```
