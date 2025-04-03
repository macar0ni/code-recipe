class OddError < StandardError; end

begin
    raise OddError, '奇数エラー'
rescue OddError => e
    puts e.message
    puts e.class
end

# !固有の処理が不要な場合、セミコロンを使って1行でクラスを書くのが慣例になっている。