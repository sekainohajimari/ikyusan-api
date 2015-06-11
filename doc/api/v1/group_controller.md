## GET /api/v1/g
Success.

### Example

#### Request
```
GET /api/v1/g HTTP/1.1
Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
Authorization: Token token="cda307deebda5f5339d7a33e66c675028227c13478b2469838487dddff59f24bd29a29654cff53b9"
Content-Length: 0
Content-Type: application/x-www-form-urlencoded
Host: www.example.com
```

#### Response
```
HTTP/1.1 200
Cache-Control: max-age=0, private, must-revalidate
Content-Length: 1433
Content-Type: application/json; charset=utf-8
ETag: W/"344dccf89b39952609edfb5e2d75abd8"
X-Content-Type-Options: nosniff
X-Frame-Options: SAMEORIGIN
X-Request-Id: fd63eec4-220d-46e7-bcaf-5db7677b7063
X-Runtime: 0.270816
X-XSS-Protection: 1; mode=block

{
  "groups": [
    {
      "id": 266,
      "name": "group_1",
      "membar_max_num": 10,
      "topic_max_num": 100,
      "invites": [

      ],
      "group_members": [
        {
          "id": 257,
          "user": {
            "id": 55,
            "profile": null
          }
        }
      ]
    },
    {
      "id": 267,
      "name": "group_2",
      "membar_max_num": 10,
      "topic_max_num": 100,
      "invites": [

      ],
      "group_members": [
        {
          "id": 258,
          "user": {
            "id": 55,
            "profile": null
          }
        }
      ]
    },
    {
      "id": 268,
      "name": "group_3",
      "membar_max_num": 10,
      "topic_max_num": 100,
      "invites": [

      ],
      "group_members": [
        {
          "id": 259,
          "user": {
            "id": 55,
            "profile": null
          }
        }
      ]
    },
    {
      "id": 269,
      "name": "group_4",
      "membar_max_num": 10,
      "topic_max_num": 100,
      "invites": [

      ],
      "group_members": [
        {
          "id": 260,
          "user": {
            "id": 55,
            "profile": null
          }
        }
      ]
    },
    {
      "id": 270,
      "name": "group_5",
      "membar_max_num": 10,
      "topic_max_num": 100,
      "invites": [

      ],
      "group_members": [
        {
          "id": 261,
          "user": {
            "id": 55,
            "profile": null
          }
        }
      ]
    },
    {
      "id": 271,
      "name": "group_6",
      "membar_max_num": 10,
      "topic_max_num": 100,
      "invites": [

      ],
      "group_members": [
        {
          "id": 262,
          "user": {
            "id": 55,
            "profile": null
          }
        }
      ]
    },
    {
      "id": 272,
      "name": "group_7",
      "membar_max_num": 10,
      "topic_max_num": 100,
      "invites": [

      ],
      "group_members": [
        {
          "id": 263,
          "user": {
            "id": 55,
            "profile": null
          }
        }
      ]
    },
    {
      "id": 273,
      "name": "group_8",
      "membar_max_num": 10,
      "topic_max_num": 100,
      "invites": [

      ],
      "group_members": [
        {
          "id": 264,
          "user": {
            "id": 55,
            "profile": null
          }
        }
      ]
    },
    {
      "id": 274,
      "name": "group_9",
      "membar_max_num": 10,
      "topic_max_num": 100,
      "invites": [

      ],
      "group_members": [
        {
          "id": 265,
          "user": {
            "id": 55,
            "profile": null
          }
        }
      ]
    },
    {
      "id": 275,
      "name": "group_10",
      "membar_max_num": 10,
      "topic_max_num": 100,
      "invites": [

      ],
      "group_members": [
        {
          "id": 266,
          "user": {
            "id": 55,
            "profile": null
          }
        }
      ]
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
Authorization: Token token="6a056989983c702aee6775e0f65a1f04ad4552d3786f0fc1ef265772fc286a376ec03381e58e8be1"
Content-Length: 9
Content-Type: application/x-www-form-urlencoded
Host: www.example.com

name=hoge
```

#### Response
```
HTTP/1.1 200
Cache-Control: max-age=0, private, must-revalidate
Content-Length: 138
Content-Type: application/json; charset=utf-8
ETag: W/"35303d3e48d20f1fa7719d432373074f"
X-Content-Type-Options: nosniff
X-Frame-Options: SAMEORIGIN
X-Request-Id: cc4c8f0c-8446-44a2-ae4b-acdf0f61f9a1
X-Runtime: 0.022224
X-XSS-Protection: 1; mode=block

{
  "id": 276,
  "name": "hoge",
  "membar_max_num": 10,
  "topic_max_num": 100,
  "invites": [

  ],
  "group_members": [
    {
      "id": 267,
      "user": {
        "id": 56,
        "profile": null
      }
    }
  ]
}
```

## GET /api/v1/g/:id/edit
Success.

### Example

#### Request
```
GET /api/v1/g/277/edit?name=foo HTTP/1.1
Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
Authorization: Token token="f9881adc2114f6ae6c948c70e5e4692bde86b18c80248c81ebf5ff1ea26dbff944acec2d2302459c"
Content-Length: 0
Content-Type: application/x-www-form-urlencoded
Host: www.example.com
```

#### Response
```
HTTP/1.1 200
Cache-Control: max-age=0, private, must-revalidate
Content-Length: 137
Content-Type: application/json; charset=utf-8
ETag: W/"da22fc07d68ef707e90c6d5698a3d44f"
X-Content-Type-Options: nosniff
X-Frame-Options: SAMEORIGIN
X-Request-Id: dd8036c8-2548-471d-a689-55ec5c3a62a8
X-Runtime: 0.026630
X-XSS-Protection: 1; mode=block

{
  "id": 277,
  "name": "foo",
  "membar_max_num": 10,
  "topic_max_num": 100,
  "invites": [

  ],
  "group_members": [
    {
      "id": 268,
      "user": {
        "id": 57,
        "profile": null
      }
    }
  ]
}
```
