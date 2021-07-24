# frozen_string_literal: true

class Movie < Product

  attr_reader :name, :year, :director

  def initialize(name, year, director, price, quantity)
    super price, quantity
    @name = name
    @year = year
    @director = director
  end

  def to_s
    "Фильм «#{@name}», #{@year} год, реж. #{@director}, #{@price} руб. (осталось #{@quantity})"
  end
end
