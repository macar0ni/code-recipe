# 構造体において、メンバーの値を変更できないようにしたデータ構造Dataが使えるようになった。
# 意図せずメンバーの値を書き換えてしまう不具合の混入を右成ダリ、オブジェクトをスレッドセーフに扱える。
Product = Data.define(:name, :price)

plate = Product.new(name: 'plate', price: 1000)
spoon = Product.new(name: 'spoon', price: 1500)
puts plate
puts spoon

puts plate.name
plate.name = 'plate2'
puts plate