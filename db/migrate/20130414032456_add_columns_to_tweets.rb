class AddColumnsToTweets < ActiveRecord::Migration
  def change
  	add_column :tweets, :content, :text
  	add_column :tweets, :screen_name, :string
  	add_column :tweets, :tweet_id, :string
  end
end
