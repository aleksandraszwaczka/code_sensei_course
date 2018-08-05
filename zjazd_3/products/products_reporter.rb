require './products_collection'

class ProductReporter
  CSV_PATH = 'products.csv'.freeze

  def initialize(min_max_price)
    @min_price, @max_price = min_max_price
  end

  def call
    # product_collection.each do |product|
    products = product_collection.select do |product|
      product.price >= @min_price && product.price <= @max_price
    end
    puts products
  end

  private

  def product_collection
    ProductCollection.new(CSV_PATH)
  end
end

#stałe zapisuje się z dużych liter, oddzielamy podłogą i na stałe jest ścieżka przypisana do pliku
