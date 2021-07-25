# frozen_string_literal: true

class Book < Product
  attr_accessor :name, :genre, :author

  def initialize(params)
    super
    @name = params[:name]
    @genre = params[:genre]
    @author = params[:author]
  end

  def to_s
    "Книга «#{@name}», #{@genre}, автор - #{@author}, #{super}"
  end

  def update(params)
    super
    @name = params[:name] if params[:name]
    @genre = params[:genre] if params[:genre]
    @author = params[:author] if params[:author]
  end

  def self.from_file(file_path)
    lines = File.readlines(file_path, encoding: 'UTF-8').map(&:chomp)
    new(
      name: lines[0],
      genre: lines[1],
      author: lines[2],
      price: lines[3].to_i,
      quantity: lines[4].to_i
    )
  end

  def show_cart
    "Книга «#{@name}», #{@genre}, автор - #{@author}, #{super}"
  end
end
