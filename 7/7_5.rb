products = ["масло", "молоко", "хлопья", "картошка", "курица", "помидоры"]
puts "Нужно купить: #{products}"
while products.size > 0 do
  print "Что купили: "
  user_input = gets.chomp
  products.delete(user_input)
  if products.size > 0
    puts "Нужно еще купить: #{products}"
  end
end
puts "Поздравляем!"
puts "Все купили!"
