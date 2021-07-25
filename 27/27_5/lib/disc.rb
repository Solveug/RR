# frozen_string_literal: true

class Disc < Product
  attr_accessor :name, :artist, :genre, :year

  def initialize(params)
    super
    @name = params[:name]
    @artist = params[:artist]
    @genre = params[:genre]
    @year = params[:year]
  end

  def to_s
    "Альбом «#{@name}» - «#{@artist}», #{@genre}, #{@year} год, #{super}"
  end

  def update(params)
    super
    @name = params[:name] if params[:name]
    @artist = params[:artist] if params[:artist]
    @genre = params[:genre] if params[:genre]
    @year = params[:year] if params[:year]
  end

  def self.from_file(file_path)
    lines = File.readlines(file_path, encoding: 'UTF-8').map(&:chomp)
    new(
      name: lines[0],
      artist: lines[1],
      genre: lines[2],
      year: lines[3].to_i,
      price: lines[4].to_i,
      quantity: lines[5].to_i
    )
  end

  def show_cart
    "Альбом «#{@name}» - «#{@artist}», #{@genre}, #{@year} год, #{super}"
  end
end
