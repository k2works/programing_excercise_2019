require 'minitest/autorun'
require 'json'

# TODOリスト
=begin
- [x] 数を文字列にして返す
  - [x] 1を渡したら文字列"1"を返す
  - [x] 2を渡したら文字列"2"を返す
- [x] 3 の倍数のときは数の代わりに｢Fizz｣と返す
  - [x] 3を渡したら文字列"Fizz"を返す
- [x] 5 の倍数のときは｢Buzz｣と返す
- [x] 3 と 5 両方の倍数の場合には｢FizzBuzz｣と返す
- [x] 1 から 100 までの数
  - [x] はじめは文字列1を返す
  - [x] 最後は文字列100を返す
  - [x] 2番目は文字列Fizzを返す
  - [x] 4番目は文字列Buzzを返す
  - [x] 14番目は文字列FizzBuzzを返す
- [x] プリントする
- [x] タイプ1の場合
  - [x] 数を文字列にして返す
    - [x] 1を渡したら文字列"1"を返す
    - [x] 2を渡したら文字列"2"を返す
  - [x] 3 の倍数のときは数の代わりに｢Fizz｣と返す
    - [x] 3を渡したら文字列"Fizz"を返す
  - [x] 5 の倍数のときは｢Buzz｣と返す
    - [x] 5を渡したら文字列"Buzz"を返す
  - [x] 3 と 5 両方の倍数の場合には｢FizzBuzz｣と返す
    - [x] 15を渡したら文字列"FizzBuzz"を返す
- [ ] タイプ2の場合
  - [ ] 数を文字列にして返す
    - [ ] 1を渡したら文字列"1"を返す
    - [ ] 2を渡したら文字列"2"を返す
  - [ ] 3 の倍数のときは数を文字列にして返す
    - [ ] 3を渡したら文字列"3"を返す
  - [ ] 5 の倍数のときは数を文字列にして返す
    - [ ] 5を渡したら文字列"5"を返す
  - [ ] 3 と 5 両方の倍数の場合には数を文字列にして返す
    - [ ] 15を渡したら文字列"15"を返す
- [ ] タイプ3の場合
  - [ ] 数を文字列にして返す
    - [ ] 1を渡したら文字列"1"を返す
    - [ ] 2を渡したら文字列"2"を返す
  - [ ] 3 の倍数のときは数を文字列にして返す
    - [ ] 3を渡したら文字列"3"を返す
  - [ ] 5 の倍数のときは数を文字列にして返す
    - [ ] 5を渡したら文字列"5"を返す
  - [ ] 3 と 5 両方の倍数の場合には｢FizzBuzz｣と返す
    - [ ] 15を渡したら文字列"FizzBuzz"を返す
=end

class FizzBuzzTest < Minitest::Test
  describe 'FizzBuzz' do
    describe '1から100までの数' do
      def setup
        @result = FizzBuzz.generate_list
      end

      def test_はじめは文字列1を返す
        assert_equal '1', @result.first
      end

      def test_最後は文字列Buzzを返す
        assert_equal 'Buzz', @result.last
      end

      def test_2番目は文字列Fizzを返す
        assert_equal 'Fizz', @result[2]
      end

      def test_4番目は文字列Buzzを返す
        assert_equal 'Buzz', @result[4]
      end

      def test_14番目は文字列FizzBuzzを返す
        assert_equal 'FizzBuzz', @result[14]
      end
    end

    describe 'プリントする' do
      def test_json形式でFizzBuzzListを返す
        result = JSON.parse(FizzBuzz.generate_json_list())
        assert_equal 'Fizz', result['data'][2]
      end
    end

    describe 'タイプ1の場合' do
      def setup
        @fizzbuzz = FizzBuzz
      end

      describe '三の倍数の場合' do
        def test_3を渡したら文字列Fizzを返す
          assert_equal 'Fizz', @fizzbuzz.generate(3, 1)
        end
      end

      describe '五の倍数の場合' do
        def test_5を渡したら文字列Buzzを返す
          assert_equal 'Buzz', @fizzbuzz.generate(5, 1)
        end
      end

      describe '三と五の倍数の場合' do
        def test_15を渡したら文字列FizzBuzzを返す
          assert_equal 'FizzBuzz', @fizzbuzz.generate(15, 1)
        end
      end

      describe 'その他の場合' do
        def test_1を渡したら文字列1を返す
          assert_equal '1', @fizzbuzz.generate(1, 1)
        end
      end
    end
  end
end

class FizzBuzz
  MAX_NUMBER = 100

  def self.generate(number, type)
    case type
    when 1
      isFizz = number.modulo(3) == 0
      isBuzz = number.modulo(5) == 0

      return 'FizzBuzz' if isFizz && isBuzz
      return 'Fizz' if isFizz
      return 'Buzz' if isBuzz
      number.to_s
    end
  end

  def self.generate_list
    (1..MAX_NUMBER).map { |i| self.generate(i, 1) }
  end

  def self.generate_json_list
    {data: self.generate_list()}.to_json
  end
end
