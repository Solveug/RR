# frozen_string_literal: true

require_relative 'class_test'
require_relative 'class_question'
require_relative 'class_answer'

test_name = ''
File.open("#{__dir__}/test_name.txt") { |io| test_name = io.readlines(chomp: true).first }

test_info = ''
File.open("#{__dir__}/test_info.txt") { |io| test_info = io.readlines(chomp: true).join("\n") }

social_test = Test.new(test_name, test_info)

test_questions = []
File.open("#{__dir__}/test_questions.txt") { |io| test_questions = io.readlines(chomp: true) }

test_questions.each { |line| social_test.add_question(line) }

test_answers = []
File.open("#{__dir__}/test_answers.txt") { |io| test_answers = io.read.split('*') }
test_answers.each do |line|
  answer = line.split("\n\n")
  social_test.add_answer(*answer)
end

puts social_test.show_info
social_test.questions.each do |question|
  puts "#{social_test.questions.index(question) + 1}. #{question}"
  user_answer = ''
  while user_answer != '1' && user_answer != '2' && user_answer != '3'
    print 'Ответьте на вопрос:  1 - да, 2 - нет, 3 - иногда: '
    user_answer = gets.chomp
  end

  case user_answer
  when '1'
    social_test.score(question.answer_yes)
  when '2'
    social_test.score(question.answer_no)
  else
    social_test.score(question.answer_sometimes)
  end
end

puts social_test.show_score
