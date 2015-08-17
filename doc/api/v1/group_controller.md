## GET /api/v1/g
Success.

### Example

#### Request
```
GET /api/v1/g HTTP/1.1
Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
Authorization: Token token="3f8d16218ec02bcaf7f1d2fe193d35f50bf17efa165c9b19b7a329ca6d03031244fb370607073134"
Content-Length: 0
Content-Type: application/x-www-form-urlencoded
Host: www.example.com
```

#### Response
```
HTTP/1.1 200
Cache-Control: max-age=0, private, must-revalidate
Content-Length: 1573
Content-Type: application/json; charset=utf-8
ETag: W/"553fabddc2d120cd36f697573d475c9f"
X-Content-Type-Options: nosniff
X-Frame-Options: SAMEORIGIN
X-Request-Id: 76091d4d-aef4-4a22-96d4-dd247a01eaae
X-Runtime: 0.096773
X-XSS-Protection: 1; mode=block

{
  "groups": [
    {
      "id": 494,
      "name": "group name 1",
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
      "id": 495,
      "name": "group name 2",
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
      "id": 496,
      "name": "group name 3",
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
      "id": 497,
      "name": "group name 4",
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
      "id": 498,
      "name": "group name 5",
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
      "id": 499,
      "name": "group name 6",
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
      "id": 500,
      "name": "group name 7",
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
      "id": 501,
      "name": "group name 8",
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
      "id": 502,
      "name": "group name 9",
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
      "id": 503,
      "name": "group name 10",
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
Authorization: Token token="4e08d904fbc2a15c72bf6f8620744e8684cecaa9c63b2e70310a55781eb740a74a2860b30c3ad389"
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
ETag: W/"7a70cd14d41788cd498932529b18cd6e"
X-Content-Type-Options: nosniff
X-Frame-Options: SAMEORIGIN
X-Request-Id: 0a320813-818e-44d1-9866-bd43454ba91d
X-Runtime: 0.025750
X-XSS-Protection: 1; mode=block

{
  "id": 504,
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
PATCH /api/v1/g/505 HTTP/1.1
Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
Authorization: Token token="1719c1fa2bf4eb05bae891483b0a4fc07409b0a2bd70e164f8b17a5e9ef352034a03e9abae8f1732"
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
ETag: W/"d092cef5646de3949c6788781e441b24"
X-Content-Type-Options: nosniff
X-Frame-Options: SAMEORIGIN
X-Request-Id: 2afab170-73f9-4682-b7f1-d3bc84f857d2
X-Runtime: 0.032497
X-XSS-Protection: 1; mode=block

{
  "id": 505,
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
GET /api/v1/g/506/detail HTTP/1.1
Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
Authorization: Token token="be0d18dcbd0548495d21e2a39c30c5b62fff60f982f74cbc1e9f09b27224751832633b2dbc911a44"
Content-Length: 0
Content-Type: application/x-www-form-urlencoded
Host: www.example.com
```

#### Response
```
HTTP/1.1 200
Cache-Control: max-age=0, private, must-revalidate
Content-Length: 580
Content-Type: application/json; charset=utf-8
ETag: W/"3069a02b13b025b855090788f6cacd33"
X-Content-Type-Options: nosniff
X-Frame-Options: SAMEORIGIN
X-Request-Id: b364f329-3222-4bb4-8e3d-77c33493ec7b
X-Runtime: 0.053564
X-XSS-Protection: 1; mode=block

{
  "id": 506,
  "name": "group name 12",
  "membar_max_num": 10,
  "topic_max_num": 100,
  "color": {
    "color_code_id": 1
  },
  "group_members": [
    {
      "id": 572,
      "role": "owner",
      "status": "joining",
      "user": {
        "id": 641,
        "profile": {
          "display_id": "gilberto.bauch",
          "display_name": "越後谷 有司",
          "icon_url": "http://robohash.org/temporibusquosquia.png?size=300x300",
          "in_use_default_icon": false
        }
      }
    },
    {
      "id": 573,
      "role": "member",
      "status": "inviting",
      "user": {
        "id": 642,
        "profile": {
          "display_id": "tatyana",
          "display_name": "呉 仲太郎",
          "icon_url": "http://robohash.org/veritatisetmodi.png?size=300x300",
          "in_use_default_icon": false
        }
      }
    }
  ]
}
```

## DELETE /api/v1/g/:id
Success.

### Example

#### Request
```
DELETE /api/v1/g/507 HTTP/1.1
Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
Authorization: Token token="f39b023102a00d9f395219151d52066ae80c08717c49667387b339151351e8c5b976cc65d5caa604"
Content-Length: 0
Content-Type: application/x-www-form-urlencoded
Host: www.example.com
```

#### Response
```
HTTP/1.1 204
Cache-Control: no-cache
X-Content-Type-Options: nosniff
X-Frame-Options: SAMEORIGIN
X-Request-Id: 082aa138-09f5-4e4f-8335-e15e168edcb4
X-Runtime: 0.023239
X-XSS-Protection: 1; mode=block
```

## PATCH /api/v1/g/:id/escape
Success.

### Example

#### Request
```
PATCH /api/v1/g/508/escape HTTP/1.1
Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
Authorization: Token token="f8b670ea429f2e15b88f4fc846878cd43d4a359c58e32a5e65b911c27bf54a6a7a86c054b82edab0"
Content-Length: 0
Content-Type: application/x-www-form-urlencoded
Host: www.example.com
```

#### Response
```
HTTP/1.1 204
Cache-Control: no-cache
X-Content-Type-Options: nosniff
X-Frame-Options: SAMEORIGIN
X-Request-Id: 44f728d5-2a70-4791-9741-492655945a02
X-Runtime: 0.037043
X-XSS-Protection: 1; mode=block
```
