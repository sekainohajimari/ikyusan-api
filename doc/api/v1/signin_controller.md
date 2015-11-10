## POST /api/v1/signin
Return 200.

### Example

#### Request
```
POST /api/v1/signin HTTP/1.1
Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
Content-Length: 77
Content-Type: application/x-www-form-urlencoded
Host: www.example.com

uuid=66077016-b10e-4d03-af56-5da4ecc7f580&hv=c2f0bebc08bee6edce242857ae354098
```

#### Response
```
HTTP/1.1 200
Cache-Control: max-age=0, private, must-revalidate
Content-Length: 257
Content-Type: application/json; charset=utf-8
ETag: W/"9c4cd3568f02546a679de9f29f26d7d3"
X-Content-Type-Options: nosniff
X-Frame-Options: SAMEORIGIN
X-Request-Id: c43943c9-ad03-43dc-8f80-248bb40aeb30
X-Runtime: 0.138946
X-XSS-Protection: 1; mode=block

{
  "id": 196,
  "token": "6bc2e6ca2b63c52408ec26b83593a4b65a452374a557f70383781492393dda83703c0f9277a633ea",
  "profile": {
    "display_id": "qN1QfkVL",
    "display_name": "ヨシザワ タカトシ",
    "icon_url": "http://example.com/default_icon.png",
    "in_use_default_icon": false
  }
}
```
