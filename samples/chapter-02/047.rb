# ボッチメソッド
# &.演算子を使うとnilの可能性があるオブジェクトが、nilでない場合だけそのメソッドを呼び出し、レシーバがnilの場合はnilを返す。

obj1 = nil
obj2 = 'not nil'

p obj1&.upcase
p obj2&.upcase