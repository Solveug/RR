# frozen_string_literal: true

require 'open-uri'
require 'json'

def random_cat_fact
  data = URI.open('https://cat-fact.herokuapp.com/facts/random').read
  json = JSON.parse(data)
  json['text']
end
puts 'Сколько фактов о котах выдать?'
user_input = gets.chomp.to_i
user_input.times do
  puts random_cat_fact
end
