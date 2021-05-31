# frozen_string_literal: true

dir = Dir["#{__dir__}/data/*.txt"]
if dir.size.positive?
  puts 'Какой файл открыть?'
  dir.each { |s| puts "#{dir.index(s)} : #{s}" }
  print 'Ваш выбор: '
  user_choise = $stdin.gets.chomp.to_i
  file = IO.readlines(dir[user_choise], chomp: true)
  puts "Привет, я содержимое файла: #{dir[user_choise]}"
  puts file
else
  puts "В каталоге /data/ нет текстовых файлов\nс расширением .тхт или каталог не существует"
end
