## GET /api/v1/g/:group_id/t/:topic_id/i
Success.

### Example

#### Request
```
GET /api/v1/g/544/t/193/i HTTP/1.1
Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
Authorization: Token token="368e6cdea60081e3340237186110b2de8fdae3cd2e8d8fb7025c074b372b16a405d04712940dceab"
Content-Length: 0
Content-Type: application/x-www-form-urlencoded
Host: www.example.com
```

#### Response
```
HTTP/1.1 200
Cache-Control: max-age=0, private, must-revalidate
Content-Length: 625
Content-Type: application/json; charset=utf-8
ETag: W/"951d3a85af48d57323383eba731f5a3c"
X-Content-Type-Options: nosniff
X-Frame-Options: SAMEORIGIN
X-Request-Id: 459bb326-f445-4c11-bb0d-7ca372135adc
X-Runtime: 0.112051
X-XSS-Protection: 1; mode=block

{
  "ideas": [
    {
      "id": 505,
      "content": "content_1",
      "likes_count": 67,
      "post_user": {
        "id": 334,
        "profile": {
          "display_id": "kyoko",
          "display_name": "きょうこ",
          "icon_url": null
        }
      }
    },
    {
      "id": 506,
      "content": "content_2",
      "likes_count": 30,
      "post_user": {
        "id": 334,
        "profile": {
          "display_id": "kyoko",
          "display_name": "きょうこ",
          "icon_url": null
        }
      }
    },
    {
      "id": 507,
      "content": "content_3",
      "likes_count": 73,
      "post_user": {
        "id": 334,
        "profile": {
          "display_id": "kyoko",
          "display_name": "きょうこ",
          "icon_url": null
        }
      }
    },
    {
      "id": 508,
      "content": "content_4",
      "likes_count": 53,
      "post_user": {
        "id": 334,
        "profile": {
          "display_id": "**********",
          "display_name": "**********",
          "icon_url": "dummy"
        }
      }
    }
  ]
}
```

## GET /api/v1/g/:group_id/t/:topic_id/i
Success anonymity enable.

### Example

#### Request
```
GET /api/v1/g/545/t/194/i HTTP/1.1
Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
Authorization: Token token="ec713a0ff3b41084dbea84508e5c32f450b7a75830ade6eec2a33a3309ff61ab6994890481f5142a"
Content-Length: 0
Content-Type: application/x-www-form-urlencoded
Host: www.example.com
```

#### Response
```
HTTP/1.1 200
Cache-Control: max-age=0, private, must-revalidate
Content-Length: 607
Content-Type: application/json; charset=utf-8
ETag: W/"4092d0f4f3180363d338c0a5d5a9582f"
X-Content-Type-Options: nosniff
X-Frame-Options: SAMEORIGIN
X-Request-Id: 3fbdfed0-e61f-4d97-a315-a187457ff3e1
X-Runtime: 0.088242
X-XSS-Protection: 1; mode=block

{
  "ideas": [
    {
      "id": 509,
      "content": "content_5",
      "likes_count": 20,
      "post_user": {
        "id": 335,
        "profile": {
          "display_id": "kyoko",
          "display_name": "トム",
          "icon_url": null
        }
      }
    },
    {
      "id": 510,
      "content": "content_6",
      "likes_count": 84,
      "post_user": {
        "id": 335,
        "profile": {
          "display_id": "kyoko",
          "display_name": "トム",
          "icon_url": null
        }
      }
    },
    {
      "id": 511,
      "content": "content_7",
      "likes_count": 63,
      "post_user": {
        "id": 335,
        "profile": {
          "display_id": "kyoko",
          "display_name": "トム",
          "icon_url": null
        }
      }
    },
    {
      "id": 512,
      "content": "content_8",
      "likes_count": 19,
      "post_user": {
        "id": 335,
        "profile": {
          "display_id": "**********",
          "display_name": "**********",
          "icon_url": "dummy"
        }
      }
    }
  ]
}
```

## POST /api/v1/g/:group_id/t/:topic_id/i
Success.

### Example

#### Request
```
POST /api/v1/g/546/t/195/i HTTP/1.1
Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
Authorization: Token token="bec43fbf9df1a45092f4f4ccbe3af612227d7cfbb12c98bdf9be9d42c4056f681b7cae156fd42513"
Content-Length: 16
Content-Type: application/x-www-form-urlencoded
Host: www.example.com

content=hogehoge
```

#### Response
```
HTTP/1.1 200
Cache-Control: max-age=0, private, must-revalidate
Content-Length: 150
Content-Type: application/json; charset=utf-8
ETag: W/"fd3f5a3abead85e651d948ebf513456e"
X-Content-Type-Options: nosniff
X-Frame-Options: SAMEORIGIN
X-Request-Id: 501b18f5-200e-4a37-8164-8cc69d164011
X-Runtime: 0.038791
X-XSS-Protection: 1; mode=block

{
  "idea": {
    "id": 517,
    "content": "hogehoge",
    "likes_count": 0,
    "post_user": {
      "id": 336,
      "profile": {
        "display_id": "bob",
        "display_name": "トム",
        "icon_url": null
      }
    }
  }
}
```

## DELETE /api/v1/g/:group_id/t/:topic_id/i/:id
Success.

### Example

#### Request
```
DELETE /api/v1/g/547/t/196/i/521 HTTP/1.1
Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
Authorization: Token token="8ac734a6b37be68eba90261947568f85f7630b60e7f6b06f44fd1f6e08d4d2fe7ddc450fd264e230"
Content-Length: 0
Content-Type: application/x-www-form-urlencoded
Host: www.example.com
```

#### Response
```
HTTP/1.1 200
Cache-Control: max-age=0, private, must-revalidate
Content-Length: 452
Content-Type: application/json; charset=utf-8
ETag: W/"8ce8a0457aa7090dd8ad2f43f9d8a8f3"
X-Content-Type-Options: nosniff
X-Frame-Options: SAMEORIGIN
X-Request-Id: 34eef384-3f49-4bc4-9fe1-d67d16062690
X-Runtime: 0.082263
X-XSS-Protection: 1; mode=block

{
  "ideas": [
    {
      "id": 518,
      "content": "content_13",
      "likes_count": 87,
      "post_user": {
        "id": 337,
        "profile": {
          "display_id": "kyoko",
          "display_name": "ボブ",
          "icon_url": null
        }
      }
    },
    {
      "id": 519,
      "content": "content_14",
      "likes_count": 50,
      "post_user": {
        "id": 337,
        "profile": {
          "display_id": "kyoko",
          "display_name": "ボブ",
          "icon_url": null
        }
      }
    },
    {
      "id": 520,
      "content": "content_15",
      "likes_count": 81,
      "post_user": {
        "id": 337,
        "profile": {
          "display_id": "kyoko",
          "display_name": "ボブ",
          "icon_url": null
        }
      }
    }
  ]
}
```
