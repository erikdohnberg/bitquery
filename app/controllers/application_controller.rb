class ApplicationController < ActionController::Base
  protect_from_forgery

  private

  def twitter
    @twitter = Twitter::Client.new(oauth_token: oauth_token, oauth_token_secret: oauth_secret)
  end

  def current_user
  	@current_user ||= User.find(session[:user_id]) if session[:user_id]
  end
  helper_method :current_user, :twitter
end
