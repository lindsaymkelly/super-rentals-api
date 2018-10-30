# Super Rentals API

This is a basic Rails API built with the (http://jsonapi-rb.org)[JSONAPI-rb] gem. It can be used on its own or interacted with through my Super Rentals (https://github.com/lindsaymkelly/super-rentals)[Ember App]

## To Setup

* `git clone <repository-url>`

* `cd super-rentals-api`

* `bundle install`

* To create Database and populate with sample data: `rake db:create` then `rake db:migrate` and `rake db:seed`

* To run the app: `rails s`

You can see the returned data by visiting (http://localhost:3000/api/v1/rentals)[http://localhost:3000/api/v1/rentals] or by setting up the previously mentioned Ember App

Recommended Queries:

* visit `/api/v1/rentals?sort=city` to see the rentals listed by city (city can be subbed out for any of the attributes)

* visit `/api/v1/rentals?filter[city]=New York` to see properties in New York (can be changed with any city, but only city filtering is currently allowed)

* paginate the results by visiting `/api/v1/rentals?page[size]=2&page[number]=2`

More updates to come as I continue to build!
