def create_user1(name:, email:, role:)
    { name: name, email: email, role: role }
end

p create_user1(name: 'Jeff', email: '@email.com', role: :admin)

def create_user2(name:, email:, role: :none)
    { name: name, email: email, role: role }
end

p create_user2(name: 'Jeff', email: '@email.com')

# 位置引数では引数の順序によって、引数を区別するが、キーワード引数では名前を付けて区別する。
# メリットは、呼び出し時に引数の順序を気にしなくてよいこと。
# また、デフォルト値を設定できる。
# ハッシュのキー名と、引数に渡す変数名が同じ場合、変数名を省略できる。