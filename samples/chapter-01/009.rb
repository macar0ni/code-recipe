# ; 連想配列
# ; インデックスに整数以外の値を使えるデータ構造。
# ; rubyではハッシュという機能で連想配列を使用できる
# ; 連想配列のインデックスをキーと呼ぶ。
# ; キーにはどんなオブジェクトも使用できるが、多くの場合はシンボルを使う。
h = {greeting: 'hello world', num: 1}
p h[:greeting]
p h[:num]

h = {'lang' => 'ja', 100 => 'hundred'}
p h['lang']