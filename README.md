# README

# _Travel Api_

#### _Ruby on Rails Bulding REST API, 07/19/2017_

#### By _**Chitroopa Manikkavasagam**_

## Description

Travel API returns details and reviews about tourist destinations

### REST routes


| Request| Path | comments|
|--------|------|---------|
| GET | http://localhost:3000/api/v1/destinations | gives all destinations with review |
| GET | http://localhost:3000/api/v1/destinations?get_random=yes | gives random destinations with review |
| GET | http://localhost:3000/api/v1/destinations?most_popular=yes | gives destinations with higher rating |
| GET | http://localhost:3000/api/v1/destinations?city=CITYNAME | gives all destinations for the given city (replace CITYNAME with any city name|
| GET | http://localhost:3000/api/v1/destinations?country=COUNTRYNAME | gives all destinations for the given country (replace COUNTRYNAME with any country name|
| POST | http://localhost:3000/api/v1/destinations | create a new destination add the following params :name, :country, :city,:rating|
| PATCH | http://localhost:3000/api/v1/destinations/{destination_id} | update destination add any of the following params :name, :country, :city,:rating|
| DELETE | http://localhost:3000/api/v1/destinations/{destination_id} | delete the destination |


## Installation
------------

```
$ git clone https://github.com/Chitroopa/travel-api
$ cd travel-api
```

Install required gems:
```
$ bundle install
```

Start postgres:
```
$ psql
```

Create databases:
```
$ rails db:create
$ rails db:migrate
$ rails db:seed
```

Start the webserver:
```
$ rails s
```

Navigate to `localhost:3000` in browser.


## Known Bugs

_NA_

## Technologies Used

_Ruby on Rails_

### License

*MIT*

Copyright (c) 2017 **_Chitroopa Manikkavasagam_**
