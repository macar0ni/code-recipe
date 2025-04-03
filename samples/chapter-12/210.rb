# begin
#     1 / 0
# rescue ZeroDivisionError => e
#     p e
# end


# begin
#     p undefined_name
# rescue NameError => e
#     p e
# end

# begin
#     array = [1, 2]
# # !fetchメソッドについて
# # 配列の指定したインデックスにある要素の取得するためのメソッド。
# # 通常のインデックスアクセスと似ているが、若干異なる
# # インデックスの範囲外の場合、例外を発生させる
# # デフォルト値を設定できる
# p array.fetch(3, default_num = 0)
# # ブロックを利用でき、範囲外アクセス時にブロックを使って動的に値を生成できる。
#     # array.fetch(3)
# # rescue StandardError => eと同じ意味
# # !StandardErrorが省略されてるが省略されてる
# rescue => e
#     p e
# end

# !メソッド内にrescueを書く場合、beginは省略できる。メソッド全体がbeginとみなされるため。ブロック文も同様。
# 一方、トップレベルでは（スクリプト直下では）省略できない。
def division(left, right)
    left / right
rescue
    "除算できません"
end

puts "10/2"
puts division(10, 2)
puts "10/0"
puts division(10, 0)

2.downto(0) do |num|
    puts "10/#{num}"
    puts 10/num
rescue
    puts "除算できません"
end