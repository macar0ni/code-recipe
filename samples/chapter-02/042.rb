# 可変長引数
# 名前の前に*を付けた引数であり、この引数はメソッド内で配列として扱えるようになる。
# 位置引数と同時に使いたいときは、必ず可変長引数を最後に置く。

def print_args(a, b, *args)
    puts "位置引数: #{a}, #{b}"
    args.each_with_index do |arg, i|
        puts "可変長引数#{i}: #{arg}"
    end
end

print_args(1, 2, 3, 4)
# puts # *このputsは行間を設けるため
print_args(1, 2, 'foo', 'bar', :test)