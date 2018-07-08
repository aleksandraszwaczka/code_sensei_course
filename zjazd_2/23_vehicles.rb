class Vehicle
  attr_reader :cost #to co użytkownik może odczytać z zewnatrz programu

  def initialize
    @cost = 0
  end

  def go(distance)
    @cost += distance * @price_per_km
  end
end

class Car < Vehicle
  def initialize
    super

    @price_per_km
  end

  # def go(distance)
  #   @cost += distance * 0.2
  # end
end

class Train < Vehicle
  def go(distance)
    @cost += 10
  end
end

class Bike
  def go(distance)
    super

    @price_per_km = 0
  end
end

vehicles = [Car.new, Train.new, Bike.new]

vehicles[0].go(220)
vehicles[0].go(15)
vehicles[1].go(4)
vehicles[1].go(60)
vehicles[2].go(30)

vehicles.each { |vehicles| puts vehicle.cost }
