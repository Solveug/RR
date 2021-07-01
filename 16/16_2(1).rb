# frozen_string_literal: true

require_relative 'translit'

puts 'Введите фразу для транслитерации:'
user_input = $stdin.gets.chomp

puts Translit.convert(user_input)
