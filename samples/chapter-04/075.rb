# 配列に対してmapを使うと、配列の各要素に対してブロックを実行し、ブロックの返り値に変換した新しい配列を作れる。
# ブロックパラメータが持つメソッドを使うだけであれば、map(&:メソッド名)と省略できる
names = ['Alice', 'Bob', 'Carol']
p new_array = names.map{|name| name.length}
p new_array = names.map(&:length)