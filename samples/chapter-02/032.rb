# and演算子/or演算子の返り値は左辺か右辺どちらかの評価結果であり、真偽値ではない
# この性質を利用して、||演算子を用いて左辺がnil or falseの時だけ右辺の値を代入することで、デフォルト値の設定ができる。
a1 = nil
a2 = a1 || 2
puts a2