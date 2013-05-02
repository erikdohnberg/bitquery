class TweetsController < ApplicationController
  def index
    @tweets = Feed.get_tweets
  end

  def new
    @tweet = Tweet.new
  end

  def create  
    # Post a status update
    twitter.update(params[:tweet][:content])# Everything in these bracets gets posted to Twitter. SO HOW DO I REFERENCE THINGS INSIDE IT?!
    redirect_to '/'
  end
end
