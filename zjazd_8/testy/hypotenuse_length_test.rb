require './hypotenuse_length'

def test_hypotenuse_length
  raise "Doesn't work" unless hypotenuse_length(3, 4) == 5.0
  raise "Doesn't work" unless hypotenuse_length(4, 3) == 5.0
  raise "Doesn't work" unless hypotenuse_length(6, 8) == 10.0
  raise "Doesn't work" unless hypotenuse_length(2, 10).round(1) == 10.2
  raise "Doesn't work" unless hypotenuse_length(1, 1).round(1) == 1.4

  "It's ok!"
end

  puts test_hypotenuse_length
#testy automatyczne
