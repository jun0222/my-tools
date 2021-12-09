require "twitter"

#この辺の詳しいことは前回の記事へ--------------------------
client = Twitter::REST::Client.new do |config|
  config.consumer_key = 'XXXXXXXXXXXXXXXXXXXXXXXX'
  config.consumer_secret = 'XXXXXXXXXXXXXXXXXXXXXXXX'
  config.access_token = 'XXXXXXXXXXXXXXXXXXXXXXXX'
  config.access_token_secret = 'XXXXXXXXXXXXXXXXXXXXXXXX'
end
#-----------------------------------------------------

loop do
  File.open("tweets.txt", "r") do |bot|
    @bots = bot.read.split("\n")
  end
  tweet = @bots.sample
  sleep_time = 1 + rand(6)
  t = Time.now
  puts "#{tweet} (#{t}) next (#{t + sleep_time})"

  client.update tweet

  sleep sleep_time
end
