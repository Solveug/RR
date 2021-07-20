# frozen_string_literal: true

puts 'Введите число чтобы узнать сколько в нем байт:'
user_num = $stdin.gets.to_i
puts "В числе #{user_num} - #{user_num.size} байт"

puts 'Введите строку чтобы узнать сколько в ней байт:'
user_str = $stdin.gets.chomp
puts "В строке #{user_str} - #{user_str.bytesize} байт"
