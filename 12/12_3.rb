# frozen_string_literal: true

def balance_case(course_usd, summ_rub, summ_usd)
  if (summ_usd * course_usd - summ_rub).abs < 0.02
    0
  elsif summ_usd * course_usd > summ_rub
    -(((summ_usd * course_usd - summ_rub) / 2) / course_usd).round(2)
  else
    (((summ_rub - (summ_usd * course_usd)) / 2) / course_usd).round(2)
  end
end

puts 'Курс доллара: '
course_usd = gets.to_f
puts 'Сколько у вас рублей?'
summ_rub = gets.to_f
puts 'Сколько у вас долларов?'
summ_usd = gets.to_f

count_usd = balance_case(course_usd, summ_rub, summ_usd)

if count_usd.zero?
  puts 'Ваш бивалютный портфель сбалансирован'
elsif count_usd.negative?
  puts "Вам надо продать #{count_usd.abs} $"
else
  puts "Вам надо купить #{count_usd} $"
end
