require 'rubygems'
require 'oauth'
require 'json'

class Feed

  def self.get_tweets()

    @ht1 = 'bithack'
    #Make  @tweet_input whatever the user input is

    @ht2 = 'bitquery'

    # Now you will fetch /1.1/statuses/user_timeline.json,
    # returns a list of public Tweets from the specified
    # account.
    address = URI("https://stream.twitter.com/search.json?q=%23#{@ht2}&rpp=20&include_entities=true&result_type=mixed")
    # address = URI("#{baseurl}#{path}?#{query}")
    request = Net::HTTP::Get.new address.request_uri 

    # Set up HTTP.
    http             = Net::HTTP.new address.host, address.port
    http.use_ssl     = true
    http.verify_mode = OpenSSL::SSL::VERIFY_PEER

    # Issue the request.
    # request.oauth! http, consumer_key, access_token
    http.start
    response = http.request request

    # Parse and print the Tweet if the response code was 200
    tweets = nil
    if response.code == '200' then
      tweets = JSON.parse(response.body)["results"]

    # print_timeline(tweets)
    else 
      raise response.inspect
    	print response.inspect
    end
    return tweets

  end

end
