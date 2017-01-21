require 'rails_helper'

RSpec.describe LocaTweets do
  describe '::SEARCH_QUERY' do
    it { expect(LocaTweets::SEARCH_QUERY).to eq('locaweb') }
  end

  describe '::RESULT_TYPE' do
    it { expect(LocaTweets::RESULT_TYPE).to eq('recent') }
  end

  describe '::LOCAWEB_USER_ID' do
    it { expect(LocaTweets::LOCAWEB_USER_ID).to eq(15_020_362) }
  end

  let(:twitter_client) { instance_double('Twitter::REST::Client') }
  let(:loca_tweets)    { LocaTweets.new }
  let(:tweet) do
    tweet = OpenStruct.new
    tweet.user = OpenStruct.new
    tweet.user.id = 1
    tweet.in_reply_to_user_id = 1
    tweet
  end

  describe '#initialize' do
    let(:search_results) { [tweet, tweet, tweet] }

    before do
      expect(Twitter::REST::Client).to receive(:new).and_return twitter_client
      expect(twitter_client).to receive(:search).and_return search_results
    end

    subject { loca_tweets.tweets }

    it { is_expected.to eq search_results }
  end

  describe '#sorted_by_prioriry' do
    let(:tweet1) do
      tweet1 = OpenStruct.new
      tweet1.user = OpenStruct.new
      tweet1.user.followers_count = 1
      tweet1.retweet_count = 0
      tweet1.favorite_count = 0
      tweet1
    end
    let(:tweet2) do
      tweet2 = OpenStruct.new
      tweet2.user = OpenStruct.new
      tweet2.user.followers_count = 10
      tweet2.retweet_count = 0
      tweet2.favorite_count = 0
      tweet2
    end
    let(:tweet3) do
      tweet3 = OpenStruct.new
      tweet3.user = OpenStruct.new
      tweet3.user.followers_count = 1
      tweet3.retweet_count = 0
      tweet3.favorite_count = 0
      tweet3
    end
    let(:search_results)          { [tweet1, tweet2, tweet3] }
    let(:search_results_in_order) { [tweet2, tweet3, tweet1] }

    before do
      expect(Twitter::REST::Client).to receive(:new).and_return twitter_client
      expect(twitter_client).to receive(:search).and_return search_results
    end

    subject { loca_tweets.sorted_by_prioriry }

    it { is_expected.to eq search_results_in_order }
  end
end
