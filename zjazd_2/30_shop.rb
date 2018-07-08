class Product
  attr_accessor :name, :price

  def initialize(name, price)
    @name = name
    @price = price
  end

  def to_s
    "Name: #{@name}, Prices #{@price}"
  end
end

class Shop
  attr_accessor :name, :products

  def initialize(name)
    @name = name
    @products = []
  end

  def add_product(product, quantity=1) #quantity=1 jeśli nie podamy innej liczby to stan quantity bedzie równy jeden
    quantity.times do
      @products.push(product)
    end
  end

  def take(product_name)
    index = @product.index { |product| product.name == product_name }

    @product.delate_at(index) if index
  end
end


product_1 = Product.new('milk', 2)
product_2 = Product.new('bread', 2.5)
