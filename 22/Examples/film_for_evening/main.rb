# frozen_string_literal: true

require_relative 'lib/film'

puts 'Программа «Фильм на вечер»'
puts

# 1. Считать все файлы - преобразовать данные в экземпляры класса Film
films =
  Dir["#{__dir__}/data/*.txt"].map do |file|
    lines = File.readlines(file, chomp: true)
    Film.new(*lines) # splat operator
  end

# 2. Составить список режиссёров
directors = films.map(&:director)

# Методом sort_by сортируем по фамилии
directors = directors.uniq.sort_by { |director| director.split(' ').last }

# 3. Вывести список режиссёров
directors.each.with_index(1) do |director, i|
  # 1: Люк Бессон
  puts "#{i}: #{director}"
end

puts
puts 'Фильм какого режиссера вы хотите сегодня посмотреть?'

# 4. Принять у пользователя выбор режиссёра
user_choice = $stdin.gets.to_i
puts

# 5. Выбрать случайный фильм данного режиссёра и вывести его на экран
films_of_selected_director =
  films.select { |f| f.director == directors[user_choice - 1] }
puts films_of_selected_director.sample
