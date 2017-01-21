class TweetsController < ApplicationController
  def index
    @tweets = LocaTweets.new.sorted_by_prioriry
  end
end
