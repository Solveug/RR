# frozen_string_literal: true

require_relative 'lib/product'
require_relative 'lib/movie'
require_relative 'lib/book'
require_relative 'lib/disc'
require_relative 'lib/product_collection'

collection = ProductCollection.from_dir("#{__dir__}/data")

puts <<~DISP
  Как Вы хотите отсортировать товар?
      1. По цене
      2. По остатку на складе
      3. По названию
      4. По виду продукта
DISP

user_sort_selection = nil
until [1, 2, 3, 4].include?(user_sort_selection)
  print 'Сделайте свой выбор и нажмите Enter: '
  user_sort_selection = $stdin.gets.to_i
end
puts

case user_sort_selection
when 1 then collection.sort!(by: :price, order: :asc)
when 2 then collection.sort!(by: :quantity, order: :asc)
when 3 then collection.sort!(by: :name, order: :asc)
end

cart = []
cart_wal = 0

user_choice = nil
until user_choice.zero?
  product_number = ['0']

  puts 'Что хотите купить:'
  collection.to_a.each.with_index(1) do |product, index|
    puts "#{index}. #{product}"
    product_number << index.to_s
  end
  puts '0. Выход'
  puts

  user_choice = nil
  until product_number.include?(user_choice)
    print 'Сделайте свой выбор и нажмите Enter: '
    user_choice = $stdin.gets.strip
  end
  user_choice = user_choice.to_i
  puts

  collection.to_a.each.with_index(1) do |product, index|
    if user_choice == index
      if product.quantity.zero?
        puts 'На данный момент этот товар закончился.'
        puts "Всего товаров на сумму: #{cart_wal}"
      else
        product.quantity -= 1
        cart << product
        cart_wal += product.price
        puts "Вы выбрали: #{product}"
        puts "Всего товаров на сумму: #{cart_wal}"
      end
    end
  end
  puts
  puts
end

grouping = []
cart.each do |product|
  replay = 0
  cart.each do |item|
    replay += 1 if product == item
  end
  grouping << "#{product.show_cart} (количество: #{replay})"
end

puts 'У Вас в корзине:'
puts grouping.uniq
puts
puts "С Вас — #{cart_wal} руб. Спасибо за покупки!"
