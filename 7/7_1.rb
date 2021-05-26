puts "Введите N:"
user_input = gets.to_i
arr = []
count = 1
while count <= user_input
  arr.push(count)
  count += 1
end
puts arr.to_s
puts "Общая сумма: #{arr.sum}"
