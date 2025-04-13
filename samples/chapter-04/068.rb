# 配列の要素数の確認
# length, size, countメソッド
# lengthとsizeは同じメソッドのエイリアス(別名)

# ?countに引数を渡すと、配列の中の特定の要素の個数を数える。
# ?値かブロックを渡して、値の場合は一致する要素数を、ブロックの場合は式が真になる要素数を返す。
# 引数ナシなら配列の全要素数を返す

array = [1, 2, 3, 3, 4, 5]
p array.count
p array.count(2)
p array.count(3)
p array.count{ |num| num.odd?}