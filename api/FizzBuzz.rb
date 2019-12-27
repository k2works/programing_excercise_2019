require 'minitest/autorun'

# TODOリスト
=begin
- [ ] 数を文字列にして返す
  - [x] 1を渡したら文字列"1"を返す
  - [x] 2を渡したら文字列"2"を返す
- [ ] 3 の倍数のときは数の代わりに｢Fizz｣と返す
  - [x] 3を渡したら文字列"Fizz"を返す
- [ ] 5 の倍数のときは｢Buzz｣と返す
- [ ] 3 と 5 両方の倍数の場合には｢FizzBuzz｣と返す
- [ ] 1 から 100 までの数
- [ ] プリントする
=end
class FizzBuzzTest < Minitest::Test
    def setup
        @fizzbuzz = FizzBuzz
    end

    def test_1を渡したら文字列1を返す
        assert_equal "1", @fizzbuzz.generate(1)
    end

    def test_2を渡したら文字列2を返す
        assert_equal "2", @fizzbuzz.generate(2)
    end

    def test_3を渡したら文字列Fizzを返す
        assert_equal "Fizz", @fizzbuzz.generate(3)
    end
end

class FizzBuzz
    def self.generate(number)
        result = number.to_s
        if number.modulo(3) == 0
            result = "Fizz"
        end
        result
    end
end