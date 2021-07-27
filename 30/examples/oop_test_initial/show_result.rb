# encoding: utf-8
#
# Тест на коммуникабельность, Объектная версия
# Демонстрация принципов ООП
#
# (с) goodprogrammer.ru и Кирилл Косьянов
class ShowResult
  def logic(questions)
    @result = 0

    for item in questions.questions
      puts item
      user_answer = nil

      until (user_answer == "да" || user_answer == "нет" || user_answer == "не знаю" || user_answer == "хз")
        puts "введите 'да', 'нет' или «не знаю (или хз)» и нажмите Enter"
        user_answer = STDIN.gets.encode('UTF-8').chomp
      end

      if user_answer == "да"
        @result += 2
      elsif user_answer != "нет"
        @result += 1
      end
    end

    puts "\nВы набрали #{@result} очков."
  end

  def show_answer(questions)
    if @result >= 30
      puts questions.results[0]
    elsif @result >= 25
      puts questions.results[1]
    elsif @result >= 19
      puts questions.results[2]
    elsif @result >= 14
      puts questions.results[3]
    elsif @result >= 9
      puts questions.results[4]
    elsif @result >= 4
      puts questions.results[5]
    else
      puts questions.results[6]
    end
  end
end
