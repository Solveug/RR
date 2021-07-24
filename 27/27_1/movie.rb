# frozen_string_literal: true

class Movie < Product
  attr_reader :name, :year, :director

  def initialize(params)
    super
    @name = params[:name]
    @year = params[:year]
    @director = params[:director]
  end

  def to_s
    "Фильм «#{@name}», #{@year} год, реж. #{@director}, #{super}"
  end
end
