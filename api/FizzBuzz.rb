require 'minitest/autorun'

# TODOリスト
=begin
- [ ] 数を文字列にして返す
- [ ] 3 の倍数のときは数の代わりに｢Fizz｣と返す
- [ ] 5 の倍数のときは｢Buzz｣と返す
- [ ] 3 と 5 両方の倍数の場合には｢FizzBuzz｣と返す
- [ ] 1 から 100 までの数
- [ ] プリントする
=end
class FizzBuzzTest < Minitest::Test
    def test_greeting
        assert_equal "Hello", FizzBuzz.greeting()
    end
end

class FizzBuzz
    def self.greeting
        "Hello"
    end
end