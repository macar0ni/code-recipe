#!/usr/bin/env ruby

abort '入力してください' unless ARGV[0]
celsius = ARGV[0]
fahrenheit = celsius.to_i * 1.8 + 32
puts "#{celsius} 摂氏は #{fahrenheit} 華氏です"