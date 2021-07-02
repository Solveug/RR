# frozen_string_literal: true

puts 'Введите телефон для проверки: '
user_input = gets.chomp
user_input = user_input.delete('^0-9')
if user_input.size.between?(5, 15)
  puts 'Спасибо!'
else
  puts 'Это не номер телефона'
end
