# thenはレシーバを引数としてブロック内の処理を実行し、ブロックの結果を返す。

require 'uri'
require 'net/http'
require 'json'

puts 'https://api.github.com/repos/ruby/ruby'
.then { |str| URI.parse(str)}
.then { |url| Net::HTTP.get(url)}
.then { |response| JSON.parse(response)}
.then { |json| json['description']}