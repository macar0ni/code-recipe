    (1..10).each do |num|
        begin
            100 / [1,0].sample
            puts '成功'
        rescue
            puts '失敗'
        ensure
            puts "#{num}回目の処理が終わりました"
            
        end
    end