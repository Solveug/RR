# Чётность в теории чисел — способность целого числа делиться без остатка на 2

print 'Введите число для проверки на четность: '
user_input = gets.to_i
tail = user_input % 2 == 0
if tail == 0
  puts "#{user_input} Четное число"
else
  puts "#{user_input} Нечетное число"
end
