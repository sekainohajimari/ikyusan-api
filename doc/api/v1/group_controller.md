## GET /api/v1/g
Success.

### Example

#### Request
```
GET /api/v1/g HTTP/1.1
Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
Authorization: Token token="dfefbde21db30e6b0870d54d234467ba45c23d1f6b8138b5915f52ce996ccfcc7791a274deff4d86"
Content-Length: 0
Content-Type: application/x-www-form-urlencoded
Host: www.example.com
```

#### Response
```
HTTP/1.1 200
Cache-Control: max-age=0, private, must-revalidate
Content-Length: 1451
Content-Type: application/json; charset=utf-8
ETag: W/"98319b90ca31591f0aa4f56905d2bffb"
X-Content-Type-Options: nosniff
X-Frame-Options: SAMEORIGIN
X-Request-Id: 6450dc71-75a6-4330-9699-fd854eca10ce
X-Runtime: 0.081006
X-XSS-Protection: 1; mode=block

{
  "groups": [
    {
      "id": 352,
      "name": "Direct Marketing Administrator",
      "membar_max_num": 10,
      "topic_max_num": 100,
      "own_group_member": {
        "status": "joining",
        "role": "owner"
      }
    },
    {
      "id": 353,
      "name": "District Branding Representative",
      "membar_max_num": 10,
      "topic_max_num": 100,
      "own_group_member": {
        "status": "joining",
        "role": "owner"
      }
    },
    {
      "id": 354,
      "name": "Corporate Communications Liason",
      "membar_max_num": 10,
      "topic_max_num": 100,
      "own_group_member": {
        "status": "joining",
        "role": "owner"
      }
    },
    {
      "id": 355,
      "name": "National Web Executive",
      "membar_max_num": 10,
      "topic_max_num": 100,
      "own_group_member": {
        "status": "joining",
        "role": "owner"
      }
    },
    {
      "id": 356,
      "name": "Investor Functionality Designer",
      "membar_max_num": 10,
      "topic_max_num": 100,
      "own_group_member": {
        "status": "joining",
        "role": "owner"
      }
    },
    {
      "id": 357,
      "name": "Corporate Applications Director",
      "membar_max_num": 10,
      "topic_max_num": 100,
      "own_group_member": {
        "status": "joining",
        "role": "owner"
      }
    },
    {
      "id": 358,
      "name": "Regional Identity Facilitator",
      "membar_max_num": 10,
      "topic_max_num": 100,
      "own_group_member": {
        "status": "joining",
        "role": "owner"
      }
    },
    {
      "id": 359,
      "name": "Chief Paradigm Strategist",
      "membar_max_num": 10,
      "topic_max_num": 100,
      "own_group_member": {
        "status": "joining",
        "role": "owner"
      }
    },
    {
      "id": 360,
      "name": "Chief Paradigm Director",
      "membar_max_num": 10,
      "topic_max_num": 100,
      "own_group_member": {
        "status": "joining",
        "role": "owner"
      }
    },
    {
      "id": 361,
      "name": "Product Mobility Producer",
      "membar_max_num": 10,
      "topic_max_num": 100,
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
Authorization: Token token="9d27f9342007664ab3ea9c2d6fc94d3f6b41825e58cdb0f628bc3b8cd44872071749352be8605f54"
Content-Length: 9
Content-Type: application/x-www-form-urlencoded
Host: www.example.com

name=hoge
```

#### Response
```
HTTP/1.1 201
Cache-Control: max-age=0, private, must-revalidate
Content-Length: 64
Content-Type: application/json; charset=utf-8
ETag: W/"ebcbd3db79a332b64e261c2f77bb0091"
X-Content-Type-Options: nosniff
X-Frame-Options: SAMEORIGIN
X-Request-Id: 3774e20e-71d1-4be8-8757-c8cc459d65db
X-Runtime: 0.021189
X-XSS-Protection: 1; mode=block

{
  "id": 647,
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
GET /api/v1/g/648/edit?name=foo HTTP/1.1
Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
Authorization: Token token="113db127121b43ca3e37c055852b662359ddcfb57f1cb45411d54c468ed1240c7c5de4686e041875"
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
ETag: W/"f394f5fee238aa349aeacf2a2c6e9f38"
X-Content-Type-Options: nosniff
X-Frame-Options: SAMEORIGIN
X-Request-Id: 09632403-5035-4aa8-b12a-a0c6ea8ec863
X-Runtime: 0.023476
X-XSS-Protection: 1; mode=block

{
  "id": 648,
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
GET /api/v1/g/649/detail HTTP/1.1
Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
Authorization: Token token="2d7b1740d1e45f5d49289c72f75ea75bf410601762012f1cbe051ec609c6189deb15df0b4606feac"
Content-Length: 0
Content-Type: application/x-www-form-urlencoded
Host: www.example.com
```

#### Response
```
HTTP/1.1 200
Cache-Control: max-age=0, private, must-revalidate
Content-Length: 503
Content-Type: application/json; charset=utf-8
ETag: W/"bf143be626f51a5a60977e9b663a0c5a"
X-Content-Type-Options: nosniff
X-Frame-Options: SAMEORIGIN
X-Request-Id: 18e88594-e3c8-4b8d-8881-08808a83f8f4
X-Runtime: 0.043874
X-XSS-Protection: 1; mode=block

{
  "id": 649,
  "name": "Direct Factors Consultant",
  "membar_max_num": 10,
  "topic_max_num": 100,
  "group_members": [
    {
      "id": 749,
      "role": "owner",
      "status": "joining",
      "user": {
        "id": 762,
        "profile": {
          "display_id": "carmen_boehm",
          "display_name": "横倉 純枝",
          "icon_url": "http://robohash.org/quisequitempora.png?size=300x300"
        }
      }
    },
    {
      "id": 750,
      "role": "member",
      "status": "inviting",
      "user": {
        "id": 763,
        "profile": {
          "display_id": "marlen_bode",
          "display_name": "平井 光洋",
          "icon_url": "http://robohash.org/autemitaqueest.png?size=300x300"
        }
      }
    }
  ]
}
```
