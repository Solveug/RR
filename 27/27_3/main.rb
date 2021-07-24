# frozen_string_literal: true

require_relative 'lib/product'
require_relative 'lib/movie'
require_relative 'lib/book'

current_path = File.dirname(__FILE__)
movie = Movie.from_file("#{current_path}/data/movies/01.txt")
book = Book.from_file("#{current_path}/data/books/01.txt")

puts movie
puts book

begin
  Product.from_file("#{current_path}/data/films/01.txt")
rescue NotImplementedError
  puts 'Метод класса Product.from_file не реализован'
end
