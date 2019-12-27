require 'minitest/autorun'

# TODOリスト
=begin
- [ ] 数を文字列にして返す
  - [x] 1を渡したら文字列"1"を返す
- [ ] 3 の倍数のときは数の代わりに｢Fizz｣と返す
- [ ] 5 の倍数のときは｢Buzz｣と返す
- [ ] 3 と 5 両方の倍数の場合には｢FizzBuzz｣と返す
- [ ] 1 から 100 までの数
- [ ] プリントする
=end
class FizzBuzzTest < Minitest::Test
    def test_1を渡したら文字列1を返す
        # 前準備
        # 実行
        # 検証
        assert_equal "1", FizzBuzz.generate(1)
    end
end

class FizzBuzz
    def self.generate(n)
        "1"
    end
end