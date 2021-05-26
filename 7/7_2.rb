arr = []
puts "Какой длины будет массив случайных чисел? "
user_input = gets.to_i
count = 1
while count <= user_input
  arr << rand(100)
  count += 1
end
puts arr.to_s
puts "Самое большое число: #{arr.max}"

# поиск наибольшего элемента без метода max
max_el = 0
for el in arr
  if max_el < el
    max_el = el
  end
end
puts max_el
