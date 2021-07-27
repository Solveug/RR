# encoding: utf-8
#
# Викторина с хранением вопросов в XML
# Демонстрация принципов ООП
#
# (с) goodprogrammer.ru и Алексей Зибарев

require 'rexml/document'

#
# Класс Вопрос для игры Викторина
class Question

  # Статический метод "фабрика" вопросов.
  # Возвращает массив Question объектов, найденных в 'file_name' файле
  #
  def self.read_questions_from_xml(file_name)
    # Читаем XML с вопросами и ответами
    file = File.new(file_name, 'r:utf-8')
    doc = REXML::Document.new(file)
    file.close

    # массив, куда сложим все созданные объекты Question
    questions = []

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
            right_answer = index if variant.attributes['right']
          end
        end
      end

      # добавляем свежесозданный вопрос в массив
      questions << Question.new(text, variants, right_answer)
    end

    # возвращаем массив вопросов из метода
    questions
  end

  # конструктор нового вопроса
  # параметры: текст, массив вариантов ответа, индекс правильного ответа
  def initialize(text, answer_variants, right_answer_index)
    @text = text
    @answer_variants = answer_variants
    @right_answer_index = right_answer_index
  end

  # Задаем вопрос, используя массив вариантов ответа
  def ask
    @answer_variants.each_with_index do |variant, index|
      puts "#{index + 1}. #{variant}"
    end

    user_index = STDIN.gets.chomp.to_i - 1
    @correct = (@right_answer_index == user_index)
  end

  # Возвращает true если на вопрос был дан верный ответ
  def correctly_answered?
    @correct
  end

  # Выводит текст вопроса
  def show
    puts
    puts @text
  end
end
