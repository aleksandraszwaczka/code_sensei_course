class Pizzeria
  attr_reader :pizzas

  def initialize(pizza_names)
    @balance = 0
    @pizzas = []

    @pizzas = pizza_names.each do |pizza_name|
      @pizzas.push(
        Pizza.new(pizza_name, 20, 24)
        Pizza.new(pizza_name, 30, 32)
        Pizza.new(pizza_name, 40, 45)
      )
      end
  end

  def add_pizza(pizza_name)
    @pizza += 1

  end

  def remove_pizza(pizza_name)
    @pizza -= 1
  end
end

class Pizza
  attr_reader :name, :prize, :size

  def initialize(name, prize, size)
    @name = name
    @price = price
    @size = size
  end

  def to_s
    "name: #{@name}, prize: #{@prize}, size: #{@size}"
  end
end

  class User
    attr_accessor :balance

    def initialize(balance)
      @balance = balance

  end

pizza_names = ["Margarita", "Capricossa", "Parma", "Kebab"]

pizzeria = Pizzeria.new(pizza_names)
puts pizzeria.pizzas
puts "**********"
pizzeria.add_pizza("Wege")
puts pizzeria.pizza
puts "**********"
pizzeria.remove_pizza("Parma")
puts pizzeria.pizzas
