## GET /api/v1/g
Success.

### Example

#### Request
```
GET /api/v1/g HTTP/1.1
Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
Authorization: Token token="315b0fed6bf30c2d7925acb8b576c5436751db568ec925c069783259b656dd6b533827feffc44911"
Content-Length: 0
Content-Type: application/x-www-form-urlencoded
Host: www.example.com
```

#### Response
```
HTTP/1.1 200
Cache-Control: max-age=0, private, must-revalidate
Content-Length: 693
Content-Type: application/json; charset=utf-8
ETag: W/"a7e76f691c7e649d8ba8358492146f17"
X-Content-Type-Options: nosniff
X-Frame-Options: SAMEORIGIN
X-Request-Id: 742497d0-3e81-4349-bf8f-6bca9ecdf0b2
X-Runtime: 0.046757
X-XSS-Protection: 1; mode=block

{
  "groups": [
    {
      "id": 168,
      "name": "group_1",
      "membar_max_num": 10,
      "topic_max_num": 100
    },
    {
      "id": 169,
      "name": "group_2",
      "membar_max_num": 10,
      "topic_max_num": 100
    },
    {
      "id": 170,
      "name": "group_3",
      "membar_max_num": 10,
      "topic_max_num": 100
    },
    {
      "id": 171,
      "name": "group_4",
      "membar_max_num": 10,
      "topic_max_num": 100
    },
    {
      "id": 172,
      "name": "group_5",
      "membar_max_num": 10,
      "topic_max_num": 100
    },
    {
      "id": 173,
      "name": "group_6",
      "membar_max_num": 10,
      "topic_max_num": 100
    },
    {
      "id": 174,
      "name": "group_7",
      "membar_max_num": 10,
      "topic_max_num": 100
    },
    {
      "id": 175,
      "name": "group_8",
      "membar_max_num": 10,
      "topic_max_num": 100
    },
    {
      "id": 176,
      "name": "group_9",
      "membar_max_num": 10,
      "topic_max_num": 100
    },
    {
      "id": 177,
      "name": "group_10",
      "membar_max_num": 10,
      "topic_max_num": 100
    }
  ]
}
```

## POST /api/v1/g
Success.

### Example

#### Request
```
POST /api/v1/g HTTP/1.1
Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
Authorization: Token token="50475b4d25918d0b3c1f5af3f8521fd10bd327b907e3d865efb82024dd296cd8ea5d8fea33a570a3"
Content-Length: 9
Content-Type: application/x-www-form-urlencoded
Host: www.example.com

name=hoge
```

#### Response
```
HTTP/1.1 200
Cache-Control: max-age=0, private, must-revalidate
Content-Length: 64
Content-Type: application/json; charset=utf-8
ETag: W/"c060c13110d3629c19a62ba6f31a397e"
X-Content-Type-Options: nosniff
X-Frame-Options: SAMEORIGIN
X-Request-Id: fcba60e2-6c6a-4c1b-8c24-5ecfd62627e4
X-Runtime: 0.019171
X-XSS-Protection: 1; mode=block

{
  "id": 178,
  "name": "hoge",
  "membar_max_num": 10,
  "topic_max_num": 100
}
```

## GET /api/v1/g/:id/edit
Success.

### Example

#### Request
```
GET /api/v1/g/179/edit?name=foo HTTP/1.1
Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
Authorization: Token token="cbe6fba0b0e90053692a379ab9f48a2e8dd5859116721da2debec824946b9b93414840518555c3c2"
Content-Length: 0
Content-Type: application/x-www-form-urlencoded
Host: www.example.com
```

#### Response
```
HTTP/1.1 200
Cache-Control: max-age=0, private, must-revalidate
Content-Length: 63
Content-Type: application/json; charset=utf-8
ETag: W/"f46553e21c2d4285f002b9d88e1885fc"
X-Content-Type-Options: nosniff
X-Frame-Options: SAMEORIGIN
X-Request-Id: 063055fc-12a6-49cb-8726-cedbfa1dbc8f
X-Runtime: 0.031372
X-XSS-Protection: 1; mode=block

{
  "id": 179,
  "name": "foo",
  "membar_max_num": 10,
  "topic_max_num": 100
}
```

## GET /api/v1/g/:id/detail
Success.

### Example

#### Request
```
GET /api/v1/g/180/detail HTTP/1.1
Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
Authorization: Token token="aede37980e371cb2d2e04f0d39c80929a11fa2175522cacd2f4fa721f651f3b6823b9075f681744f"
Content-Length: 0
Content-Type: application/x-www-form-urlencoded
Host: www.example.com
```

#### Response
```
HTTP/1.1 200
Cache-Control: max-age=0, private, must-revalidate
Content-Length: 370
Content-Type: application/json; charset=utf-8
ETag: W/"7929f83ac1f9eeedaa285a9699a89826"
X-Content-Type-Options: nosniff
X-Frame-Options: SAMEORIGIN
X-Request-Id: a412eaa4-5d41-488e-9171-bfbc008d68bf
X-Runtime: 0.042491
X-XSS-Protection: 1; mode=block

{
  "id": 180,
  "name": "group_12",
  "membar_max_num": 10,
  "topic_max_num": 100,
  "group_members": [
    {
      "id": 193,
      "role": "owner",
      "status": "joining",
      "user": {
        "id": 69,
        "profile": {
          "display_id": "kyoko",
          "display_name": "きょうこ",
          "icon_url": null
        }
      }
    },
    {
      "id": 194,
      "role": "member",
      "status": "inviting",
      "user": {
        "id": 70,
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
