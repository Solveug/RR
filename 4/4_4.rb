# вариант решения с массивом
arr = [0, 0, 0, 0, 1, 1, 1, 1, 2]
coin = arr.sample
if coin == 2
  puts "на ребро"
elsif coin == 1
  puts "выпал орел"
else
  puts "выпала решка"
end

# вариант решения с диапазоном
turn = rand (1..2)
rebro = rand (1..10)

if rebro == 10
  puts "На ребро"
  exit
else

if turn == 1
  puts "Выпал орел"
else
  puts "Выпала решка"
  end
end
