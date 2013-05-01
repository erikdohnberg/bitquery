Twitter.configure do |config|
  config.consumer_key = ENV["TWITTER_CONSUMER_KEY"]
  config.consumer_secret = ENV["TWITTER_CONSUMER_SECRET"]
  config.oauth_token = ENV["TWITTER_OAUTH_TOKEN"]
  config.oauth_token_secret = ENV["TWITTER_TOKEN_SECRET"]
end
# Find the user's profile image who twat
# Twitter.favorites.first.attrs[:user][:profile_image_url]
# Find all the properties of the user data:
# Twitter.favorites.first.attrs[:user].map{|k, v| k}
