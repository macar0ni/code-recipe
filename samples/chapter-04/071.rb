# uniqは新しい配列を作って返す
# uniq!は元の配列そのものを書き換える

array = [1, 2, 3, 4, 5, 1, 2]
p array.uniq
p array
p array.uniq!
p array