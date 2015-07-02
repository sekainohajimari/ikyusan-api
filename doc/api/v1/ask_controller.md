## GET /api/v1/asks/rand
Return 200.

### Example

#### Request
```
GET /api/v1/asks/rand?limit=5 HTTP/1.1
Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
Authorization: Token token="41088d014f3904b917b98db27fc90589ee6344d7d8766148446f6215b64534c748585f023ddd14af"
Content-Length: 0
Content-Type: application/x-www-form-urlencoded
Host: www.example.com
```

#### Response
```
HTTP/1.1 200
Cache-Control: max-age=0, private, must-revalidate
Content-Length: 543
Content-Type: application/json; charset=utf-8
ETag: W/"8127be037631dacfd80ae3506dbe1a5c"
X-Content-Type-Options: nosniff
X-Frame-Options: SAMEORIGIN
X-Request-Id: 6aefe088-a5f3-4ede-902a-dafcc49c0993
X-Runtime: 0.054067
X-XSS-Protection: 1; mode=block

{
  "asks": [
    {
      "id": 135,
      "category": null,
      "content": "You can't reboot the program without overriding the optical USB bandwidth!"
    },
    {
      "id": 136,
      "category": null,
      "content": "Try to copy the PCI sensor, maybe it will transmit the virtual bus!"
    },
    {
      "id": 138,
      "category": null,
      "content": "Use the online HDD interface, then you can compress the haptic driver!"
    },
    {
      "id": 142,
      "category": null,
      "content": "You can't input the monitor without backing up the cross-platform GB monitor!"
    },
    {
      "id": 144,
      "category": null,
      "content": "We need to copy the solid state ADP firewall!"
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
Authorization: Token token="5515c14386a48fd1d423fc2b85a0b9d9682c30c942eb8ed845cfd35bace85c31a3d0dfc2d57400e2"
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
X-Request-Id: a552686b-ca54-496b-98f2-7a7db8cb678e
X-Runtime: 0.016499
X-XSS-Protection: 1; mode=block

{
  "message": "Request parameter invalid"
}
```
