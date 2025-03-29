require 'net/http'
uri = URI.parse('http://www.ruby-lang.org/ja/')
puts Net::HTTP.get(uri)