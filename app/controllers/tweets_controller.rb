class TweetsController < ApplicationController
  def index
    @tweets = Feed.get_tweets
  end

  def new
  end

  def create
  end
end
