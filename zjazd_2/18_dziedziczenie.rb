class Food
  def eat
    puts "munch, munch, very tasty"
  end
end

class Orange < Food
  def blend
    puts "Blending.."
  end
end

orange = Orange.new
orange.eat
orange.blend

food = Food.new
food.blend
#nie da się wywołać tej metody na tym obiekcie bo jest on klasę niżej
