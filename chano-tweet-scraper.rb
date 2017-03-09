require 'twitter'
require './tweet-creds'

hashtags = [
  'chano4mayor',
  'chance4mayor',
  'chanoformayor',
  'chanceformayor',
]

last_tweet_date = @client.search('chanceformayor').to_a[-1].created_at.to_s.split(' ')[0]

total = hashtags.inject(0) do |sum, h|
  sum + @client.search(h, result_type: 'recent').count
end

puts "#{total}|#{last_tweet_date}|#{Time.now.to_s.split(' ')[0]}"
