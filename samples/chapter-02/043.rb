# 0個以上のキーワード引数を受け取れるようにしたいときは、引数名の前に**をつける。
# この引数はメソッド内でハッシュとして扱えるようになる。

def print_kwargs(a, b, **kwargs)
    puts "位置引数: #{a}, #{b}"
    kwargs.each_with_index do |(k, v), i|
        puts "引数#{i}: #{k} => #{v}"
    end
end

print_kwargs(1, 2, foo: 'v', bar: 'v')
puts

kwargs = { foo: 'v2', bar: 'v2' }
print_kwargs(1, 2, **kwargs)