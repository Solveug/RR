# frozen_string_literal: true

require_relative 'question'
require 'rexml/document'

class Victorina
  attr_reader :questions

  def self.from_file(file_name)
    file = File.read(file_name)
    doc = REXML::Document.new(file)

    right_answer = nil
    questions = doc.get_elements('questions/question').map do |item|
      variants = item.get_elements('variants/variant').map do |variant|
        right_answer = variant.text if variant.attributes['right'] == 'true'
        variant.text
      end

      Question.new(
        text: item.elements['text'].text,
        variants: variants,
        right: right_answer,
        time: item.attributes['seconds'].to_i,
        points: item.attributes['points'].to_i
      )
    end
    new(questions)
  end

  def initialize(questions = [])
    @questions = questions
  end

  def greeting
    "Здравствуйте, Вас приветствует игра 'Мини-викторина'."
  end

  def rules
    <<-RULES
    +-----------------+
    |  Правила игры:  |
    +-----------------+

    Мы задаем #{@questions.size} вопросов.
    Вы должны ответить правильно на каждый вопрос и уложиться в отведенное время.
    Чтобы ответить на вопрос, введите номер варианта, который считаете верным.
    За каждый правильный ответ Вам начисляются баллы. Всего можно набрать #{total} баллов.
    Вы можете улучшать свой предыдущий результат.

    Удачи!

    RULES
  end

  def start
    @score = 0
    @current_question = 0
    @total_time = 0
    @right_user_answer = 0
    @questions = @questions.shuffle
  end

  def next
    @question_start_time = Time.now.to_i
    @questions[@current_question]
  end

  def finish?
    @current_question == @questions.size
  end

  def get_answer(user_answer)
    current = @questions[@current_question]
    right_answer = user_answer == current.right_index + 1
    spend_time = Time.now.to_i - @question_start_time
    @total_time += spend_time
    return_str =
      if spend_time > current.time
        <<~HEREDOC
          #{'          '}
                    Вы не уложились в отведенное время!
          #{'          '}
        HEREDOC
      elsif right_answer
        @score += current.points
        @right_user_answer += 1
        <<~HEREDOC
          #{'          '}
                    Правильно, потратили на ответ #{spend_time} сек.
          #{'          '}
        HEREDOC
      else
        <<~HEREDOC
          #{'          '}
                    Не верный ответ! (верный ответ: #{current.right})
          #{'          '}
        HEREDOC
      end

    @current_question += 1 unless finish?

    return_str
  end

  def save_result(file_name)
    File.write(file_name.to_s, "#{@right_user_answer},#{@score},#{@total_time}")
  end

  def last_result(file_name)
    result_last = File.readlines(file_name, chomp: true).last
    if result_last.nil?
      'Прошлых результатов не обнаружено!'
    else
      result_last = result_last.split(',')
      <<-LAST
    +----------------+
    | В прошлый раз: |
    +----------------+
    Вы ответили на #{result_last[0]} из #{@questions.size} вопросов.
    Вы набрали #{result_last[1]} из #{total} баллов.
    Вы потратили #{result_last[2]} сек.

      LAST
    end
  end

  def total
    @questions.map(&:points).sum
  end

  def score
    <<-SCORE
    +----------------+
    |   В этот раз:  |
    +----------------+
    Вы ответили на #{@right_user_answer} из #{@questions.size} вопросов.
    Вы набрали #{@score} из #{total} баллов.
    Вы потратили #{@total_time} сек.

    SCORE
  end

  def restart
    <<-RESTART
    Вы хотите улучшить свой результат?
    +----------------+
    |    YES / NO:   |
    +----------------+
    RESTART
  end

  def bye
    <<-BYE
    +----------------+
    |   ДО ВСТРЕЧИ!  |
    +----------------+
    BYE
  end
end
