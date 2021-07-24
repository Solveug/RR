# frozen_string_literal: true

class ProductCollection
  PRODUCT_TYPES = {
    movie: { dir: 'movies', class: Movie },
    book: { dir: 'books', class: Book }
  }.freeze

  def initialize(products = [])
    @products = products
  end

  def self.from_dir(dir_path)
    products = []

    PRODUCT_TYPES.each do |_type, hash|
      product_dir = hash[:dir]
      product_class = hash[:class]
      Dir["#{dir_path}/#{product_dir}/*.txt"].each do |path|
        products << product_class.from_file(path)
      end
    end
    new(products)
  end

  def to_a
    @products
  end

  def sort!(params)
    case params[:by]
    when :name
      @products.sort_by!(&:to_s)
    when :price
      @products.sort_by!(&:price)
    when :quantity
      @products.sort_by!(&:quantity)
    end

    @products.reverse! if params[:order] == :asc
    self
  end
end
