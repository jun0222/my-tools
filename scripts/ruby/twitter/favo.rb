require "twitter"

client = Twitter::REST::Client.new do |config|
  config.consumer_key = 'XXXXXXXXXXXXXXXXXXXXXXXX'
  config.consumer_secret = 'XXXXXXXXXXXXXXXXXXXXXXXX'
  config.access_token = 'XXXXXXXXXXXXXXXXXXXXXXXX'
  config.access_token_secret = 'XXXXXXXXXXXXXXXXXXXXXXXX'
end

def favo(client,word,num)
  client.search(word).take(num).each do |tweet|
    client.favorite(tweet.id)
		puts tweet.text
  end
end

favo(client,"from:twitter",382)
