# encoding: utf-8
#
# Викторина с хранением вопросов в XML
# Демонстрация принципов ООП
#
# (с) goodprogrammer.ru и Алексей Зибарев
#
require 'rexml/document'
require_relative 'question.rb'

# win hack
if Gem.win_platform?
  Encoding.default_external = Encoding.find(Encoding.locale_charmap)
  Encoding.default_internal = __ENCODING__

  [STDIN, STDOUT].each do |io|
    io.set_encoding(Encoding.default_external, Encoding.default_internal)
  end
end

puts "\nВикторина v. 1.1\n"

# Читаем XML с вопросами и ответами
current_path = File.dirname(__FILE__)
file_name = current_path + '/questions.xml'

questions = Question.read_questions_from_xml(file_name)

# счетчик правильных ответов
right_answers_counter = 0

questions.each do |question|
  question.show
  question.ask
  if question.correctly_answered?
    right_answers_counter += 1
    puts 'Верно'
  else
    puts 'Неверно'
  end
end

puts
puts "У Вас #{right_answers_counter} правильных ответов из #{questions.size}"
