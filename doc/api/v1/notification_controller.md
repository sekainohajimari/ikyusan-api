## GET /api/v1/notifications
Success.

### Example

#### Request
```
GET /api/v1/notifications HTTP/1.1
Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
Authorization: Token token="e4aa14a65dfea19b44cfa01b55d684226eb0054ad87c899c650cd213e7cc21717039c5e3eed69663"
Content-Length: 0
Content-Type: application/x-www-form-urlencoded
Host: www.example.com
```

#### Response
```
HTTP/1.1 200
Cache-Control: max-age=0, private, must-revalidate
Content-Length: 1184
Content-Type: application/json; charset=utf-8
ETag: W/"3022efb02046ce0d4c1e636c07b1b932"
X-Content-Type-Options: nosniff
X-Frame-Options: SAMEORIGIN
X-Request-Id: e3b3f67f-f7ee-4dd3-809c-c1ff316146d9
X-Runtime: 0.025645
X-XSS-Protection: 1; mode=block

{
  "notification_messages": [
    {
      "id": 445,
      "open": false,
      "message": "You can't reboot the card without transmitting the multi-byte CSS panel!"
    },
    {
      "id": 446,
      "open": false,
      "message": "If we reboot the sensor, we can get to the JBOD sensor through the open-source RSS array!"
    },
    {
      "id": 447,
      "open": false,
      "message": "I'll parse the mobile PCI hard drive, that should transmitter the AI interface!"
    },
    {
      "id": 448,
      "open": false,
      "message": "compressing the bus won't do anything, we need to transmit the online HDD pixel!"
    },
    {
      "id": 449,
      "open": false,
      "message": "The SMS transmitter is down, index the neural protocol so we can compress the IB bus!"
    },
    {
      "id": 450,
      "open": false,
      "message": "If we compress the pixel, we can get to the TCP array through the digital CSS bus!"
    },
    {
      "id": 451,
      "open": false,
      "message": "Use the neural JBOD capacitor, then you can index the bluetooth bus!"
    },
    {
      "id": 452,
      "open": false,
      "message": "Try to back up the AGP array, maybe it will back up the wireless sensor!"
    },
    {
      "id": 453,
      "open": false,
      "message": "quantifying the matrix won't do anything, we need to synthesize the open-source COM array!"
    },
    {
      "id": 454,
      "open": false,
      "message": "Use the auxiliary SDD card, then you can override the solid state bus!"
    }
  ]
}
```
