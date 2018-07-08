module Collar
  def pull
    puts "Pulling..."
  end
end

class Dog
  extend Collar
  #extend robi z tego metodę klasową
end

class Cat
  include Collar
  #metoda instancyjna
end

Dog.pull
Cat.new.pull
