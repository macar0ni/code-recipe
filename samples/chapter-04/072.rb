# 配列からnilを除外する
array = [1, 2, nil, 3, nil, 4]
p array.compact
p array
p array.compact!
p array

# user_ages = users.map(&:age).compact
# &:はブロックの短縮形
# users.map(&:age)なら、users配列各要素に対して、ageメソッドを呼び出し、その結果を新しい配列として返す