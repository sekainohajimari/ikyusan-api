## GET /api/v1/notifications
Success.

### Example

#### Request
```
GET /api/v1/notifications HTTP/1.1
Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
Authorization: Token token="ce284fe3d44eb8e04c6927ecc5b10714ddb960d15a62f8ab41fd0dab03b73ae6faa3218888e031ee"
Content-Length: 0
Content-Type: application/x-www-form-urlencoded
Host: www.example.com
```

#### Response
```
HTTP/1.1 200
Cache-Control: max-age=0, private, must-revalidate
Content-Length: 1023
Content-Type: application/json; charset=utf-8
ETag: W/"10a8896cbb10a7ad3dd3fa4631021dd5"
X-Content-Type-Options: nosniff
X-Frame-Options: SAMEORIGIN
X-Request-Id: d2f2ddd8-63fd-482d-a6df-0cdf73453e24
X-Runtime: 0.019811
X-XSS-Protection: 1; mode=block

{
  "notification_messages": [
    {
      "id": 210,
      "open": 0,
      "message": "We need to navigate the solid state JSON protocol!"
    },
    {
      "id": 211,
      "open": 0,
      "message": "I'll compress the bluetooth SMTP firewall, that should capacitor the HDD panel!"
    },
    {
      "id": 212,
      "open": 0,
      "message": "Use the solid state COM bandwidth, then you can transmit the auxiliary monitor!"
    },
    {
      "id": 213,
      "open": 0,
      "message": "We need to synthesize the digital THX panel!"
    },
    {
      "id": 214,
      "open": 0,
      "message": "Try to calculate the XSS driver, maybe it will override the haptic sensor!"
    },
    {
      "id": 215,
      "open": 0,
      "message": "You can't connect the feed without generating the online SMS firewall!"
    },
    {
      "id": 216,
      "open": 0,
      "message": "Try to program the JBOD card, maybe it will override the solid state monitor!"
    },
    {
      "id": 217,
      "open": 0,
      "message": "We need to bypass the bluetooth SCSI transmitter!"
    },
    {
      "id": 218,
      "open": 0,
      "message": "Try to back up the PCI pixel, maybe it will hack the neural bandwidth!"
    },
    {
      "id": 219,
      "open": 0,
      "message": "Try to transmit the XSS application, maybe it will bypass the mobile feed!"
    }
  ]
}
```
