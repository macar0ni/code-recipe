# *rescue節は複数記述できる

begin 
    1 / 0
    puts undefined_string
rescue ZeroDivisionError => e
    puts e
    puts 'ゼロで割ることはできない'
rescue NameError => e
    puts e
    puts '未定義の変数です'
end

begin 
    puts undefined_string
    1 / 0
rescue ZeroDivisionError => e
    puts e
    puts 'ゼロで割ることはできない'
rescue NameError => e
    puts e
    puts '未定義の変数です'
end