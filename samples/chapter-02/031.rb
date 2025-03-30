# クラスやモジュール内で定義した定数は、::演算子で外部から参照できる。
class MyClass
    VERSION = '1.0.0'
end

p MyClass::VERSION

# 定数をプライベートにするには、クラスやモジュールの中で定数名のシンボルを引数としてprivate_constantメソッドを呼び出す。
# プライベート定数を外部から参照すると例外が発生する。
class MyClass2
    VERSION = '1.0.0'
    private_constant :VERSION

    def self.version
        VERSION
    end
end

begin MyClass2
    MyClass2::VERSION
rescue => e
    p e
end

p MyClass2.version