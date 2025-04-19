nums = [1, 2, 3, 4]
new_array = nums.filter_map do |num|
    if num.odd?
        num ** 2
    end
end

p new_array