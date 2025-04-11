# *rescue内でretryをつかうと、beginから処理をやり直すことができる
# *一定の確率で例外が発生する処理を確実に終わらせたいときに便利
# *必ず例外が発生する状況では、無限ループになってしまう

begin
    100/ [1, 0].sample
    puts 'seikou'
    rescue
        puts 'yarinaosi'
        retry
    end