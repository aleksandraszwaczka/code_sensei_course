class Animal
  def eat
    puts "Mniam, mniam..."
  end
end

class Dog < Animal
  def bark
    puts "Hau, hau!"
  end
end

class Cat < Animal
  def miau
    puts "Miauuu...!"
  end
end


dog = Dog.new
cat = Cat.new
dog.bark
cat.miau
cat.eat
dog.eat
