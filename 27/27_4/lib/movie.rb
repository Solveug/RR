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

  def self.from_file(file_path)
    lines = File.readlines(file_path, encoding: 'UTF-8').map(&:chomp)
    new(
      name: lines[0],
      director: lines[1],
      year: lines[2].to_i,
      price: lines[3].to_i,
      quantity: lines[4].to_i
    )
  end
end
