p (1..5).to_a
p (1...5).to_a
p (1..10).include?(3..5) # これはfalseなぜならinclude?メソッドは引数に渡した値が範囲に含まれているかどうかを調べるメソッドだから

# これらはRangeクラス
# Rangeクラスには、繰り返しを扱うメソッド群のEnumerableモジュールが含まれているため、配列のように扱える。
(1..3).each { |i| puts i}
puts (1..3).inject(:+)
p Range.new(1, 5)

p ('a'..'f').to_a

time_range  = Time.new(2022, 1, 2, 1, 1)..Time.new(2022, 1, 2, 1, 5)
p time_range.include?(Time.new(2022, 1, 2, 1, 3)) # true

require 'date'
date_range = Date.new(2022, 1, 2)..Date.new(2022, 1, 3)
date_range.each do |date|
    puts date
end