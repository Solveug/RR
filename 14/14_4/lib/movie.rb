# frozen_string_literal: true

class Movie
  attr_reader :title, :producer, :year

  def initialize(title, producer, year)
    @title = title
    @producer = producer
    @year = year
  end

  def to_s
    "#{@title} #{@producer} #{@year}"
  end
end
