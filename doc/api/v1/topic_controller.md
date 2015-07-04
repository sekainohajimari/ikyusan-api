## GET /api/v1/g/:group_id/t
Return 200..

### Example

#### Request
```
GET /api/v1/g/659/t HTTP/1.1
Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
Authorization: Token token="a21453754f9ee65ac1acfb4987a54efd90c87f254a225aad3b8ac73ee73a81ca4151353441ee8217"
Content-Length: 0
Content-Type: application/x-www-form-urlencoded
Host: www.example.com
```

#### Response
```
HTTP/1.1 200
Cache-Control: max-age=0, private, must-revalidate
Content-Length: 248
Content-Type: application/json; charset=utf-8
ETag: W/"e14e65772f366a907701a050bf040d3e"
X-Content-Type-Options: nosniff
X-Frame-Options: SAMEORIGIN
X-Request-Id: a33e00c0-f74c-4cf1-a8ad-d4d364ead68c
X-Runtime: 0.037918
X-XSS-Protection: 1; mode=block

{
  "topics": [
    {
      "id": 316,
      "name": "topic_1",
      "idea_max_num": 100,
      "anonymity": false,
      "build_user": {
        "id": 783,
        "profile": {
          "display_id": "arch.herzog",
          "display_name": "伸二 みすず",
          "icon_url": "http://robohash.org/inciduntanimilaudantium.png?size=300x300"
        }
      }
    }
  ]
}
```

## POST /api/v1/g/:group_id/t
Return 201..

### Example

#### Request
```
POST /api/v1/g/660/t HTTP/1.1
Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
Authorization: Token token="62ca3181eb81b055ba8ca3750b10d966467479a3d80f3901bb1da3300cc99e33521fa8a08732a961"
Content-Length: 9
Content-Type: application/x-www-form-urlencoded
Host: www.example.com

name=hoge
```

#### Response
```
HTTP/1.1 201
Cache-Control: max-age=0, private, must-revalidate
Content-Length: 225
Content-Type: application/json; charset=utf-8
ETag: W/"b84e6288fa627a8ca825682d9c9c9857"
X-Content-Type-Options: nosniff
X-Frame-Options: SAMEORIGIN
X-Request-Id: 0b7f7202-3925-4e33-9e16-c8a5db8ce6fc
X-Runtime: 0.026818
X-XSS-Protection: 1; mode=block

{
  "topic": {
    "id": 318,
    "name": "hoge",
    "idea_max_num": 100,
    "anonymity": false,
    "build_user": {
      "id": 784,
      "profile": {
        "display_id": "zechariah",
        "display_name": "藤谷 武美",
        "icon_url": "http://robohash.org/natusreruma.png?size=300x300"
      }
    }
  }
}
```

## POST /api/v1/g/:group_id/t
Return 201..

### Example

#### Request
```
POST /api/v1/g/661/t HTTP/1.1
Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
Authorization: Token token="56f190e11050641c3baf4de842d78e22d6ea0486e697b65db30030447350c80401b04798b34b0306"
Content-Length: 21
Content-Type: application/x-www-form-urlencoded
Host: www.example.com

name=hoge&anonymity=1
```

#### Response
```
HTTP/1.1 201
Cache-Control: max-age=0, private, must-revalidate
Content-Length: 226
Content-Type: application/json; charset=utf-8
ETag: W/"78e15b98f81514357cbc60fb1bfea02e"
X-Content-Type-Options: nosniff
X-Frame-Options: SAMEORIGIN
X-Request-Id: 96c94d68-4fb6-4098-ac7a-fed08eb94fa0
X-Runtime: 0.032209
X-XSS-Protection: 1; mode=block

{
  "topic": {
    "id": 320,
    "name": "hoge",
    "idea_max_num": 100,
    "anonymity": true,
    "build_user": {
      "id": 785,
      "profile": {
        "display_id": "trea",
        "display_name": "揖保 由水",
        "icon_url": "http://robohash.org/aeumnecessitatibus.png?size=300x300"
      }
    }
  }
}
```

## GET /api/v1/g/:group_id/t/:id/edit
Success.

### Example

#### Request
```
GET /api/v1/g/662/t/321/edit?name=hoge HTTP/1.1
Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
Authorization: Token token="2c678d7d30baa8bc5ad7cf1a9dec611dda9c23fb921039df7b261b397e3631544f4dbf553ba69524"
Content-Length: 0
Content-Type: application/x-www-form-urlencoded
Host: www.example.com
```

#### Response
```
HTTP/1.1 200
Cache-Control: max-age=0, private, must-revalidate
Content-Length: 238
Content-Type: application/json; charset=utf-8
ETag: W/"094a0e3e7409223d3ab14dc68b7215bd"
X-Content-Type-Options: nosniff
X-Frame-Options: SAMEORIGIN
X-Request-Id: 31198007-b1fd-40d6-85db-c654e7ffeb0d
X-Runtime: 0.029047
X-XSS-Protection: 1; mode=block

{
  "topic": {
    "id": 321,
    "name": "hoge",
    "idea_max_num": 100,
    "anonymity": false,
    "build_user": {
      "id": 786,
      "profile": {
        "display_id": "garrick",
        "display_name": "北岡 君夫",
        "icon_url": "http://robohash.org/repellendusquaeconsequatur.png?size=300x300"
      }
    }
  }
}
```
