# デバッグ目的で使うtapメソッド
# レシーバを引数としてブロック内の処理を実行し、レシーバ自身(self)を返す

[1, 2, 3]
 .map { |i| i ** 2 }.tap{ |array| p array }
 .reject { |i| i > 5 }.tap{ |array| p array }