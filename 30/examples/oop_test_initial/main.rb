# encoding: utf-8
#
# Тест на коммуникабельность, Объектная версия
# Демонстрация принципов ООП
#
# (с) goodprogrammer.ru и Кирилл Косьянов
#

require_relative 'show_result.rb'
require_relative 'questions.rb'

if Gem.win_platform?
  Encoding.default_external = Encoding.find(Encoding.locale_charmap)
  Encoding.default_internal = __ENCODING__

  [STDIN, STDOUT].each do |io|
    io.set_encoding(Encoding.default_external, Encoding.default_internal)
  end
end

puts "Тест на уровень вашей коммуникабельности"
puts "Отвечайте на вопросы используя - да, нет и 'не знаю' (или хз)"

showResult = ShowResult.new
questions = Questions.new

showResult.logic(questions)
showResult.show_answer(questions)
