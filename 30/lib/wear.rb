# frozen_string_literal: true

class Wear
  attr_reader :category, :name, :temp

  def initialize(name, category, temp)
    @name = name
    @category = category
    @temp = temp_to_range(temp)
  end

  def temp_to_range(temp)
    temp = temp.delete('()')
    min_temp, max_temp = temp.split(',').map(&:to_i)
    (min_temp..max_temp)
  end

  def to_s
    "#{@name} (#{@category}) #{@temp}"
  end
end
