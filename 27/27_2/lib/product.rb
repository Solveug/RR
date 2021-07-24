# frozen_string_literal: true

class Product
  attr_accessor :price, :quantity

  def initialize(params)
    @price = params[:price]
    @quantity = params[:quantity]
  end

  def to_s
    "#{@price} руб. (осталось #{@quantity} шт.)"
  end

  def update(params)
    @price = params[:price] if params[:price]
    @quantity = params[:quantity] if params[:quantity]
  end
end
