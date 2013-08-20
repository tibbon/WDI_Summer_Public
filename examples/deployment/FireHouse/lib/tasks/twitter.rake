namespace :twitter do
  desc "Streams in from twitter continuously"
  task stream: :environment do
  	TweetStream.configure do |config|
		  config.consumer_key       = ENV['CONSUMER_KEY']
		  config.consumer_secret    = ENV['CONSUMER_SECRET']
		  config.oauth_token        = ENV['ACCESS_TOKEN']
		  config.oauth_token_secret = ENV['ACCESS_SECRET']
		  config.auth_method        = :oauth
		end

		i = 0
		TweetStream::Client.new.sample do |status|
		  # USER
		  user = User.find_or_create_by_u_id(status.user.id)
			user.name = status.user.name
			user.screen_name = status.user.screen_name
			user.location = status.user.location
			user.url = status.user.url
			user.description = status.user.description
			user.is_protected = status.user["protected"]
			user.followers_count = status.user.followers_count
			user.friends_count = status.user.friends_count
			user.listed_count = status.user.listed_count
			user.favourites_count = status.user.favourites_count
			user.utc_offset = status.user.utc_offset
			user.time_zone = status.user.time_zone
			user.geo_enabled = status.user.geo_enabled
			user.verified = status.user.verified
			user.statuses_count = status.user.statuses_count
			user.lang = status.user.lang
			user.contributors_enabled = status.user.contributors_enabled
			user.is_translator = status.user.is_translator
			user.save

			# TWEET
			tweet = Tweet.new

			tweet.t_id = status.id
			tweet.text = status.text
			tweet.user = user
			tweet.source = status.source
			tweet.truncated = status.truncated
			tweet.in_reply_to_status_id = status.in_reply_to_status_id
			tweet.in_reply_to_user_id = status.in_reply_to_user_id
			tweet.in_reply_to_screen_name = status.in_reply_to_screen_name
			tweet.geo = status.geo
			tweet.place = status.place
			tweet.retweet_count = status.retweet_count
			tweet.favorite_count = status.favorite_count
			tweet.favorited = status.favorited
			tweet.retweeted = status.retweeted
			tweet.lang = status.lang
			tweet.save
			puts i
			i += 1
		end
  end

	desc "Show the number of Tweets in the database"
	task count_tweets: :environment do
		puts Tweet.count
	end

	desc "Show the number of Twitter Users in the database"
	task count_twitter_users: :environment do
		puts User.count
	end

end
