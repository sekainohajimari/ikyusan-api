## GET /api/v1/g/:group_id/t/:topic_id/i/:idea_id/l
Success.

### Example

#### Request
```
GET /api/v1/g/657/t/314/i/522/l HTTP/1.1
Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
Authorization: Token token="3042fa4b22142933b42eec804542556664d894c1affbdc48da130a0254f832f91db9b5127ffef8e2"
Content-Length: 0
Content-Type: application/x-www-form-urlencoded
Host: www.example.com
```

#### Response
```
HTTP/1.1 200
Cache-Control: max-age=0, private, must-revalidate
Content-Length: 478
Content-Type: application/json; charset=utf-8
ETag: W/"6ef176469e1bb1d854731d1adbfb7bd6"
X-Content-Type-Options: nosniff
X-Frame-Options: SAMEORIGIN
X-Request-Id: 89746d8f-ef0b-48af-9013-ab245a2743aa
X-Runtime: 0.040626
X-XSS-Protection: 1; mode=block

{
  "likes": [
    {
      "id": 67,
      "num": 29,
      "idea": {
        "id": 522,
        "content": "backing up the pixel won't do anything, we need to program the mobile GB panel!",
        "likes_count": 29,
        "post_user": {
          "id": 774,
          "profile": {
            "display_id": "lee",
            "display_name": "池淵 智一",
            "icon_url": "http://robohash.org/atquesuntnam.png?size=300x300"
          }
        }
      },
      "like_user": {
        "id": 773,
        "profile": {
          "display_id": "mavis_jakubowski",
          "display_name": "近間 惠久子",
          "icon_url": "http://robohash.org/aliquamoccaecatirerum.png?size=300x300"
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
POST /api/v1/g/658/t/315/i/523/l/doing HTTP/1.1
Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
Authorization: Token token="e752661a864f216d2dae309d2e6d6dce58bd5469d327e3581a5e1de315f8f506e0ae3e6e81c32c35"
Content-Length: 6
Content-Type: application/x-www-form-urlencoded
Host: www.example.com

num=10
```

#### Response
```
HTTP/1.1 201
Cache-Control: max-age=0, private, must-revalidate
Content-Length: 496
Content-Type: application/json; charset=utf-8
ETag: W/"eb1edcad3316a410d5279afc8734e5a2"
X-Content-Type-Options: nosniff
X-Frame-Options: SAMEORIGIN
X-Request-Id: 11499e0d-03d5-4f18-9849-f5c5f56495cf
X-Runtime: 0.046461
X-XSS-Protection: 1; mode=block

{
  "like": {
    "id": 69,
    "num": 10,
    "idea": {
      "id": 523,
      "content": "You can't bypass the program without quantifying the solid state SAS transmitter!",
      "likes_count": 71,
      "post_user": {
        "id": 776,
        "profile": {
          "display_id": "kelley.runolfon",
          "display_name": "本谷 月郊",
          "icon_url": "http://robohash.org/molestiaerepudiandaeet.png?size=300x300"
        }
      }
    },
    "like_user": {
      "id": 776,
      "profile": {
        "display_id": "kelley.runolfon",
        "display_name": "本谷 月郊",
        "icon_url": "http://robohash.org/molestiaerepudiandaeet.png?size=300x300"
      }
    }
  }
}
```
