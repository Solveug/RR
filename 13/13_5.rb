# frozen_string_literal: true

class Question
  attr_reader :text, :answer, :hint, :score

  def initialize(array_of_data)
    @text = array_of_data[0]
    @answer = array_of_data[1]
    @hint = array_of_data[2]
    @score = array_of_data[3].to_i
  end
end

file_list = Dir["#{__dir__}/data1/q*.txt"]
if file_list.size.zero?
  puts "Не найдены файлы с вопросами, убедитесь в наличии каталога 'data1' и его содержимом"
  exit
end

score = 0
count = 0
questions = []
file_list.each { |file_name| questions << Question.new(File.readlines(file_name, chomp: true)) }

puts
puts 'Мини-викторина. Ответьте на 5 вопросов.'

5.times do
  question = questions.sample
  puts
  puts "#{question.text} (#{question.score} баллов)"
  print 'Ваш ответ: '
  user_answer = gets.chomp
  if user_answer == question.answer
    puts "Все верно! Ответ: #{question.answer}"
    score += question.score
    count += 1
  else
    puts "Не угадали! Ответ: #{question.answer}"
    puts "Подсказка: #{question.hint}" unless question.hint.nil? || question.hint == ''
  end
  questions.delete(question)
end
puts
puts "Правильных ответов #{count} из 5 "
puts "Набрано #{score} баллов"
