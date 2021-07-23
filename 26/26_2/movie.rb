# frozen_string_literal: true

class Movie < Product
  def initialize(price, quantity, name)
    super price, quantity
    @name = name
  end

  attr_reader :name
end
