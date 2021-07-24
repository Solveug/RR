# frozen_string_literal: true

require_relative 'product'
require_relative 'movie'
require_relative 'book'

movie1 = Movie.new 'Леон', 1994, 'Люк Бессон', 990, 5
movie2 = Movie.new 'Дурак', 2014, 'Юрий Быков', 390, 1
book1 = Book.new 'Идиот', 'роман', 'Федор Достоевский', 1500, 10

puts movie1
puts movie2
puts book1
