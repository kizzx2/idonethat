# iDoneThat

Heroku ready Ruby on Rails iDoneThis clone.

## Installation

[![Deploy](https://www.herokucdn.com/deploy/button.png)](https://heroku.com/deploy)

- `heroku addons:open scheduler` to schedule `bundle exec cron:prompt` and `bundle exec cron:digest` once per day
- Set your time zone in `config/application.rb`
