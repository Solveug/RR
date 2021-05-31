# frozen_string_literal: true

file_list = Dir["#{__dir__}/data1/q*.txt"]
if file_list.size.zero?
  puts "Не найдены файлы с вопросами, убедитесь в наличии каталога 'data1' и его содержимом"
  exit
end

score = 0
questions = []
file_list.each { |file_name| questions << File.readlines(file_name, chomp: true) }
puts
puts 'Мини-викторина. Ответьте на 5 вопросов.'

5.times do
  question = questions.sample
  puts
  puts question[0]
  print 'Ваш ответ: '
  user_answer = gets.chomp
  if user_answer == question[1]
    puts "Все верно! Ответ: #{question[1]}"
    score += 1
  else
    puts "Не угадали! Ответ: #{question[1]}"
    puts "Подсказка: #{question[2]}" unless question[2].nil?
  end
  questions.delete(question)
end

puts
puts "Правильных ответов #{score} из 5 "
