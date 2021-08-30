require 'json'

file = File.read("#{__dir__}/languages.json", encoding: 'UTF-8')
languages = JSON.parse(file)

languages_inverted = languages.invert

languages_sorted = languages_inverted.sort.reverse

most_popular = languages_sorted.first
puts 'TIOBE Index for August 2021'
puts "Самый популярный язык: #{most_popular.last} (#{most_popular.first}%)"
puts

languages_sorted.each_with_index do |language, index|
  puts "#{index + 1}: ".ljust(4) + "#{language.first}% ".center(8) + "(#{language.last})"
end
