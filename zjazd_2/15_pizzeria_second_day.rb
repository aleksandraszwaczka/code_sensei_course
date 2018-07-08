
class Pizzeria
  attr_reader :pizzas

  def initialize(pizza_names)
    @balance = 0
    @pizzas = []

    pizza_names.each do |pizza_name|
      add_pizza(pizza_name)
    end
  end

  def add_pizza(pizza_name)
		@pizzas.push(
      Pizza.new(pizza_name, 20, 32),
      Pizza.new(pizza_name, 30, 42),
      Pizza.new(pizza_name, 40, 52)
    )
	end

	def remove_pizza(pizza_name)
		@pizzas.delete_if do |pizza|
			pizza.name == pizza_name
		end
	end
end

class Pizza
  attr_reader :name, :prize, :size

  def initialize(name, prize, size)
    @name = name
    @prize = prize
    @size = size
  end

  def to_s
    "name: #{@name}, prize: #{@prize}, size: #{size}"
  end
end

class User
  attr_accessor :balance

  def initialize(balance)
    @balance = balance
  end

  def ==(other)
    name == other.name &&
    prize == other.prize &&
    size == other.size
  end
end

# pizza_names = ["Margarita", "Capricossa", "Parma", "Kebab"]

# pizzeria = Pizzeria.new(pizza_names)
# puts pizzeria.pizzas
# puts "******************"
# pizzeria.add_pizza("Wege")
# puts pizzeria.pizzas
# puts "******************"
# pizzeria.remove_pizza("Wege")
# puts pizzeria.pizzas

pizza_1 = Pizza.new("Margarita", 20, 30)
pizza_2 = Pizza.new("Margarita", 20, 30)

puts pizza_1 == pizza_2
