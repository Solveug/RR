# encoding: utf-8
#
# Тест на коммуникабельность, Объектная версия
# Демонстрация принципов ООП
#
# (с) goodprogrammer.ru и Кирилл Косьянов
#

require_relative "test.rb"
require_relative "result_printer.rb"

if Gem.win_platform?
  Encoding.default_external = Encoding.find(Encoding.locale_charmap)
  Encoding.default_internal = __ENCODING__

  [STDIN, STDOUT].each do |io|
    io.set_encoding(Encoding.default_external, Encoding.default_internal)
  end
end

#  создаем объекты
test = Test.new
result_printer = ResultPrinter.new

# основной цикл программы
until test.finished? do
  test.ask_next_question
end

# И наконец выводим результат
result_printer.print_result(test.score)
