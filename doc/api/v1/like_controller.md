## GET /api/v1/g/:group_id/t/:topic_id/i/:idea_id/l
Success.

### Example

#### Request
```
GET /api/v1/g/550/t/239/i/421/l HTTP/1.1
Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
Authorization: Token token="c7fedc83148276c9c9f6af77ce19f2663eca537bbf7e06178f442d0372bb382b3d79169632e615f4"
Content-Length: 0
Content-Type: application/x-www-form-urlencoded
Host: www.example.com
```

#### Response
```
HTTP/1.1 200
Cache-Control: max-age=0, private, must-revalidate
Content-Length: 480
Content-Type: application/json; charset=utf-8
ETag: W/"ab243aa36f7fe9af28ca8bc27d9540bf"
X-Content-Type-Options: nosniff
X-Frame-Options: SAMEORIGIN
X-Request-Id: 327241a7-8b7a-4ed8-aa26-c1ef57159043
X-Runtime: 0.046595
X-XSS-Protection: 1; mode=block

{
  "likes": [
    {
      "id": 111,
      "num": 52,
      "idea": {
        "id": 421,
        "content": "I'll compress the 1080p FTP capacitor, that should interface the IB protocol!",
        "likes_count": 52,
        "post_user": {
          "id": 627,
          "profile": {
            "display_id": "alivia.beier",
            "display_name": "高市 三江子",
            "icon_url": "http://robohash.org/namofficiisvoluptatem.png?size=300x300"
          }
        }
      },
      "like_user": {
        "id": 626,
        "profile": {
          "display_id": "kirstin",
          "display_name": "馬渕 しづか",
          "icon_url": "http://robohash.org/quodquototam.png?size=300x300"
        }
      }
    }
  ]
}
```

## POST /api/v1/g/:group_id/t/:topic_id/i/:idea_id/l/doing
Success.

### Example

#### Request
```
POST /api/v1/g/551/t/240/i/422/l/doing HTTP/1.1
Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
Authorization: Token token="0eef3876822e2d260bfb972a424be32ced8d69fd3156737de99dc20cef2247f47f63554eea205abd"
Content-Length: 6
Content-Type: application/x-www-form-urlencoded
Host: www.example.com

num=10
```

#### Response
```
HTTP/1.1 201
Cache-Control: max-age=0, private, must-revalidate
Content-Length: 479
Content-Type: application/json; charset=utf-8
ETag: W/"9ef7ab7a64d39f0ffd393b62e0d28fad"
X-Content-Type-Options: nosniff
X-Frame-Options: SAMEORIGIN
X-Request-Id: b7097fb0-2ec8-47a6-a99c-3c78596313a1
X-Runtime: 0.058758
X-XSS-Protection: 1; mode=block

{
  "like": {
    "id": 113,
    "num": 10,
    "idea": {
      "id": 422,
      "content": "If we compress the transmitter, we can get to the SMS port through the multi-byte TCP port!",
      "likes_count": 80,
      "post_user": {
        "id": 629,
        "profile": {
          "display_id": "roslyn",
          "display_name": "南山 貴恵",
          "icon_url": "http://robohash.org/quinihilexcepturi.png?size=300x300"
        }
      }
    },
    "like_user": {
      "id": 629,
      "profile": {
        "display_id": "roslyn",
        "display_name": "南山 貴恵",
        "icon_url": "http://robohash.org/quinihilexcepturi.png?size=300x300"
      }
    }
  }
}
```
