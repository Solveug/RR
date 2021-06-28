# frozen_string_literal: true

class Answer
  attr_reader :text_answer, :score_range

  def initialize(score_range, text_answer)
    @text_answer = text_answer
    @score_range = Range.new(*score_range.split('..').map(&:to_i))
  end

  def to_s
    @text_answer
  end
end
