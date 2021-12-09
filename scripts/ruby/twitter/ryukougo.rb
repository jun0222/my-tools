require "twitter"

client = Twitter::REST::Client.new do |config|
	config.consumer_key = 'XXXXXXXXXXXXXXXXXXXXXXXX'
	config.consumer_secret = 'XXXXXXXXXXXXXXXXXXXXXXXX'
	config.access_token = 'XXXXXXXXXXXXXXXXXXXXXXXX'
	config.access_token_secret = 'XXXXXXXXXXXXXXXXXXXXXXXX'
end


def getTweet(client,word,num,array,shortFlg)
	client.search(word).take(num).each do |tweet|
		if shortFlg == 1
			array.push({text: tweet.text[0..9] + "...", favo: tweet.favorite_count})
		else
			array.push({text: tweet.text, favo: tweet.favorite_count})
		end
	end
end

tweets = []
word = "エンジニア"
getNum = 30000
getTweet(client,word,getNum,tweets,0)
tweets.sort_by!{ |twi| twi[:favo] }.reverse!

roopNum = tweets.length - 1
for num in 0..roopNum do  
	if tweets[num][:favo] >= 10
		File.open("ITfashion.txt", "a") do |f|
			if tweets[num][:text].include?("#")
        f.print (tweets[num][:text]).delete(word)
			else
        f.print (tweets[num][:text])
			end
        f.print " "
		f.print (tweets[num][:favo]) 
		f.puts "いいね"
    end
	end
end

