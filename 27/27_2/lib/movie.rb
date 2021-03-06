# frozen_string_literal: true

class Movie < Product
  attr_accessor :name, :year, :director

  def initialize(params)
    super
    @name = params[:name]
    @year = params[:year]
    @director = params[:director]
  end

  def to_s
    "Фильм «#{@name}», #{@year} год, реж. #{@director}, #{super}"
  end

  def update(params)
    super
    @name = params[:name] if params[:name]
    @year = params[:year] if params[:year]
    @director = params[:director] if params[:director]
  end
end
