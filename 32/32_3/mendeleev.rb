require 'json'

file = File.read("#{__dir__}/elements.json", encoding: 'UTF-8')
elements = JSON.parse(file)

puts "У нас всего элементов: #{elements.keys.size}"
puts elements.keys.join(', ')

puts 'О каком элементе хотите узнать?'
element = gets.chomp

if elements.key?(element)
  puts "Первооткрывателем этого элемента считается: #{elements[element]}"
else
  puts 'Извините, про такой элемент мы еще не знаем.'
end
