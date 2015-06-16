## GET /api/v1/g
Success.

### Example

#### Request
```
GET /api/v1/g HTTP/1.1
Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
Authorization: Token token="eb702eb9e0e2b3458ba29bf0717fc4a2349a81b84a68e0af3eb014e986a90f82bc93e7bc58a60f40"
Content-Length: 0
Content-Type: application/x-www-form-urlencoded
Host: www.example.com
```

#### Response
```
HTTP/1.1 200
Cache-Control: max-age=0, private, must-revalidate
Content-Length: 882
Content-Type: application/json; charset=utf-8
ETag: W/"76058fcb76a70bd0d2414dfa60454641"
X-Content-Type-Options: nosniff
X-Frame-Options: SAMEORIGIN
X-Request-Id: be6c6c0c-3cb9-451c-9d9d-2d9a51c4752e
X-Runtime: 0.073899
X-XSS-Protection: 1; mode=block

{
  "groups": [
    {
      "id": 889,
      "name": "Senior Operations Producer",
      "membar_max_num": 10,
      "topic_max_num": 100
    },
    {
      "id": 890,
      "name": "Dynamic Creative Manager",
      "membar_max_num": 10,
      "topic_max_num": 100
    },
    {
      "id": 891,
      "name": "Human Optimization Executive",
      "membar_max_num": 10,
      "topic_max_num": 100
    },
    {
      "id": 892,
      "name": "Dynamic Optimization Strategist",
      "membar_max_num": 10,
      "topic_max_num": 100
    },
    {
      "id": 893,
      "name": "Forward Solutions Consultant",
      "membar_max_num": 10,
      "topic_max_num": 100
    },
    {
      "id": 894,
      "name": "Regional Factors Designer",
      "membar_max_num": 10,
      "topic_max_num": 100
    },
    {
      "id": 895,
      "name": "Dynamic Interactions Liason",
      "membar_max_num": 10,
      "topic_max_num": 100
    },
    {
      "id": 896,
      "name": "Global Metrics Analyst",
      "membar_max_num": 10,
      "topic_max_num": 100
    },
    {
      "id": 897,
      "name": "Corporate Metrics Analyst",
      "membar_max_num": 10,
      "topic_max_num": 100
    },
    {
      "id": 898,
      "name": "Human Mobility Associate",
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
Authorization: Token token="d1f0bda42844d908017c67cf95da90cb63db01324b460865aa615300ca4bee2b7418f9ebb8a1911a"
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
ETag: W/"9d43d118a5ce3b2a8db335b3cc785dba"
X-Content-Type-Options: nosniff
X-Frame-Options: SAMEORIGIN
X-Request-Id: 712f9d64-9b5f-4458-ba8d-fb8bf9f9505b
X-Runtime: 0.027991
X-XSS-Protection: 1; mode=block

{
  "id": 899,
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
GET /api/v1/g/900/edit?name=foo HTTP/1.1
Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
Authorization: Token token="b0cb0e754795f45d2be956b3745949598adfb0076e9d45ec13ed09074933073538cf556217b3152e"
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
ETag: W/"186744955d591673c51ca7b468c8fb63"
X-Content-Type-Options: nosniff
X-Frame-Options: SAMEORIGIN
X-Request-Id: 89e2dc26-7157-499a-8754-00e448d3ef2c
X-Runtime: 0.051881
X-XSS-Protection: 1; mode=block

{
  "id": 900,
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
GET /api/v1/g/901/detail HTTP/1.1
Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
Authorization: Token token="27a5a7961a328378cea621f2c1e7f4f300d94d61bf39f8d331694ac66339161c012781a5b3ed217d"
Content-Length: 0
Content-Type: application/x-www-form-urlencoded
Host: www.example.com
```

#### Response
```
HTTP/1.1 200
Cache-Control: max-age=0, private, must-revalidate
Content-Length: 517
Content-Type: application/json; charset=utf-8
ETag: W/"c5331eebd80cfab48acd1c5be0387b73"
X-Content-Type-Options: nosniff
X-Frame-Options: SAMEORIGIN
X-Request-Id: a8b866c0-ee77-4df4-a802-6eda9fd957b2
X-Runtime: 0.067881
X-XSS-Protection: 1; mode=block

{
  "id": 901,
  "name": "District Brand Supervisor",
  "membar_max_num": 10,
  "topic_max_num": 100,
  "group_members": [
    {
      "id": 947,
      "role": "owner",
      "status": "joining",
      "user": {
        "id": 557,
        "profile": {
          "display_id": "alexzander",
          "display_name": "吉舎 和佳奈",
          "icon_url": "http://robohash.org/totaminventoreet.png?size=300x300"
        }
      }
    },
    {
      "id": 948,
      "role": "member",
      "status": "inviting",
      "user": {
        "id": 558,
        "profile": {
          "display_id": "rocky_mccullough",
          "display_name": "高須賀 長武",
          "icon_url": "http://robohash.org/iustodistinctioqui.png?size=300x300"
        }
      }
    }
  ]
}
```
