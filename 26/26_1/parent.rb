# frozen_string_literal: true

class Parent
  def initialize(name)
    @name = name
  end

  attr_reader :name

  def obedience
    true
  end
end
