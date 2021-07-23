# frozen_string_literal: true

class Product
  def initialize(price, quantity)
    @price = price
    @quantity = quantity
  end

  attr_reader :price, :quantity
end
