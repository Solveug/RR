# frozen_string_literal: true

class Wardrobe
  def initialize(items = [])
    @items = items
  end

  def categories
    @items.map(&:category).uniq
  end

  def dress(temp)
    wear_to_dress = categories.map do |category|
      @items.select do |elem|
        elem.category == category && elem.temp.include?(temp)
      end.sample
    end.compact

    if wear_to_dress.size.zero?
      'У нас ничего нет для такой погоды, нужен шоппинг!'
    else
      wear_to_dress.join("\n")
    end
  end

  def self.from_dir(dir_name)
    new(
      Dir.glob("#{dir_name}/data/*txt").map do |file|
        Wear.new(*File.readlines(file, chomp: true))
      end
    )
  end
end
