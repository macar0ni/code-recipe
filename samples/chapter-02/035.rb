p (1..5).to_a
p (1...5).to_a
p Range.new(1, 5).to_a
p (1..10).include?(3..5) # これはfalseなぜならinclude?メソッドは引数に渡した値が範囲に含まれているかどうかを調べるメソッドだから

# これらはRangeクラス
# Rangeクラスには、繰り返しを扱うメソッド群のEnumerableモジュールが含まれているため、配列のように扱える。
(1..3).each { |i| puts i}
puts (1..3).inject(:+)