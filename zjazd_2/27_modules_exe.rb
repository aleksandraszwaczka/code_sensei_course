module Collar
  def pull
    puts "Pulling.."
  end
end

module Water
  def drink
    puts "Gul, gul..."
  end
end

module TrackingChip
  def get_tracking_chip
    @tracking_chip ||= rand(100)
    #przypisuje wartość jeżeli @tracking_chip nie ma wartości, kiedy już ją nabędzie nie przypisze kolejnej wartości
  end
end

class Dog
  include Collar
  include Water
  include TrackingChip
end

# Dog.new.pull
# Dog.new.drink

dog = Dog.new
puts dog.get_tracking_chip
puts dog.get_tracking_chip
puts dog.get_tracking_chip
