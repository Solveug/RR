# frozen_string_literal: true

class Question
  attr_reader :text, :points, :time, :right

  def initialize(params)
    @text = params[:text]
    @variants = params[:variants]
    @points = params[:points].to_i
    @time = params[:time].to_i
    @right = params[:right]
  end

  def right_index
    @variants.index(@right)
  end

  def to_s
    "#{@text} (#{@time} сек. на ответ, количество баллов - #{@points})"
  end

  def variants
    @variants = @variants.shuffle
    @variants.map.with_index(1) { |e, i| "  #{i}. #{e}" }.join("\n")
  end
end
