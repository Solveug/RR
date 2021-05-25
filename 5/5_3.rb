puts "Какая у вас на руках валюта?
  1. Рубли
  2. Доллары"
user_input = gets.to_i
puts "Сколько сейчас стоит 1 доллар?"
cours = gets.to_f

if user_input == 1
  puts "Сколько  у вас рублей?"
  rub = gets.to_f
  puts "Ваши запасы на сегодня равны: $ #{(rub / cours).round(2)}"
else
  puts "Сколько у вас долларов?"
  usd = gets.to_f
  puts "Ваши запасы на сегодня равны: #{(usd * cours).round(2)} руб."
end
