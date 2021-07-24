# frozen_string_literal: true

class Book < Product
  attr_reader :name, :genre, :author

  def initialize(name, genre, author, price, quantity)
    super price, quantity
    @name = name
    @genre = genre
    @author = author
  end

  def to_s
    "Книга «#{@name}», #{@genre}, автор - #{@author}, #{@price} руб. (осталось #{@quantity})"
  end
end
