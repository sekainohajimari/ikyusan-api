## GET /api/v1/g
Success.

### Example

#### Request
```
GET /api/v1/g HTTP/1.1
Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
Authorization: Token token="9eba93524312d44055c0f08d8ab9ee861496416925d7299a68113e96ff9e9905ef769ca331be5065"
Content-Length: 0
Content-Type: application/x-www-form-urlencoded
Host: www.example.com
```

#### Response
```
HTTP/1.1 200
Cache-Control: max-age=0, private, must-revalidate
Content-Length: 1729
Content-Type: application/json; charset=utf-8
ETag: W/"8d61e48bb002494e808677e1d4c2cf34"
X-Content-Type-Options: nosniff
X-Frame-Options: SAMEORIGIN
X-Request-Id: bb0baa02-c182-44b8-8449-b30a6f0465b8
X-Runtime: 0.100304
X-XSS-Protection: 1; mode=block

{
  "groups": [
    {
      "id": 727,
      "name": "Corporate Security Planner",
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
      "id": 728,
      "name": "Chief Metrics Architect",
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
      "id": 729,
      "name": "Customer Quality Director",
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
      "id": 730,
      "name": "District Security Director",
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
      "id": 731,
      "name": "Global Functionality Coordinator",
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
      "id": 732,
      "name": "Forward Markets Representative",
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
      "id": 733,
      "name": "National Infrastructure Strategist",
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
      "id": 734,
      "name": "Internal Response Associate",
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
      "id": 735,
      "name": "Dynamic Accounts Director",
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
      "id": 736,
      "name": "Forward Optimization Producer",
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
Authorization: Token token="542358ff7cdcad197d5af6cc2c471af960dc94600c56745922fb6b27c29714e10b2364c99afcaac9"
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
ETag: W/"332c1cc4e2409513b74170942e2dfa6b"
X-Content-Type-Options: nosniff
X-Frame-Options: SAMEORIGIN
X-Request-Id: 8089de97-38a6-491d-ab02-d78017f78a67
X-Runtime: 0.021214
X-XSS-Protection: 1; mode=block

{
  "id": 737,
  "name": "hoge",
  "membar_max_num": 10,
  "topic_max_num": 100,
  "color": {
    "color_code_id": 3
  }
}
```

## PATCH /api/v1/g/:id
Success.

### Example

#### Request
```
PATCH /api/v1/g/738 HTTP/1.1
Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
Authorization: Token token="03ea903c09b062125289646a03f132479286bd44f76c3ede1ceceb534c91f1e8a2572e086cb10d41"
Content-Length: 24
Content-Type: application/x-www-form-urlencoded
Host: www.example.com

name=foo&color_code_id=4
```

#### Response
```
HTTP/1.1 200
Cache-Control: max-age=0, private, must-revalidate
Content-Length: 91
Content-Type: application/json; charset=utf-8
ETag: W/"09e4ec3c51c58d117713f31c2e125a53"
X-Content-Type-Options: nosniff
X-Frame-Options: SAMEORIGIN
X-Request-Id: dfd2a0bb-14c5-4ae5-b81b-1d7fc8c76e8f
X-Runtime: 0.027598
X-XSS-Protection: 1; mode=block

{
  "id": 738,
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
GET /api/v1/g/739/detail HTTP/1.1
Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
Authorization: Token token="4ff4b852700cfd1d7f5765e979ba4372149577147df059c927987e0d35ddc85dfd3dc314b24fa389"
Content-Length: 0
Content-Type: application/x-www-form-urlencoded
Host: www.example.com
```

#### Response
```
HTTP/1.1 200
Cache-Control: max-age=0, private, must-revalidate
Content-Length: 584
Content-Type: application/json; charset=utf-8
ETag: W/"f053befcdd5b01ec87aaf3fb860e3c38"
X-Content-Type-Options: nosniff
X-Frame-Options: SAMEORIGIN
X-Request-Id: 95049235-7f23-404e-91a0-73098ccffa4d
X-Runtime: 0.063657
X-XSS-Protection: 1; mode=block

{
  "id": 739,
  "name": "Forward Web Strategist",
  "membar_max_num": 10,
  "topic_max_num": 100,
  "color": {
    "color_code_id": 1
  },
  "group_members": [
    {
      "id": 859,
      "role": "owner",
      "status": "joining",
      "user": {
        "id": 1131,
        "profile": {
          "display_id": "hardy",
          "display_name": "作田 達太郎",
          "icon_url": "http://robohash.org/saepeexpeditavel.png?size=300x300",
          "in_use_default_icon": false
        }
      }
    },
    {
      "id": 860,
      "role": "member",
      "status": "inviting",
      "user": {
        "id": 1132,
        "profile": {
          "display_id": "glenna.hirthe",
          "display_name": "鷺洲 靜香",
          "icon_url": "http://robohash.org/iustosedipsam.png?size=300x300",
          "in_use_default_icon": false
        }
      }
    }
  ]
}
```
