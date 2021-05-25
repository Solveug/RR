puts "Сколько сейчас стоит 1 доллар в рублях?"
usd = gets.to_f
puts "Сколько  у вас рублей?"
rub = gets.to_f
puts "Ваши запасы равны: $ #{(rub / usd).round(2)}"
