require 'minitest/autorun'

# TODOリスト
=begin
- [x] 数を文字列にして返す
  - [x] 1を渡したら文字列"1"を返す
  - [x] 2を渡したら文字列"2"を返す
- [x] 3 の倍数のときは数の代わりに｢Fizz｣と返す
  - [x] 3を渡したら文字列"Fizz"を返す
- [x] 5 の倍数のときは｢Buzz｣と返す
- [ ] 3 と 5 両方の倍数の場合には｢FizzBuzz｣と返す
- [ ] 1 から 100 までの数
- [ ] プリントする
=end

class FizzBuzzTest < Minitest::Test
  describe 'FizzBuzz' do
    def setup
      @fizzbuzz = FizzBuzz
    end

    describe '三の倍数の場合' do
      def test_3を渡したら文字列Fizzを返す
        assert_equal 'Fizz', @fizzbuzz.generate(3)
      end
    end

    describe '五の倍数の場合' do
      def test_5を渡したら文字列Buzzを返す
        assert_equal 'Buzz', @fizzbuzz.generate(5)
      end
    end

    describe 'その他の場合' do
      def test_1を渡したら文字列1を返す
        assert_equal '1', @fizzbuzz.generate(1)
      end

      def test_2を渡したら文字列2を返す
        assert_equal '2', @fizzbuzz.generate(2)
      end
    end
  end
end

class FizzBuzz
    def self.generate(number)
        result = number.to_s
        if number.modulo(3) == 0
            result = "Fizz"
        elsif number.modulo(5) == 0
            result = "Buzz"
        end
        result
    end
end
