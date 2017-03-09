require 'twitter'
require './tweet-creds'

hashtags = [
  'chano4mayor',
  'chance4mayor',
  'chanoformayor',
  'chanceformayor',
]

total = hashtags.inject(0) do |sum, h|
  sum + @client.search(h, result_type: 'recent').count
end

puts "#{total}|#{Time.now.to_s.split(' ')[0]}"
