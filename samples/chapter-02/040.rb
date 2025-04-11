# !ブロックを受け取るメソッドを定義する方法は、
# !メソッド定義の際に、&を先頭につけた仮引数(ブロック引数)を書く
# 受け取ったブロックを、ブロック引数.callで実行

# !ブロック引数は1つしか受け取れず、最後の引数として記述しなければならない
# !慣例として&blockもしくは&blkと書く
# !渡されたブロックはcallメソッドとして実行
# !callメソッドに引数を渡すと、呼び出し側からはブロックパラメーター(呼び出し時に||で囲まれた部分)として扱えるようになる

# def select(array, &block)
#     result = []
#     array.each do |item|
#         result << item if block.call(item)
#     end

#     result
# end

# ブロック引数は省略することもできる
# 渡されたブロックを実行するにはyieldメソッドを呼ぶ
# callメソッド同様、yieldメソッドに渡した引数はブロックパラメーターとなる
# ブロック引数は1つしか受け取れないため、名前を付けて区別する必要はない

def select(array)

    return array unless block_given?

    result = []
    array.each do |item|
        result << item if yield(item)
    end

    result
end

array = [1, 2, 3, 4, 5]
p select(array)
p select(array) { |num| num.odd?}