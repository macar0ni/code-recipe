# 存在しないメソッドが呼び出されたときや、外部との通信に失敗したときに例外処理する。
# raiseで例外を発生させられる。引数には文字列や例外クラスを渡す。引数は例外処理に活用できる。
begin
    (0..10).each do |num|
        if num == 8
            raise StandardError, '8 異常終了'
        else
            puts num
        end
    end
rescue =>  e
    puts e.message
    puts e.backtrace
end