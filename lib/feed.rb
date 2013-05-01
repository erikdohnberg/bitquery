require 'rubygems'
require 'oauth'
require 'json'

class Feed

  def self.get_tweets(ht2)

    @ht1 = 'bithack'
    #Make  @ht2 whatever the user input is

    #@ht2 = 'helloworld'

    # Now you will fetch /1.1/statuses/user_timeline.json,
    # returns a list of public Tweets from the specified
    # account.
    # baseurl = "https://api.twitter.com"
    # path    = "/1.1/statuses/user_timeline.json"
    # query   = URI.encode_www_form(
    #     "screen_name" => "cleejin",
    #     "text" => "motivation",
    #     "count" => 10,
    # )
    address = URI("https://search.twitter.com/search.json?q=%23#{ht2}&rpp=20&include_entities=true&result_type=mixed")
    # address = URI("#{baseurl}#{path}?#{query}")
    request = Net::HTTP::Get.new address.request_uri 

    # Print data about a list of Tweets
    # def print_timeline(tweets)
    #   # ADD CODE TO ITERATE THROUGH EACH TWEET AND PRINT ITS TEXT
    # 	tweets.each do |tweet|
    #     puts tweet["text"]
    #     end
    # end

    # Set up HTTP.
    http             = Net::HTTP.new address.host, address.port
    http.use_ssl     = true
    http.verify_mode = OpenSSL::SSL::VERIFY_PEER

    # If you entered your credentials in the first
    # exercise, no need to enter them again here. The
    # ||= operator will only assign these values if
    # they are not already set.
    # consumer_key = OAuth::Consumer.new(
    #     "Ku9aIHZepkV7vgKnBQTd0w",
    #     "rqiq7oLg3eCZL40gi6KFpYIyVHnl8aE9mOfIavQkgVw")
    # access_token = OAuth::Token.new(
    #     "572582957-kMS1ohnBaSZxT4xXBdh7db7A3faGifVvxjJE9Vtc",
    #     "HeM9K5exMd415zHqz7XLFxmhvaqvjbVDVcK8nrUoKvk")

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
