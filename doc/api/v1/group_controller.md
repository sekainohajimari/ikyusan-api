## GET /api/v1/g
Success.

### Example

#### Request
```
GET /api/v1/g HTTP/1.1
Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
Authorization: Token token="75878ee98e55cdd3f1d9add6f8c3c0b999ee6924649f8ba58559b5031d282f4c24c76e4615446b60"
Content-Length: 0
Content-Type: application/x-www-form-urlencoded
Host: www.example.com
```

#### Response
```
HTTP/1.1 200
Cache-Control: max-age=0, private, must-revalidate
Content-Length: 875
Content-Type: application/json; charset=utf-8
ETag: W/"a8f1f8fc8e6c1e2f9799797315e925c9"
X-Content-Type-Options: nosniff
X-Frame-Options: SAMEORIGIN
X-Request-Id: 81089741-3625-4ac5-9ca7-083d2e9d4210
X-Runtime: 0.091248
X-XSS-Protection: 1; mode=block

{
  "groups": [
    {
      "id": 531,
      "name": "Internal Quality Officer",
      "membar_max_num": 10,
      "topic_max_num": 100
    },
    {
      "id": 532,
      "name": "Regional Quality Designer",
      "membar_max_num": 10,
      "topic_max_num": 100
    },
    {
      "id": 533,
      "name": "Forward Branding Liason",
      "membar_max_num": 10,
      "topic_max_num": 100
    },
    {
      "id": 534,
      "name": "Forward Configuration Planner",
      "membar_max_num": 10,
      "topic_max_num": 100
    },
    {
      "id": 535,
      "name": "Customer Metrics Technician",
      "membar_max_num": 10,
      "topic_max_num": 100
    },
    {
      "id": 536,
      "name": "Lead Web Engineer",
      "membar_max_num": 10,
      "topic_max_num": 100
    },
    {
      "id": 537,
      "name": "National Directives Analyst",
      "membar_max_num": 10,
      "topic_max_num": 100
    },
    {
      "id": 538,
      "name": "Dynamic Infrastructure Associate",
      "membar_max_num": 10,
      "topic_max_num": 100
    },
    {
      "id": 539,
      "name": "Human Quality Producer",
      "membar_max_num": 10,
      "topic_max_num": 100
    },
    {
      "id": 540,
      "name": "Regional Operations Officer",
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
Authorization: Token token="2166ee417edac5cb2f5cd022fc4729c28a5ab3c1cb868b2c63c3524e33166a2e0c60babee4c0845c"
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
ETag: W/"66f9b1b59f7973562245bc1001dd7ce3"
X-Content-Type-Options: nosniff
X-Frame-Options: SAMEORIGIN
X-Request-Id: a346a1c8-3f89-4c24-a2fb-2fd941a3297f
X-Runtime: 0.020279
X-XSS-Protection: 1; mode=block

{
  "id": 541,
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
GET /api/v1/g/542/edit?name=foo HTTP/1.1
Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
Authorization: Token token="9a8780c34a5859e33334dbb4530f76bd90142c891f54179e7b20147d74d390b403671bf232c73787"
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
ETag: W/"624a9564f6838e40f3904b0ecd0d2e14"
X-Content-Type-Options: nosniff
X-Frame-Options: SAMEORIGIN
X-Request-Id: c638c301-d790-4df3-9577-eb19b0fd1a7e
X-Runtime: 0.022885
X-XSS-Protection: 1; mode=block

{
  "id": 542,
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
GET /api/v1/g/543/detail HTTP/1.1
Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
Authorization: Token token="fc287de1cf0d82c22aa56921c358a2afd91fea68deeeb400f31cd0ee54b17de4b85e705db188fdae"
Content-Length: 0
Content-Type: application/x-www-form-urlencoded
Host: www.example.com
```

#### Response
```
HTTP/1.1 200
Cache-Control: max-age=0, private, must-revalidate
Content-Length: 497
Content-Type: application/json; charset=utf-8
ETag: W/"936fb20dd8d21a194a6113d638d88ae1"
X-Content-Type-Options: nosniff
X-Frame-Options: SAMEORIGIN
X-Request-Id: 90449eae-d778-4f87-9444-9fd95ddadc4e
X-Runtime: 0.060415
X-XSS-Protection: 1; mode=block

{
  "id": 543,
  "name": "Lead Paradigm Director",
  "membar_max_num": 10,
  "topic_max_num": 100,
  "group_members": [
    {
      "id": 657,
      "role": "owner",
      "status": "joining",
      "user": {
        "id": 616,
        "profile": {
          "display_id": "travon",
          "display_name": "宮武 谷右衛門",
          "icon_url": "http://robohash.org/quidemdoloremet.png?size=300x300"
        }
      }
    },
    {
      "id": 658,
      "role": "member",
      "status": "inviting",
      "user": {
        "id": 617,
        "profile": {
          "display_id": "elinor",
          "display_name": "金津 ツタエ",
          "icon_url": "http://robohash.org/etsitincidunt.png?size=300x300"
        }
      }
    }
  ]
}
```
