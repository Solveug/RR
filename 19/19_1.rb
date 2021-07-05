# frozen_string_literal: true

print 'Введите первое число: '
first_number = $stdin.gets.to_i
print 'Введите второе число: '
second_number = $stdin.gets.to_i
print 'Выберите операцию: (+ - * /)  '
user_oper = $stdin.gets.chomp

begin
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
rescue ZeroDivisionError => e
  puts "На ноль делить нельзя: #{e}"
end
