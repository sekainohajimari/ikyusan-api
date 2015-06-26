## GET /api/v1/g/:group_id/t/:topic_id/i/:idea_id/l
Success.

### Example

#### Request
```
GET /api/v1/g/62/t/49/i/62/l HTTP/1.1
Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
Authorization: Token token="9328732f494be134347b7a299254218cf28d943cbb7f7fe9ed23d14f85996df49f39b17c4df8686d"
Content-Length: 0
Content-Type: application/x-www-form-urlencoded
Host: www.example.com
```

#### Response
```
HTTP/1.1 200
Cache-Control: max-age=0, private, must-revalidate
Content-Length: 490
Content-Type: application/json; charset=utf-8
ETag: W/"2183691aab7486bdf5cc11ca46874f10"
X-Content-Type-Options: nosniff
X-Frame-Options: SAMEORIGIN
X-Request-Id: 91e529b6-9ad7-4609-842e-7a571bf1d468
X-Runtime: 0.041738
X-XSS-Protection: 1; mode=block

{
  "likes": [
    {
      "id": 54,
      "num": 27,
      "idea": {
        "id": 62,
        "content": "copying the interface won't do anything, we need to reboot the mobile XSS microchip!",
        "likes_count": 27,
        "post_user": {
          "id": 88,
          "profile": {
            "display_id": "kameron.kuhlman",
            "display_name": "宗尊 千広",
            "icon_url": "http://robohash.org/iniustopraesentium.png?size=300x300"
          }
        }
      },
      "like_user": {
        "id": 87,
        "profile": {
          "display_id": "anabelle.fritsch",
          "display_name": "小畠 和雄",
          "icon_url": "http://robohash.org/dignissimosautab.png?size=300x300"
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
POST /api/v1/g/63/t/50/i/63/l/doing HTTP/1.1
Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
Authorization: Token token="5f2f69b458140f676539dfc020d455d99f0e76bc62bd114948d900989735b2c866b85d0fe2600be4"
Content-Length: 6
Content-Type: application/x-www-form-urlencoded
Host: www.example.com

num=10
```

#### Response
```
HTTP/1.1 200
Cache-Control: max-age=0, private, must-revalidate
Content-Length: 508
Content-Type: application/json; charset=utf-8
ETag: W/"71ba8c5ca3f3e79e027cc6acdd65cfe4"
X-Content-Type-Options: nosniff
X-Frame-Options: SAMEORIGIN
X-Request-Id: cc254583-820e-4071-ab1e-fb48c0ac7dfa
X-Runtime: 0.065436
X-XSS-Protection: 1; mode=block

{
  "like": {
    "id": 56,
    "num": 10,
    "idea": {
      "id": 63,
      "content": "programming the protocol won't do anything, we need to generate the solid state JBOD matrix!",
      "likes_count": 35,
      "post_user": {
        "id": 90,
        "profile": {
          "display_id": "chadd.nikolaus",
          "display_name": "早野 一巳",
          "icon_url": "http://robohash.org/dolorumtemporibusexpedita.png?size=300x300"
        }
      }
    },
    "like_user": {
      "id": 90,
      "profile": {
        "display_id": "chadd.nikolaus",
        "display_name": "早野 一巳",
        "icon_url": "http://robohash.org/dolorumtemporibusexpedita.png?size=300x300"
      }
    }
  }
}
```
