# *rescueは式の後ろに置くことができる
# *rescue手前で例外が発生したときにrescue後ろの式が実行される

require 'time'

def safe_parse(date_string)
    Time.parse(date_string) rescue 'パースできませんでした'
end

puts safe_parse('2023')
puts safe_parse('2023-01-06 12:00')
puts safe_parse('2023-01-06')