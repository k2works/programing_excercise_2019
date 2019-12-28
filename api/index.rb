require 'cowsay'
require_relative './FizzBuzz.rb'

Handler = Proc.new do |req, res|
    res.status = 200
    res['Content-Type'] = 'text/plain'
    messag = FizzBuzz.generateList
    res.body = Cowsay.say(messag.to_s, 'cow')
end