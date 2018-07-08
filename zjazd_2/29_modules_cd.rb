class Dog
  def to_s
    "Super dog"
  end
end

module Home
  class Dog
    def to_s
      "extra dog"
    end
  end
end


puts Dog.new
puts Home::Dog.new

#przestrzenie nazw służą do odseparowania kodu, zabieg jak ze ścieżkami lub katalogami
