## GET /api/v1/g
Success.

### Example

#### Request
```
GET /api/v1/g HTTP/1.1
Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
Authorization: Token token="6c4a5217a51c6fba97031c6f7ae87d60f3b62ee7d3a6add630d9517b563ecda71ab9fb901a725806"
Content-Length: 0
Content-Type: application/x-www-form-urlencoded
Host: www.example.com
```

#### Response
```
HTTP/1.1 200
Cache-Control: max-age=0, private, must-revalidate
Content-Length: 1593
Content-Type: application/json; charset=utf-8
ETag: W/"5c028118124b70bdb95790dc8993be15"
X-Content-Type-Options: nosniff
X-Frame-Options: SAMEORIGIN
X-Request-Id: 98ef1dda-182f-455d-9ea3-5d6bd8987f1d
X-Runtime: 0.081498
X-XSS-Protection: 1; mode=block

{
  "groups": [
    {
      "id": 105,
      "name": "Global Marketing Executive",
      "membar_max_num": 10,
      "topic_max_num": 100,
      "color_id": 1,
      "own_group_member": {
        "status": "joining",
        "role": "owner"
      }
    },
    {
      "id": 106,
      "name": "Global Operations Agent",
      "membar_max_num": 10,
      "topic_max_num": 100,
      "color_id": 1,
      "own_group_member": {
        "status": "joining",
        "role": "owner"
      }
    },
    {
      "id": 107,
      "name": "Dynamic Integration Administrator",
      "membar_max_num": 10,
      "topic_max_num": 100,
      "color_id": 1,
      "own_group_member": {
        "status": "joining",
        "role": "owner"
      }
    },
    {
      "id": 108,
      "name": "Customer Infrastructure Orchestrator",
      "membar_max_num": 10,
      "topic_max_num": 100,
      "color_id": 1,
      "own_group_member": {
        "status": "joining",
        "role": "owner"
      }
    },
    {
      "id": 109,
      "name": "Corporate Creative Producer",
      "membar_max_num": 10,
      "topic_max_num": 100,
      "color_id": 1,
      "own_group_member": {
        "status": "joining",
        "role": "owner"
      }
    },
    {
      "id": 110,
      "name": "Future Creative Designer",
      "membar_max_num": 10,
      "topic_max_num": 100,
      "color_id": 1,
      "own_group_member": {
        "status": "joining",
        "role": "owner"
      }
    },
    {
      "id": 111,
      "name": "Dynamic Tactics Executive",
      "membar_max_num": 10,
      "topic_max_num": 100,
      "color_id": 1,
      "own_group_member": {
        "status": "joining",
        "role": "owner"
      }
    },
    {
      "id": 112,
      "name": "International Paradigm Analyst",
      "membar_max_num": 10,
      "topic_max_num": 100,
      "color_id": 1,
      "own_group_member": {
        "status": "joining",
        "role": "owner"
      }
    },
    {
      "id": 113,
      "name": "Principal Configuration Strategist",
      "membar_max_num": 10,
      "topic_max_num": 100,
      "color_id": 1,
      "own_group_member": {
        "status": "joining",
        "role": "owner"
      }
    },
    {
      "id": 114,
      "name": "Regional Accountability Developer",
      "membar_max_num": 10,
      "topic_max_num": 100,
      "color_id": 1,
      "own_group_member": {
        "status": "joining",
        "role": "owner"
      }
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
Authorization: Token token="b59241fd26c131196896d43f4ce7d8b8bb0b9b67cf321701e988293b43f44dd1df4d752406e1386b"
Content-Length: 20
Content-Type: application/x-www-form-urlencoded
Host: www.example.com

name=hoge&color_id=3
```

#### Response
```
HTTP/1.1 201
Cache-Control: max-age=0, private, must-revalidate
Content-Length: 77
Content-Type: application/json; charset=utf-8
ETag: W/"16fa384b60b1419d35b61264174ac8cc"
X-Content-Type-Options: nosniff
X-Frame-Options: SAMEORIGIN
X-Request-Id: 61abc9a2-a54f-4828-82ec-ae0551fd4a3d
X-Runtime: 0.014771
X-XSS-Protection: 1; mode=block

{
  "id": 115,
  "name": "hoge",
  "membar_max_num": 10,
  "topic_max_num": 100,
  "color_id": 3
}
```

## GET /api/v1/g/:id/edit
Success.

### Example

#### Request
```
GET /api/v1/g/116/edit?name=foo&color_id=4 HTTP/1.1
Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
Authorization: Token token="7b7c3bcf249f3b57507bdba0e3c4ff25aa2e52c9dffe098e5d23f38c7fc967082c247f4dac8f93e4"
Content-Length: 0
Content-Type: application/x-www-form-urlencoded
Host: www.example.com
```

#### Response
```
HTTP/1.1 200
Cache-Control: max-age=0, private, must-revalidate
Content-Length: 76
Content-Type: application/json; charset=utf-8
ETag: W/"ff390bb20de187387325762be7525861"
X-Content-Type-Options: nosniff
X-Frame-Options: SAMEORIGIN
X-Request-Id: ca9dcd09-58c6-4fd6-8e40-1f8e5f52507c
X-Runtime: 0.027874
X-XSS-Protection: 1; mode=block

{
  "id": 116,
  "name": "foo",
  "membar_max_num": 10,
  "topic_max_num": 100,
  "color_id": 4
}
```

## GET /api/v1/g/:id/detail
Success.

### Example

#### Request
```
GET /api/v1/g/117/detail HTTP/1.1
Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
Authorization: Token token="8110508f88fd3c820715681c530ec21e455caa74a9cae6840017e22a6b2ae63d281ed524936e4023"
Content-Length: 0
Content-Type: application/x-www-form-urlencoded
Host: www.example.com
```

#### Response
```
HTTP/1.1 200
Cache-Control: max-age=0, private, must-revalidate
Content-Length: 514
Content-Type: application/json; charset=utf-8
ETag: W/"242dbfe231264b032fc2754e1d66189d"
X-Content-Type-Options: nosniff
X-Frame-Options: SAMEORIGIN
X-Request-Id: a839c7a3-2df9-43ee-8db5-3cbb650ab75e
X-Runtime: 0.047811
X-XSS-Protection: 1; mode=block

{
  "id": 117,
  "name": "Central Solutions Executive",
  "membar_max_num": 10,
  "topic_max_num": 100,
  "color_id": 1,
  "group_members": [
    {
      "id": 123,
      "role": "owner",
      "status": "joining",
      "user": {
        "id": 71,
        "profile": {
          "display_id": "eleonore",
          "display_name": "厚見 博俊",
          "icon_url": "http://robohash.org/etminusnam.png?size=300x300"
        }
      }
    },
    {
      "id": 124,
      "role": "member",
      "status": "inviting",
      "user": {
        "id": 72,
        "profile": {
          "display_id": "dillon_jacobi",
          "display_name": "黒森 泰信",
          "icon_url": "http://robohash.org/ipsumreruminventore.png?size=300x300"
        }
      }
    }
  ]
}
```
