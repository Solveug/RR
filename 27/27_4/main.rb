# frozen_string_literal: true

require_relative 'lib/product'
require_relative 'lib/movie'
require_relative 'lib/book'
require_relative 'lib/product_collection'

collection = ProductCollection.from_dir("#{File.dirname(__FILE__)}/data")

collection.sort!(by: :price, order: :asc)
# binding.irb
collection.to_a.each do |product|
  puts product
end
