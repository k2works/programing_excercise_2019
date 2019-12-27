require 'minitest/autorun'

# TODOリスト
=begin
- [ ] 数を文字列にして返す
  - [x] 1を渡したら文字列"1"を返す
  - [x] 2を渡したら文字列"2"を返す
- [ ] 3 の倍数のときは数の代わりに｢Fizz｣と返す
- [ ] 5 の倍数のときは｢Buzz｣と返す
- [ ] 3 と 5 両方の倍数の場合には｢FizzBuzz｣と返す
- [ ] 1 から 100 までの数
- [ ] プリントする
=end
class FizzBuzzTest < Minitest::Test
    def test_1を渡したら文字列1を返す
        assert_equal "1", FizzBuzz.generate(1)
    end

    def test_2を渡したら文字列2を返す
        assert_equal "2", FizzBuzz.generate(2)
    end
end

class FizzBuzz
    def self.generate(number)
        number.to_s
    end
end