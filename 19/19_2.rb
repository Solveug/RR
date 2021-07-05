# frozen_string_literal: true

print 'Введите первое число: '
first_number = $stdin.gets.to_f
print 'Введите второе число: '
second_number = $stdin.gets.to_f
print 'Выберите операцию: (+ - * /)  '
user_oper = $stdin.gets.chomp

case user_oper
when '+'
  puts "Результат: #{first_number + second_number}"
when '-'
  puts "Результат: #{first_number - second_number}"
when '*'
  puts "Результат: #{first_number * second_number}"
when '/'
  puts "Результат: #{first_number / second_number}"
else
  puts 'Что-то пошло не так'
end
