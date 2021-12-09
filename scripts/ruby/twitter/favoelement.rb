require "twitter"

client = Twitter::REST::Client.new do |config|
  config.consumer_key = 'XXXXXXXXXXXXXXXXXXXXXXXX'
  config.consumer_secret = 'XXXXXXXXXXXXXXXXXXXXXXXX'
  config.access_token = 'XXXXXXXXXXXXXXXXXXXXXXXX'
  config.access_token_secret = 'XXXXXXXXXXXXXXXXXXXXXXXX'
end

# USERNAME = "twitter" #自分のユーザー名を入れる　@マーク以降の名前
client.search("エンジニア").take(50).each do |tweet|

  client.favorite(tweet.id)

end


#client_streaming.user do |object|
#  case object
#  when Twitter::Tweet
#    if (/あ/ =~ object.text) && (object.user.screen_name != USERNAME) # いいねしたいキーワードを(/あ/)の部分に　入れる
#      puts object.user.screen_name + ':' + object.text
#      client_rest.favorite(object.id)
#    end
#  end
#end
