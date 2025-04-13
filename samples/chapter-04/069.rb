# 配列に値を挿入するには、insert push unshiftを使う
# そもそも、配列のインデックスに負の値を指定すると、末尾から数えた位置を表す

# insertは、インデックスを指定して挿入
# pushは末尾
# unshiftは先頭

array = [1, 2, 3]
# array[1] = 4
# p array

# array.insert(0, -1, 0)
# p array
# array.push(4)
# p array

array.unshift(-1, 0)
p array

