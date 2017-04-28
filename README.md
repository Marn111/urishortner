# urishortner

Application is hosted on Heroku Server.

## APIs
------------
[Url Shortner api](http://urishortner.herokuapp.com/api/urls/shortner)
method: Post
Parameters: {full_url: "http://www.gogle.com"}
=> {
  "id": 1,
  "full_url": "http://www.google.com",
  "full_url_hash": "70ff3d2827792ec4a7de16ab0e9398ec",
  "short_url": "http://urishortner.herokuapp.com/70ff3d2",
  "created_at": "2017-04-26T08:32:04.267Z",
  "updated_at": "2017-04-26T08:32:04.267Z"
}

[Go to full address](http://urishortner.herokuapp.com/70ff3d2)
method: Get

[Get visits of by short_url](http://urishortner.herokuapp.com/api/urls/:id/visits)
method: Get
=> [
  {
    "id": "9cb2d01e-c3f9-4f77-9e77-af0fae9ece4d",
    "visitor_id": "7854e1f2-0156-48f0-b863-cbb4d58acd32",
    "ip": "127.0.0.1",
    "user_agent": "Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:41.0) Gecko/20100101 Firefox/41.0",
    "referrer": null,
    "landing_page": "http://localhost:3000/70ff3d2",
    "user_id": null,
    "referring_domain": null,
    "search_keyword": null,
    "browser": "Firefox",
    "os": "Ubuntu",
    "device_type": "Desktop",
    "screen_height": null,
    "screen_width": null,
    "country": "Reserved",
    "region": null,
    "city": null,
    "postal_code": null,
    "latitude": "0.0",
    "longitude": "0.0",
    "utm_source": null,
    "utm_medium": null,
    "utm_term": null,
    "utm_content": null,
    "utm_campaign": null,
    "started_at": "2017-04-28T03:28:56.641Z",
    "url_id": 14
  },
  .
  .
  .
]


## Admin
------------

Admin panel is created in order to check saved data.

[Go to Admin Panel](http://urishortner.herokuapp.com/admin)


## Home Page
------------

[Go to Home page](http://urishortner.herokuapp.com)


Specifications

* Ruby '2.2.2'
* Rails '4.2.6'
* Postgres '9.6.1'
* Heroku server
* Linux OS
* HTML, CSS, Javascript, Jquery