puts "Курс доллара: "
course = gets.to_f
puts "Сколько у вас рублей?"
summ_rub = gets.to_f
# 100000
puts "Сколько у вас долларов?"
summ_usd = gets.to_f

if summ_usd * (course - summ_rub).abs  < 0.02
  puts "Ваш бивалютный портфель сбалансирован"
elsif summ_usd * course > summ_rub
  puts "Вам надо продать #{(((summ_usd * course - summ_rub) / 2)/ course).round(2)} $"
else # summ_usd * course_usd < summ_rub
  puts "Вам надо купить #{(((summ_rub - (summ_usd * course)) / 2)/ course).round(2)} $"
end
