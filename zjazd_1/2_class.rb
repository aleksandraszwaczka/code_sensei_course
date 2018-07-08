class Animal
end

class Car
end

class CoffeeMachine
  def make_coffee
    puts "Making coffee now"
  end
  def add_milk
    puts "Pouring milk"
  end
end
#metoda instancyjna


def a
 sleep 5
 puts "a"
end


class CoffeeMachine
  def grind_grains
    puts "Grinding grains"
  end

  def make_coffee
    self.grind_grains
    puts "Making coffee"
  end
end
