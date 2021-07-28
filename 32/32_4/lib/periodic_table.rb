require 'json'
require_relative 'element'

class PeriodicTable
  def initialize(elements = [])
    @elements = elements
  end

  def self.from_file(file_name)
    file = File.read(file_name)
    data = JSON.parse(file)
    new(data['elements'].map { |elem| Element.new(elem) })
  end

  def description
    <<~DES
      Периодическая таблица элементов Д.И. Менделеева
    DES
  end

  def find(symbol)
    @elements.find { |el| el.symbol == symbol } || "Не удалось найти элемент #{symbol}"
  end

  def epic_show
    @elements.map { |e| '|%3s ' % e.symbol }.each_slice(10).map(&:join).join("\n")
  end
end

