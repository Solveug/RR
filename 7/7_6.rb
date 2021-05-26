random_number = rand (0..15)
count_try = 3
more_less = ""
while count_try > 0
  puts "Загадано число от 0 до 15, отгадайте какое? (количество попыток - #{count_try}.)"
  print "Ваш ход: "
  user_number = gets.to_i
  if user_number > random_number
    more_less = "меньше"
  else
    more_less = "больше"
  end

  if user_number == random_number
    puts "Ура, вы выиграли! Загаданное число #{random_number}"
    exit
  end
  if (user_number - random_number).abs <= 2
    puts "Тепло (нужно #{more_less})"
  else # (user_number - random_number).abs >= 3
    puts "Холодно (нужно #{more_less})"
  end

  count_try -= 1
end

puts "Вы ошиблись. Было загадано #{random_number}"
