# frozen_string_literal: true

puts 'Введите email для проверки: '
user_input = gets.chomp
if user_input =~ /^[\w\d]+@[\w\d]+\.\w+/
  puts 'Спасибо!'
else
  puts 'Какая-то фигня! Это не email'
end
