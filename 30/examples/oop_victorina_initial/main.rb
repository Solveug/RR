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

# Читаем XML с вопросами и ответами
current_path = File.dirname(__FILE__)
file_name = current_path + '/questions.xml'
file = File.new(file_name, 'r:utf-8')
doc = REXML::Document.new(file)
file.close

# счетчик правильных ответов
right_answers_counter = 0

puts "\nВикторина v. 1.0\n"

# В цикле идем по всем вопросам из XML документа
doc.elements.each('questions/question') do |questions_element|
  text = ''
  variants = []
  right_answer = 0

  # для каждого вопроса собираем текст вопроса и варианты ответов
  questions_element.elements.each do |question_element|
    case question_element.name
    when 'text'
      text = question_element.text
    when 'variants'
      question_element.elements.each_with_index do |variant, index|
        variants << variant.text
        right_answer = index + 1 if variant.attributes['right']
      end
    end
  end

  # Новый экземпляр вопроса
  question = Question.new

  # получаем выбор пользователя из текста вопроса и списка вариантов
  user_choice = question.ask_question(text, variants)

  # проверяем совпадение выбора с правильным ответом и увеличиваем счетчик 
  right_answers_counter += question.check_answer(user_choice, right_answer)
end

puts "\nУ Вас #{right_answers_counter} правильных ответов"
