# frozen_string_literal: true

class Book < Product
  attr_reader :name, :genre, :author

  def initialize(params)
    super
    @name = params[:name]
    @genre = params[:genre]
    @author = params[:author]
  end

  def to_s
    "Книга «#{@name}», #{@genre}, автор - #{@author}, #{super}"
  end
end
