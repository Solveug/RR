# frozen_string_literal: true

class Product
  attr_reader :price, :quantity

  def initialize(price, quantity)
    @price = price
    @quantity = quantity
  end
end
