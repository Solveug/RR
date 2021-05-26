# frozen_string_literal: true

puts 'Введите палиндром:'
original_string = gets.downcase.delete('^a-zа-яё')
pp original_string
reverse_string = original_string.reverse
if reverse_string == original_string
  puts 'Да, это палиндром'
else
  puts 'Нет, это не палиндром'
end
