# frozen_string_literal: true

require_relative 'product'
require_relative 'movie'
require_relative 'book'

products = []

products << Movie.new(
  name: 'Леон',
  year: 1994,
  director: 'Люк Бессон',
  price: 990,
  quantity: 5
)

products << Movie.new(
  name: 'Дурак',
  year: 2014,
  director: 'Юрий Быков',
  price: 390,
  quantity: 1
)

products << Book.new(
  name: 'Идиот',
  genre: 'роман',
  author: 'Федор Достоевский',
  price: 1500,
  quantity: 10
)

puts 'Вот какие товары у нас есть:'
puts
products.each { |product| puts product }
