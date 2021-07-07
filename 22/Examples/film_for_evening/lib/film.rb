# frozen_string_literal: true

class Film
  attr_accessor :title, :director, :year

  def initialize(title, director, year)
    @title = title
    @director = director
    @year = year
  end

  def to_s
    # Стивен Спилберг — Список Шиндлера (1993)
    "#{@director} — #{@title} (#{@year})"
  end
end
