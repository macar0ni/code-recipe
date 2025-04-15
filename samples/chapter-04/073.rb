# ?配列を整理

array = [1, 2, 3, 4]
# sortメソッドは元の配列を昇順に書き換えて新しい配列にして返す
# sort!メソッドは元の配列を書き換える
p array.sort

# sortは引数としてブロックを受け取る。デフォルトは{ |a, b| a <=> b }が引数。
# <=>は比較演算子。いくつかの組み込みクラスに定義されている。
# Integerの<=>は、左右を比較し、左が右より小さければ-1、右より大きければ1、等しければ0を返す。
# sortメソッドは、配列の先頭から順に隣同士の要素に対してこのブロックを実行した時に、すべての結果が-1か0になるような配列を返す。
# a <=> bを、b <=> aにすれば降順になる。

p array.sort{ |a, b| b <=> a }

array = ['インコ', 'ゾウ', 'アシナガバチ']
p array.sort

# 文字数の少ない順に並び変える
p array.sort{|a, b| a.length <=> b.length}
# 文字数の多い順に並び変える
p array.sort{|a, b| b.length <=> a.length}

# sort_byは、与えられた式の結果の昇順になるように要素を整列する
# sortとは違いブロックパラメータは1つだけになり、ブロックで渡した式の結果の昇順に並ぶよう配列を並び替える

p array.sort_by{|elem| elem.length}