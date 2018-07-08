class CoffeeMachine
  def make_coffee
    grind_grains
    puts "Making coffee"
    add_milk
  end

  private
#po tym komunikacie wszystkie metody stają się prywatne
#możesz ich użyć w petodzie publicznej, ale nie możesz ich samych pojedynczo wywołać

  def grind_grains
    puts "Grinding grains"
  end

  def add_milk
    puts "Adding milk"
  end
end

coffee_machine = CoffeeMachine.new
coffee_machine.make_coffee
