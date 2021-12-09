require "twitter"

client = Twitter::REST::Client.new do |config|
  config.consumer_key = 'XXXXXXXXXXXXXXXXXXXXXXXX'
  config.consumer_secret = 'XXXXXXXXXXXXXXXXXXXXXXXX'
  config.access_token = 'XXXXXXXXXXXXXXXXXXXXXXXX'
  config.access_token_secret = 'XXXXXXXXXXXXXXXXXXXXXXXX'
end

def follow(client)
  client.search("プログラマー").take(15).each do |tweet|

    client.follow(tweet.user.id)
  end
end

loop do
follow(client)
sleep 930
end