# frozen_string_literal: true

class Test
  attr_reader :name, :info, :questions, :answers, :total

  def initialize(name, info)
    @name = name
    @info = info
    @questions = []
    @answers = []
    @total = 0
  end

  def show_info
    "#{@name}\n#{@info}"
  end

  def add_question(text, answer_yes = 2, answer_no = 0, answer_sometimes = 1)
    @questions << Question.new(text, answer_yes, answer_no, answer_sometimes)
  end

  def add_answer(score_range, text_answer)
    @answers << Answer.new(score_range, text_answer)
  end

  def score(total)
    @total += total
  end

  def show_score
    # @answers.each{|answer| return answer if answer.score_range.include?(@total)}
    "Вы набрали: #{@total} баллов\n#{@answers.find { |answer| answer.score_range.include?(@total) }}"
  end
end
