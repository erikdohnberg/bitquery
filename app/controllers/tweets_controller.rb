class TweetsController < ApplicationController
  def index
    @tweets = Feed.get_tweets
    @tweet = Tweet.new
  end

  def new
    @tweet = Tweet.new
  end

  def create  
    # Post a new tweet
    twitter.update(params[:tweet][:content])
    redirect_to '/'
  end
end
