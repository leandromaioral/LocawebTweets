class LocaTweets
  SEARCH_QUERY    = 'locaweb'.freeze
  RESULT_TYPE     = 'recent'.freeze
  LOCAWEB_USER_ID = 15_020_362

  attr_reader :tweets

  def initialize
    @tweets = twitter_client.search(SEARCH_QUERY, result_type: RESULT_TYPE).reject do |tweet|
      tweet.user.id == LOCAWEB_USER_ID || tweet.in_reply_to_user_id == LOCAWEB_USER_ID
    end
  end

  def sorted_by_prioriry
    @tweets.sort_by do |tweet|
      [tweet.user.followers_count, tweet.retweet_count, tweet.favorite_count]
    end.reverse
  end

  private

  def twitter_client
    Twitter::REST::Client.new do |config|
      config.consumer_key        = ENV['TWITTER_CONSUMER_KEY']
      config.consumer_secret     = ENV['TWITTER_CONSUMER_SECRET']
      config.access_token        = ENV['TWITTER_ACCESS_TOKEN']
      config.access_token_secret = ENV['TWITTER_ACCESS_SECRET']
    end
  end
end
