class Car
  attr_accessor :model

  @@number_of_cars = 0 #tworzymy zmienną klasową

  def initialize(brand, model, color)
    @brand = brand
    @model = model
    @color = color

    @@number_of_cars += 1   #przy każdym inicjowaniu nowego obiektu dodajemy dodatkową liczbę obiektów
  end

  def to_s
    "{#{color} #{brand} #{model}}"
  end

  def self.number_of_cars
    @@number_of_cars
  end
end

car = Car.new("Ford", "Mondeo", "red")
Car.new("Fiat", "Panda", "red")
Car.new("Opel", "Astra", "red")

puts Car.number_of_cars
# puts car
