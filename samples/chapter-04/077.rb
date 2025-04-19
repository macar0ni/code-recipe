# 配列に対してArray#joinを使うと、要素を連結して1つの文字列を作ることができる
# 引数を渡せば要素の間にその文字を挟んで連結する
names = ['Alice', 'Bob', 'Eve']
p names.join
p names.join('&')