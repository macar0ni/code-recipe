# クラスメソッドやモジュール関数を呼び出すときは、.または::で区切ってメソッド名を指定する。
# ただし、::は定数を参照するときにも使える。
# そのため、メソッドは.で、定数は::で区切るのが一般的。

require 'digest'

p Digest::SHA256.hexdigest('ruby')
p Digest::MD5.hexdigest('ruby')
p Digest::SHA256.digest('ruby')
# p Digest::SHA256.hexdigest('ruby')
# p Digest::SHA256::hexdigest('ruby')

begin
    p Digest.SHA256.hexdigest('ruby')
rescue => e
    p e
end

# ハッシュ化とは、特定の計算(ハッシュ関数)に基づいて、元のデータを不規則な文字列に不可逆変換する処理のこと。
# オン豪華との違いは不可逆性。暗号は元に戻せるが、ハッシュ化は元に戻せない。正確には戻せるが、膨大な時間がかかる。

# ハッシュ関数とは、元のデータからハッシュ値を返す関数。例: MD5, SHA-1, SHA-256, bcirpt
# 同じ元データからは同じ値が得られる。

# hexdigestメソッドは、指定したデータをハッシュ化し、その結果を16進数形式の文字列として返す。
# Digestモジュールで提供されるハッシュアルゴリズムに対して使用される。

# digestメソッドは、ハッシュ値をバイナリ形式の文字列で返す