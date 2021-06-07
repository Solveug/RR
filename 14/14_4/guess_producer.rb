# frozen_string_literal: true

require_relative 'lib/movie'

film_list = Dir["#{__dir__}/data/*.txt"]
movies = []
film_list.each do |file|
  lines = File.readlines(file, chomp: true, encoding: 'UTF-8')
  movies << Movie.new(*lines)
end

puts
puts 'Добрый день, любитель кино!'
puts 'Давай посмотрим, хорошо ли ты знаешь какой режиссер какой фильм снял?'
print 'Сколько фильмов будем угадывать?: '
film_count = $stdin.gets.to_i
score = 0

movies.sample(film_count).each do |correct_movie|
  producers_list = movies.map(&:producer)
  producers_list = producers_list.uniq
  producers_list.delete(correct_movie.producer)

  selected_producers = producers_list.sample(3)
  selected_producers << correct_movie.producer
  selected_producers.shuffle!
  puts
  puts "Кто снял «#{correct_movie.title}» (#{correct_movie.year})?"
  selected_producers.each.with_index(1) { |elem, i| puts "#{i}. #{elem}" }
  print 'Ваш ответ: '
  user_answer = $stdin.gets.to_i
  if selected_producers[user_answer - 1] == correct_movie.producer
    score += 1
    puts "Угадали! Правильный ответ - #{correct_movie.producer}."
  else
    puts "Неправильно! Правильный ответ — #{correct_movie.producer}."
  end
end
puts
puts "Вы угадали #{score} из #{film_count}"
