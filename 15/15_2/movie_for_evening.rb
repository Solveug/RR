require_relative "movie.rb"

film_list = Dir[__dir__+"/lib/*.txt"]
movies = []
if film_list.size > 0
  film_list.each do |file|
    lines = File.readlines(file, chomp:true, encoding:'UTF-8')
    movies << Cinema.new(*lines)
  end
end

producers = movies.map{|movie| movie.producer}.uniq!.sort!

puts "\nФильм какого режиссера вы хотите посмотреть?"

producers.each do |producer|
  puts "#{producers.index(producer)}. #{producer}"
end

user_choice = STDIN.gets.chomp.to_i

producer_movies = movies.find_all{|movie| movie if movie.producer == producers[user_choice]}

puts "Вы выбрали: #{producers[user_choice]}"
puts "Рекомендуем посмотреть:\n#{producer_movies.sample}"
