# Индекс TIOBE (TIOBE programming community index) — индекс,
# оценивающий популярность языков программирования,
# на основе подсчёта результатов поисковых запросов, содержащих название языка
# (запрос вида +"<language> programming")
# https://ru.wikipedia.org/wiki/%D0%98%D0%BD%D0%B4%D0%B5%D0%BA%D1%81_TIOBE

require 'json'

file = File.read("#{__dir__}/languages.json", encoding: 'UTF-8')
languages = JSON.parse(file)

most_popular = languages.first
puts 'TIOBE Index for August 2021'
puts "Самый популярный язык для Data Mining and AI: #{most_popular.first} (#{most_popular.last}%)"
puts

languages.each.with_index(1) do |language, index|
  puts "#{index}: ".ljust(4) + "#{language.last}% ".center(8) + "(#{language.first})"
end
