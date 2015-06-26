## GET /api/v1/g
Success.

### Example

#### Request
```
GET /api/v1/g HTTP/1.1
Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
Authorization: Token token="45b6c36ab551b63d2c389490a1438261dd75cbef65cf150d9481b88baae277c9c7bceafb7e8a078a"
Content-Length: 0
Content-Type: application/x-www-form-urlencoded
Host: www.example.com
```

#### Response
```
HTTP/1.1 200
Cache-Control: max-age=0, private, must-revalidate
Content-Length: 878
Content-Type: application/json; charset=utf-8
ETag: W/"33b9b6b68652feded054ad404f260948"
X-Content-Type-Options: nosniff
X-Frame-Options: SAMEORIGIN
X-Request-Id: 339c8ff4-84fc-472b-bd90-fe8de83bb848
X-Runtime: 0.049060
X-XSS-Protection: 1; mode=block

{
  "groups": [
    {
      "id": 45,
      "name": "International Communications Designer",
      "membar_max_num": 10,
      "topic_max_num": 100
    },
    {
      "id": 46,
      "name": "National Mobility Orchestrator",
      "membar_max_num": 10,
      "topic_max_num": 100
    },
    {
      "id": 47,
      "name": "Central Identity Assistant",
      "membar_max_num": 10,
      "topic_max_num": 100
    },
    {
      "id": 48,
      "name": "Lead Research Executive",
      "membar_max_num": 10,
      "topic_max_num": 100
    },
    {
      "id": 49,
      "name": "Lead Configuration Engineer",
      "membar_max_num": 10,
      "topic_max_num": 100
    },
    {
      "id": 50,
      "name": "Lead Division Supervisor",
      "membar_max_num": 10,
      "topic_max_num": 100
    },
    {
      "id": 51,
      "name": "Corporate Factors Planner",
      "membar_max_num": 10,
      "topic_max_num": 100
    },
    {
      "id": 52,
      "name": "Customer Usability Manager",
      "membar_max_num": 10,
      "topic_max_num": 100
    },
    {
      "id": 53,
      "name": "Lead Directives Planner",
      "membar_max_num": 10,
      "topic_max_num": 100
    },
    {
      "id": 54,
      "name": "Legacy Security Assistant",
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
Authorization: Token token="cfcc7b3442ed2430c30d331b088c7d9599bc4d74ac49f973ce99bcec581dbb5f4bce8a6d258a4f33"
Content-Length: 9
Content-Type: application/x-www-form-urlencoded
Host: www.example.com

name=hoge
```

#### Response
```
HTTP/1.1 200
Cache-Control: max-age=0, private, must-revalidate
Content-Length: 63
Content-Type: application/json; charset=utf-8
ETag: W/"0590fca4a503f64a6b48eb2b5dd9f0ea"
X-Content-Type-Options: nosniff
X-Frame-Options: SAMEORIGIN
X-Request-Id: 527a2657-8b58-4403-82ca-589336b0cc56
X-Runtime: 0.019497
X-XSS-Protection: 1; mode=block

{
  "id": 55,
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
GET /api/v1/g/56/edit?name=foo HTTP/1.1
Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
Authorization: Token token="340efbcd62f989464a55c989c7fef52ac9b80fe772f15423f10616c114d7108092d35858fe9d983c"
Content-Length: 0
Content-Type: application/x-www-form-urlencoded
Host: www.example.com
```

#### Response
```
HTTP/1.1 200
Cache-Control: max-age=0, private, must-revalidate
Content-Length: 62
Content-Type: application/json; charset=utf-8
ETag: W/"0e9ecaa3b674816f02c030067a7c7032"
X-Content-Type-Options: nosniff
X-Frame-Options: SAMEORIGIN
X-Request-Id: 69950b6c-5930-4705-8d85-30b28e48b5b5
X-Runtime: 0.020840
X-XSS-Protection: 1; mode=block

{
  "id": 56,
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
GET /api/v1/g/57/detail HTTP/1.1
Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
Authorization: Token token="da403bf38e76a6afdba61c1aa9e9eff82f96325f76b16db8b143f84e042da2813563b4724d71acce"
Content-Length: 0
Content-Type: application/x-www-form-urlencoded
Host: www.example.com
```

#### Response
```
HTTP/1.1 200
Cache-Control: max-age=0, private, must-revalidate
Content-Length: 502
Content-Type: application/json; charset=utf-8
ETag: W/"31ded3da917879137398780d1693d313"
X-Content-Type-Options: nosniff
X-Frame-Options: SAMEORIGIN
X-Request-Id: 8f8afc1c-b726-4187-83b6-65b157243940
X-Runtime: 0.053709
X-XSS-Protection: 1; mode=block

{
  "id": 57,
  "name": "International Response Planner",
  "membar_max_num": 10,
  "topic_max_num": 100,
  "group_members": [
    {
      "id": 57,
      "role": "owner",
      "status": "joining",
      "user": {
        "id": 81,
        "profile": {
          "display_id": "lou_nicolas",
          "display_name": "田和 沙知絵",
          "icon_url": "http://robohash.org/etautautem.png?size=300x300"
        }
      }
    },
    {
      "id": 58,
      "role": "member",
      "status": "inviting",
      "user": {
        "id": 82,
        "profile": {
          "display_id": "theodora.grady",
          "display_name": "小桑 実可",
          "icon_url": "http://robohash.org/idexpeditaquo.png?size=300x300"
        }
      }
    }
  ]
}
```
