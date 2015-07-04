## GET /api/v1/asks/rand
Return 200.

### Example

#### Request
```
GET /api/v1/asks/rand?limit=5 HTTP/1.1
Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
Authorization: Token token="a8c71c0c4a3ea3779811fc2d5ab68dbf70131017a428db733ee142b87be410b39791800f8038c9d4"
Content-Length: 0
Content-Type: application/x-www-form-urlencoded
Host: www.example.com
```

#### Response
```
HTTP/1.1 200
Cache-Control: max-age=0, private, must-revalidate
Content-Length: 582
Content-Type: application/json; charset=utf-8
ETag: W/"b254734afb00741bebca79e5ac103543"
X-Content-Type-Options: nosniff
X-Frame-Options: SAMEORIGIN
X-Request-Id: 127bdb11-78d1-4b11-a5ed-2de3e15098c1
X-Runtime: 0.049971
X-XSS-Protection: 1; mode=block

{
  "asks": [
    {
      "id": 635,
      "category": null,
      "content": "I'll index the 1080p JSON protocol, that should alarm the CSS driver!"
    },
    {
      "id": 637,
      "category": null,
      "content": "The THX port is down, copy the virtual program so we can program the SMTP microchip!"
    },
    {
      "id": 639,
      "category": null,
      "content": "The SQL interface is down, back up the virtual interface so we can generate the HDD pixel!"
    },
    {
      "id": 640,
      "category": null,
      "content": "You can't hack the bus without bypassing the primary XSS matrix!"
    },
    {
      "id": 641,
      "category": null,
      "content": "Try to transmit the COM bus, maybe it will copy the online panel!"
    }
  ]
}
```

## GET /api/v1/asks/rand
Return 400.

### Example

#### Request
```
GET /api/v1/asks/rand HTTP/1.1
Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
Authorization: Token token="8b3105fbb4f49e8a7a173ce1a732b1dbe16e5d7b29c7b1b4d5265627ce75cbe4fadb05d9b89bece9"
Content-Length: 0
Content-Type: application/x-www-form-urlencoded
Host: www.example.com
```

#### Response
```
HTTP/1.1 400
Cache-Control: no-cache
Content-Length: 39
Content-Type: application/json; charset=utf-8
X-Content-Type-Options: nosniff
X-Frame-Options: SAMEORIGIN
X-Request-Id: 181b5f49-d045-4007-8d10-449c53fab0d0
X-Runtime: 0.018403
X-XSS-Protection: 1; mode=block

{
  "message": "Request parameter invalid"
}
```
