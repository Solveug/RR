# frozen_string_literal: true

require_relative 'product'
require_relative 'movie'
require_relative 'book'

movie1 = Movie.new 209, 1, 'Leon'

puts "Фильм #{movie1.name} стоит #{movie1.price} руб."
