# injectメソッドを使うと畳み込みと呼ばれる処理が行われ、集計した結果が返される
# reduceとinjectはエイリアス
# ブロックパラメーターは２つ
# 1つめは集計結果をため込むaccumulatorと呼ばれる変数
# これはブロックが実行されるたびにブロックの返り値が代入される

nums = [1, 2, 3, 4]
p nums.inject{|acc, num| acc.to_s + num.to_s}
p nums
nums = [1, 2, 3, 4]
p nums.inject(:pow)
p nums.inject(:+)
p nums.inject(10, :-)