nums = [1, 2, 3, 4]
p nums.filter{|num| num.odd?}
p nums.filter{&:odd?}
p nums.select{|num| num.even?}