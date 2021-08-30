# encoding: utf-8
#
# Тест на коммуникабельность, Объектная версия
# Демонстрация принципов ООП
#
# (с) goodprogrammer.ru и Кирилл Косьянов
#
# Класс, хранящий вопросы и логику прохождения теста
class Test
  attr_reader :score

  # конструктор, в котором создаем поля для вопросов и подсчета результатов
  def initialize
    # массив вопросов
    @questions = [
      "Переживаете ли вы в ожидании важной деловой встречи?",
      "Если вам поручат выступить с докладом на каком либо мероприятии, вызовет ли это у вас чувство дискомфорта? ",
      "Вы откладываете поход к врачу до последнего момента? ",
      "Если вам предстоит командировка в незнакомый город, постараетесь ли вы избежать этой командировки? ",
      "Вы делитесь своими мыслями и чувствами с кем бы то ни было? ",
      "Вас раздражает, когда незнакомые люди на улице обращаются к вам с вопросом? ",
      "Вы думаете, что людям разных поколений действительно трудно понимать друг друга? ",
      "Вам сложно будет сказать человеку, чтобы он вернул вам деньги, взятые у вас несколько месяцев назад? ",
      "Вам подали некачественное блюдо в кафе. Промолчите ли вы?",
      "Вы заговорите с незнакомым человеком, оставшись с ним наедине? ",
      "Обнаружив в кассе, магазине, библиотеке длинную очередь, вы встанете в нее? ",
      "Вам неприятно быть судьей в чужих конфликтах? ",
      "Вы всегда оцениваете произведения искусства на свой вкус, не прислушиваясь к чужому мнению? ",
      "Если кто то выскажет ошибочную точку зрения на хорошо известный вам вопрос, вы предпочтете промолчать и не исправлять его? ",
      "Просьбы помочь в учебе или работе раздражают вас?",
      "Вам проще изложить свое мнение на бумаге, чем рассказать о нем? "
    ]

    # поле, где будем хранить суммарное кол-во баллов за ответы
    @score = 0

    # указатель на текущий вопрос теста, увеличивается на 1 с каждым заданным вопросом
    @current_question = 0
  end

  # В остальном этот метод повторяет алгоритм этого теста из 8 урока.
  def ask_next_question
    return if finished?

    # вывели очередной вопрос из массива
    puts @questions[@current_question]

    user_input = nil

    until (user_input == 1 || user_input == 2 || user_input == 3)
      puts "введите число: 1 – да, 2 – нет, 3 – иногда, и нажмите Enter"
      user_input = gets.to_i
    end

    if user_input == 1
      @score += 2 # увеличиваем значение поля на 2 за ответ "да"
    elsif user_input == 3
      @score += 1 # увеличиваем значение поля на единицу за ответ "иногда"
    end

    # увеличиваем счетчик заданных вопросов
    @current_question += 1
  end

  # проверяем, если больше вопросов нет, возвращаем true
  def finished?
    @current_question >= @questions.size
  end
end