# числа типа integer и float лучше не сравнивать, поточу что точность будет страдать
# например, 5.0 и 5.00000000000000000001 будут равны
print 'Введите первое число для сравнения: '
x = gets.to_f
print 'Введите второе число для сравнения: '
y = gets.to_f

if x == y
  puts "число #{x} равно числу #{y}"
elsif x > y
  puts "Наибольшее число #{x}"
else
  puts "Наибольшее число #{y}"
end
