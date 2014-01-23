sinatra-address-book
====================
An example program of various Sinatra functionality.

Installation
============

Install Ruby gems:
```shell
bundle install --path=./vendor/bundle
```

Develop
=======

Run the server:
```shell
bundle exec rackup -p 3000
```

Heroku
======

Database setup:

```shell
heroku addons:add heroku-postgresql:dev
```

Note the name of the environment variable, e.g. HEROKU_POSTGRESQL_ROSE_URL

```shell
heroku pg:promote HEROKU_POSTGRESQL_COLOR_URL
```

