# 正規表現とは、文字列のパターンを記述する手法
# 正規表現を使うと、パターンに従う文字列の集合を1つの文字列で表せる

pattern1 = /R.*/
# 文字列に大文字のRから始まる文字列が存在する
p "Ruby".match?(pattern1)
p m1 = "Ruby, RUBY, ruby".match(pattern1)
p m1[1]
p "ruby".match?(pattern1)

pattern2 = /^@./
# @から始まり任意の1文字が続く
p pattern2.match?("@example-user")
p m2 = pattern2.match("@example-user")
p m2[0]
p pattern2.match?("@")