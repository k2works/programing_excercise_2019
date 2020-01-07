require 'cowsay'
require_relative './FizzBuzz.rb'

Handler = Proc.new do |req, res|
    fizzbuzz = FizzBuzzService.new(FizzBuzzType.create(FizzBuzzType::TYPE_01))

    res.status = 200
    res['Access-Control-Allow-Origin'] = '*'
    res['Content-Type'] = 'text/plain'
    res.body = fizzbuzz.generate_json_list(100)
end