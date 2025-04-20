# ある文字列が正規表現のパターンにマッチする部分だけで構成されていることを確実にしたいときは\Aと\zを使う

# \Aと\zは幅0の文字にマッチするメタ文字（アンカー）で、\Aは先頭、\zは末尾に一致する。
# つまり、\Aと\zを先頭と末尾に置くと、文字列にパターン以外の文字列が含まれていないことを確認できる
email = 'test@example.com'
matched = email.match(/\A.+@example.com\z/)
puts matched[0]

email = <<~EMAIL
test@example.com
別の文字列
EMAIL
not_matched = email.match(/\A.+@example.com\z/)
p not_matched

unintetionally_matched = email.match(/^.+@example.com$/)
puts unintetionally_matched[0]