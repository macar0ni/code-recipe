# 構造体を作成するにはStructクラスを使う。
# 構造体とは、複数のデータをまとめて格納する箱。
# Structクラスを用いると、構造体のメンバーに対するアクセサメソッドが自動的に定義される。

# 使う場面は以下の通り
# ・そのクラスが複数のデータを格納する箱としての役割しか持たないとき
# ・データ構造をクラスとして表現したいとき
# ・テストやデバッグ時にダミーオブジェクトを作成したいとき

# Ruby 3.2では構造体をキーワード引数で作成できるようになった。
Rectangle = Struct.new(:width, :height)
rectangle = Rectangle.new(height: 20, width: 10)

puts "width: #{rectangle.width}"
puts "height: #{rectangle.height}"

rectangle.each do |value|
    puts value
end

rectangle.each_pair do |key, value|
    puts key
    puts key.class
    puts value
    puts value.class
end

p rectangle
p rectangle.to_h.class
