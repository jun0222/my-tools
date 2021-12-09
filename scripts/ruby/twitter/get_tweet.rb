require "twitter"

client = Twitter::REST::Client.new do |config|
  config.consumer_key = 'XXXXXXXXXXXXXXXXXXXXXXXX'
  config.consumer_secret = 'XXXXXXXXXXXXXXXXXXXXXXXX'
  config.access_token = 'XXXXXXXXXXXXXXXXXXXXXXXX'
  config.access_token_secret = 'XXXXXXXXXXXXXXXXXXXXXXXX'
end

def get_tweet(client,word,num)
  client.search(word).take(num).each do |tweet|
    puts tweet.text
  end
end

get_tweet(client,"from:twitter min_faves:100",200)
