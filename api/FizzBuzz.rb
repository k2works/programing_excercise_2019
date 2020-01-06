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
- [x] タイプ2の場合
  - [x] 数を文字列にして返す
    - [x] 1を渡したら文字列"1"を返す
    - [x] 2を渡したら文字列"2"を返す
  - [x] 3 の倍数のときは数を文字列にして返す
    - [x] 3を渡したら文字列"3"を返す
  - [x] 5 の倍数のときは数を文字列にして返す
    - [x] 5を渡したら文字列"5"を返す
  - [x] 3 と 5 両方の倍数の場合には数を文字列にして返す
    - [x] 15を渡したら文字列"15"を返す
- [x] タイプ3の場合
  - [x] 数を文字列にして返す
    - [x] 1を渡したら文字列"1"を返す
    - [x] 2を渡したら文字列"2"を返す
  - [x] 3 の倍数のときは数を文字列にして返す
    - [x] 3を渡したら文字列"3"を返す
  - [x] 5 の倍数のときは数を文字列にして返す
    - [x] 5を渡したら文字列"5"を返す
  - [x] 3 と 5 両方の倍数の場合には｢FizzBuzz｣と返す
    - [x] 15を渡したら文字列"FizzBuzz"を返す
- [x] それ以外のタイプの場合
  - [x] 例外を返す
=end

class FizzBuzzTest < Minitest::Test
  describe 'FizzBuzz' do
    describe '1から100までの数' do
      def setup
        @fizzbuzz = FizzBuzz.new(FizzBuzzType01.new)
        @result = @fizzbuzz.generate_list
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
        result = JSON.parse(FizzBuzz.new(FizzBuzzType01.new).generate_json_list)
        assert_equal 'Fizz', result['data'][2]
      end
    end

    describe 'タイプ1の場合' do
      def setup
        @fizzbuzz = FizzBuzz.new(FizzBuzzType01.new)
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

      describe '三と五の倍数の場合' do
        def test_15を渡したら文字列FizzBuzzを返す
          assert_equal 'FizzBuzz', @fizzbuzz.generate(15)
        end
      end

      describe 'その他の場合' do
        def test_1を渡したら文字列1を返す
          assert_equal '1', @fizzbuzz.generate(1)
        end
      end
    end

    describe 'タイプ2の場合' do
      def setup
        @fizzbuzz = FizzBuzz.new(FizzBuzzType02.new)
      end

      describe '三の倍数の場合' do
        def test_3を渡したら文字列3を返す
          assert_equal '3', @fizzbuzz.generate(3)
        end
      end

      describe '五の倍数の場合' do
        def test_5を渡したら文字列5を返す
          assert_equal '5', @fizzbuzz.generate(5)
        end
      end

      describe '三と五の倍数の場合' do
        def test_15を渡したら文字列15を返す
          assert_equal '15', @fizzbuzz.generate(15)
        end
      end

      describe 'その他の場合' do
        def test_1を渡したら文字列1を返す
          assert_equal '1', @fizzbuzz.generate(1)
        end
      end
    end

    describe 'タイプ3の場合' do
      def setup
        @fizzbuzz = FizzBuzz.new(FizzBuzzType03.new)
      end

      describe '三の倍数の場合' do
        def test_3を渡したら文字列3を返す
          assert_equal '3', @fizzbuzz.generate(3)
        end
      end

      describe '五の倍数の場合' do
        def test_5を渡したら文字列5を返す
          assert_equal '5', @fizzbuzz.generate(5)
        end
      end

      describe '三と五の倍数の場合' do
        def test_15を渡したら文字列FizzBuzzを返す
          assert_equal 'FizzBuzz', @fizzbuzz.generate(15)
        end
      end

      describe 'その他の場合' do
        def test_1を渡したら文字列1を返す
          assert_equal '1', @fizzbuzz.generate(1)
        end
      end
    end

    describe 'それ以外のタイプの場合' do
      def setup
        @fizzbuzz = FizzBuzz
      end

      def test_例外を返す
        e =
          assert_raises RuntimeError do
            @fizzbuzz.create(4)
          end

        assert_equal '該当するタイプは存在しません', e.message
      end
    end
  end
end

class FizzBuzz
  MAX_NUMBER = 100

  def initialize(type)
    @type = type
  end

  def self.create(type)
    case type
    when 1
      FizzBuzzType01.new
    when 2
      FizzBuzzType02.new
    when 3
      FizzBuzzType03.new
    else
      raise '該当するタイプは存在しません'
    end
  end

  def generate(number)
    @type.generate(number)
  end

  def generate_list
    (1..MAX_NUMBER).map { |i| @type.generate(i) }
  end

  def generate_json_list
    { data: generate_list }.to_json
  end
end

class FizzBuzzType
  def isFizz(number)
    number.modulo(3) == 0
  end

  def isBuzz(number)
    number.modulo(5) == 0
  end
end

class FizzBuzzType01 < FizzBuzzType
  def generate(number)
    return 'FizzBuzz' if isFizz(number) && isBuzz(number)
    return 'Fizz' if isFizz(number)
    return 'Buzz' if isBuzz(number)
    number.to_s
  end
end

class FizzBuzzType02 < FizzBuzzType
  def generate(number)
    number.to_s
  end
end

class FizzBuzzType03 < FizzBuzzType
  def generate(number)
    return 'FizzBuzz' if isFizz(number) && isBuzz(number)
    number.to_s
  end
end
