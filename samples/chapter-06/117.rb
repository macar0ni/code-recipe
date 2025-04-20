# メタ文字のピリオドや疑問符、スラッシュを正規表現のパターンで使いたいとき、文字の直前にバックスラッシュを付ける

p pattern = /^https:\/\//
p "https://example.com".match?(pattern)
p "http://example.com".match?(pattern)

p new_pattern = /改行は\\n/
p '改行は\n'.match?(new_pattern)