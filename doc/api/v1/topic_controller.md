## GET /api/v1/g/:group_id/t
Success.

### Example

#### Request
```
GET /api/v1/g/64/t HTTP/1.1
Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
Authorization: Token token="a295f4612a3b8f4740c27b0f8b9dd501d8f76d4ecc22d3f66852f84771bd866e973a7bb7876c19cc"
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
ETag: W/"51f0d5a1e96aa4eb514a8b6d0bf354c0"
X-Content-Type-Options: nosniff
X-Frame-Options: SAMEORIGIN
X-Request-Id: ae365385-32c5-4e4e-ae3b-305b5674eed9
X-Runtime: 0.026518
X-XSS-Protection: 1; mode=block

{
  "topics": [
    {
      "id": 51,
      "name": "topic_1",
      "idea_max_num": 100,
      "build_user": {
        "id": 96,
        "profile": {
          "display_id": "dejuan.king",
          "display_name": "仲恭 右之助",
          "icon_url": "http://robohash.org/facerequipariatur.png?size=300x300"
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
POST /api/v1/g/65/t HTTP/1.1
Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
Authorization: Token token="1f2acf57e122beac8f9518277efaf5a1e512bef54755638db957ddb4a1f7d5ba727111bb2c0b2aa3"
Content-Length: 9
Content-Type: application/x-www-form-urlencoded
Host: www.example.com

name=hoge
```

#### Response
```
HTTP/1.1 200
Cache-Control: max-age=0, private, must-revalidate
Content-Length: 203
Content-Type: application/json; charset=utf-8
ETag: W/"12252e02280c3e32966674684b9b3c67"
X-Content-Type-Options: nosniff
X-Frame-Options: SAMEORIGIN
X-Request-Id: 0fee5a3e-db8d-4ffd-812a-579dca250e2e
X-Runtime: 0.017259
X-XSS-Protection: 1; mode=block

{
  "topic": {
    "id": 53,
    "name": "hoge",
    "idea_max_num": 100,
    "build_user": {
      "id": 97,
      "profile": {
        "display_id": "jonas.torp",
        "display_name": "井堀 晴一",
        "icon_url": "http://robohash.org/quiainab.png?size=300x300"
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
GET /api/v1/g/66/t/54/edit?name=hoge HTTP/1.1
Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
Authorization: Token token="ebebb73b549d2469da781adc4a94d55c4e5c94be9b17cc655a388fc570630de86ec503dd05457651"
Content-Length: 0
Content-Type: application/x-www-form-urlencoded
Host: www.example.com
```

#### Response
```
HTTP/1.1 200
Cache-Control: max-age=0, private, must-revalidate
Content-Length: 205
Content-Type: application/json; charset=utf-8
ETag: W/"a35b3754c59cf1a9be08639a139dbe6a"
X-Content-Type-Options: nosniff
X-Frame-Options: SAMEORIGIN
X-Request-Id: 4b0f9105-6bc2-45e3-8b85-7ccc1708b6f6
X-Runtime: 0.023883
X-XSS-Protection: 1; mode=block

{
  "topic": {
    "id": 54,
    "name": "hoge",
    "idea_max_num": 100,
    "build_user": {
      "id": 98,
      "profile": {
        "display_id": "vern.moen",
        "display_name": "各務 あき",
        "icon_url": "http://robohash.org/nemoinharum.png?size=300x300"
      }
    }
  }
}
```
