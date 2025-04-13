# 配列から値を削除するメソッド
# delete
# !引数に与えた値と同じ要素をすべて削除する

# delete_at
# !引数に0から始まるインデックスを渡し、その位置にある要素を削除する

# ?両メソッドとも、削除した値を返す

# array = [1, 2, 3, 4, 5]
# p array.delete(3)
# p array

# array = [1, 2, 3, 4, 5]
# p array.delete_at(4) 
# p array

# popやshift
# 引数には削除する長さを指定し、1の時は取得した要素が、1以外の時は配列が変える。
# 引数ナシの場合はデフォルトの1になる

# array = [1, 2, 3, 4, 5]
# p array.pop(2)
# p array

array = [1, 2, 3, 4, 5]
p array.pop(3)
p array

array = [1, 2, 3, 4, 5]
p array.shift(3)
p array