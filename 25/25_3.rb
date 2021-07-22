# frozen_string_literal: true

food = {
  'мясо' => 2,
  'молоко' => 3,
  'творог' => 1,
  'яйца' => 10
}

hardware = {
  'стиральный порошок' => 2,
  'мыло' => 4,
  'зубная паста' => 1
}

products = food.merge(hardware)

puts 'В сельпо нужно купить:'
products.each { |prod, quant| puts "#{prod} в количестве #{quant} кг. или шт." }
