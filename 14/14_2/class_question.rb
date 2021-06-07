# frozen_string_literal: true

class Question
  attr_reader :text, :answer_yes, :answer_no, :answer_sometimes

  def initialize(text, answer_yes, answer_no, answer_sometimes)
    @text = text
    @answer_yes = answer_yes
    @answer_no = answer_no
    @answer_sometimes = answer_sometimes
  end

  def to_s
    @text
  end
end
