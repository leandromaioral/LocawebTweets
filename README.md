# README

See the latest tweets about **Locaweb**, ordered by relevance.

## Setup the project

1. `$ git clone <REPOSITORY_URL> LocawebTweets` - Clone the project
2. `$ cd LocawebTweets`

## Setup RVM

1. `$ gpg --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3`
2. `\curl -sSL https://get.rvm.io | bash -s stable`
3. `rvm install ruby-2.3.3`
3. `rvm 2.3.3@locaweb_tweets`

## Setup Bundler

1. `gem install bundler`
2. `bundle install`

## Configuration

Set this environment variables:

1. `TWITTER_CONSUMER_KEY` | `$ export TWITTER_CONSUMER_KEY='value'`
2. `TWITTER_CONSUMER_SECRET` | `$ export TWITTER_CONSUMER_SECRET='value'`
3. `TWITTER_ACCESS_TOKEN` | `$ export TWITTER_ACCESS_TOKEN='value'`
4. `TWITTER_ACCESS_SECRET` | `$ export TWITTER_ACCESS_SECRET='value'`

Get this values at: https://apps.twitter.com/

## Database creation
`$ bundle exec rails db:setup`

## Running the project
1. `$ bundle exec rails server`
2. Open the browser at url: http://localhost:3000

## Running the test suite
  `$ bundle exec rspec`
