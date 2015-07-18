## GET /api/v1/g
Success.

### Example

#### Request
```
GET /api/v1/g HTTP/1.1
Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
Authorization: Token token="d634f8bce14f694ac0b7b0bc3cdee0b424a6a23b9b5806da3eb11e7aa72e017f6af6800e6e383097"
Content-Length: 0
Content-Type: application/x-www-form-urlencoded
Host: www.example.com
```

#### Response
```
HTTP/1.1 200
Cache-Control: max-age=0, private, must-revalidate
Content-Length: 1732
Content-Type: application/json; charset=utf-8
ETag: W/"b5b7f3e919defe697ace6b690c9988c5"
X-Content-Type-Options: nosniff
X-Frame-Options: SAMEORIGIN
X-Request-Id: 20b01569-983f-4c41-995d-6c91025e3ed2
X-Runtime: 0.090799
X-XSS-Protection: 1; mode=block

{
  "groups": [
    {
      "id": 158,
      "name": "Internal Brand Representative",
      "membar_max_num": 10,
      "topic_max_num": 100,
      "own_group_member": {
        "status": "joining",
        "role": "owner"
      },
      "color": {
        "color_code_id": 1
      }
    },
    {
      "id": 159,
      "name": "Lead Data Technician",
      "membar_max_num": 10,
      "topic_max_num": 100,
      "own_group_member": {
        "status": "joining",
        "role": "owner"
      },
      "color": {
        "color_code_id": 1
      }
    },
    {
      "id": 160,
      "name": "Internal Communications Executive",
      "membar_max_num": 10,
      "topic_max_num": 100,
      "own_group_member": {
        "status": "joining",
        "role": "owner"
      },
      "color": {
        "color_code_id": 1
      }
    },
    {
      "id": 161,
      "name": "Global Implementation Officer",
      "membar_max_num": 10,
      "topic_max_num": 100,
      "own_group_member": {
        "status": "joining",
        "role": "owner"
      },
      "color": {
        "color_code_id": 1
      }
    },
    {
      "id": 162,
      "name": "Future Creative Representative",
      "membar_max_num": 10,
      "topic_max_num": 100,
      "own_group_member": {
        "status": "joining",
        "role": "owner"
      },
      "color": {
        "color_code_id": 1
      }
    },
    {
      "id": 163,
      "name": "Principal Optimization Manager",
      "membar_max_num": 10,
      "topic_max_num": 100,
      "own_group_member": {
        "status": "joining",
        "role": "owner"
      },
      "color": {
        "color_code_id": 1
      }
    },
    {
      "id": 164,
      "name": "Legacy Identity Developer",
      "membar_max_num": 10,
      "topic_max_num": 100,
      "own_group_member": {
        "status": "joining",
        "role": "owner"
      },
      "color": {
        "color_code_id": 1
      }
    },
    {
      "id": 165,
      "name": "International Directives Technician",
      "membar_max_num": 10,
      "topic_max_num": 100,
      "own_group_member": {
        "status": "joining",
        "role": "owner"
      },
      "color": {
        "color_code_id": 1
      }
    },
    {
      "id": 166,
      "name": "Product Web Officer",
      "membar_max_num": 10,
      "topic_max_num": 100,
      "own_group_member": {
        "status": "joining",
        "role": "owner"
      },
      "color": {
        "color_code_id": 1
      }
    },
    {
      "id": 167,
      "name": "International Operations Agent",
      "membar_max_num": 10,
      "topic_max_num": 100,
      "own_group_member": {
        "status": "joining",
        "role": "owner"
      },
      "color": {
        "color_code_id": 1
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
Authorization: Token token="066a3fab0b79585e441a56545a206cb1f010cc7340452485c8512c06790895a54825e9387763379d"
Content-Length: 25
Content-Type: application/x-www-form-urlencoded
Host: www.example.com

name=hoge&color_code_id=3
```

#### Response
```
HTTP/1.1 201
Cache-Control: max-age=0, private, must-revalidate
Content-Length: 92
Content-Type: application/json; charset=utf-8
ETag: W/"a9ee2761bd821b84e495875d14ff7e49"
X-Content-Type-Options: nosniff
X-Frame-Options: SAMEORIGIN
X-Request-Id: fe909795-0ae0-4a8d-9967-5d61367341ec
X-Runtime: 0.024495
X-XSS-Protection: 1; mode=block

{
  "id": 168,
  "name": "hoge",
  "membar_max_num": 10,
  "topic_max_num": 100,
  "color": {
    "color_code_id": 3
  }
}
```

## GET /api/v1/g/:id/edit
Success.

### Example

#### Request
```
GET /api/v1/g/169/edit?name=foo&color_code_id=4 HTTP/1.1
Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
Authorization: Token token="4cefface70295df1d4fb836990a9023ee3fd3bb3fdf3b2aa43db31d2f2f8145a2a7cdab2089fde1f"
Content-Length: 0
Content-Type: application/x-www-form-urlencoded
Host: www.example.com
```

#### Response
```
HTTP/1.1 200
Cache-Control: max-age=0, private, must-revalidate
Content-Length: 91
Content-Type: application/json; charset=utf-8
ETag: W/"eb993ae054f3be7382d81828da2556a8"
X-Content-Type-Options: nosniff
X-Frame-Options: SAMEORIGIN
X-Request-Id: 4e2bc8ee-1684-49fc-a0b0-71b75bb7babe
X-Runtime: 0.029119
X-XSS-Protection: 1; mode=block

{
  "id": 169,
  "name": "foo",
  "membar_max_num": 10,
  "topic_max_num": 100,
  "color": {
    "color_code_id": 4
  }
}
```

## GET /api/v1/g/:id/detail
Success.

### Example

#### Request
```
GET /api/v1/g/170/detail HTTP/1.1
Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
Authorization: Token token="c90094db238dce8df43cd0137b48bb9af781d2dd9cd58a5c0762e52b26080e3028217c9df0780107"
Content-Length: 0
Content-Type: application/x-www-form-urlencoded
Host: www.example.com
```

#### Response
```
HTTP/1.1 200
Cache-Control: max-age=0, private, must-revalidate
Content-Length: 535
Content-Type: application/json; charset=utf-8
ETag: W/"24da20ba36981f736821134a1fedaa38"
X-Content-Type-Options: nosniff
X-Frame-Options: SAMEORIGIN
X-Request-Id: 2eee261c-a96d-488a-8ae9-6347fc781737
X-Runtime: 0.043465
X-XSS-Protection: 1; mode=block

{
  "id": 170,
  "name": "Human Markets Executive",
  "membar_max_num": 10,
  "topic_max_num": 100,
  "color": {
    "color_code_id": 1
  },
  "group_members": [
    {
      "id": 177,
      "role": "owner",
      "status": "joining",
      "user": {
        "id": 133,
        "profile": {
          "display_id": "cheyanne_witting",
          "display_name": "税所 禎",
          "icon_url": "http://robohash.org/cumquequiaveritatis.png?size=300x300"
        }
      }
    },
    {
      "id": 178,
      "role": "member",
      "status": "inviting",
      "user": {
        "id": 134,
        "profile": {
          "display_id": "kellie",
          "display_name": "佐保 段治郎",
          "icon_url": "http://robohash.org/quoplaceatimpedit.png?size=300x300"
        }
      }
    }
  ]
}
```
