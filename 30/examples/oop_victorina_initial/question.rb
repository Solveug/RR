# encoding: utf-8
#
# Викторина с хранением вопросов в XML
# Демонстрация принципов ООП
#
# (с) goodprogrammer.ru и Алексей Зибарев
#
# Класс Вопрос для игры Викторина
class Question
  def initialize
    @start_time = 0
    @end_time = 0
  end

  # задаем вопрос, используя заданный текст и массив вариантов ответа
  def ask_question(text, variants)
    puts text

    variants.each_with_index do |variant, index|
      puts "#{index+1}. #{variant}"
    end

    user_input = STDIN.gets.chomp.to_i

    return user_input
  end

  # проверяем переданный ввод пользователя на совпадение с правильным 
  def check_answer(user_input, right_answer)
    if user_input == right_answer
      puts 'Верно!'
      return 1
    else
      puts 'Неправильный ответ!'
      return 0
    end
  end
end
