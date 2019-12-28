require 'cowsay'
require_relative './FizzBuzz.rb'

Handler = Proc.new do |req, res|
    res.status = 200
    res['Access-Control-Allow-Origin'] = '*'
    res['Content-Type'] = 'text/plain'
    res.body = FizzBuzz.generateJsonList
end