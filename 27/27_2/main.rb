# frozen_string_literal: true

require_relative 'lib/product'
require_relative 'lib/movie'
require_relative 'lib/book'

movie1 = Movie.new(name: 'Леон', director: 'Люк Бессон', price: 990)
movie1.year = 1994
movie1.update(quantity: 5)

book1 = Book.new(name: 'Идиот', genre: 'роман', quantity: 10)
book1.author = 'Федька Достоевский'
book1.update(author: 'Фёдор Достоевский', price: 1500)

puts movie1
puts book1
