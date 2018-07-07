number = rand(100)
puts "Zgadnij liczbę"
loop do
  number2 = gets.to_i
  if number2 < number
    puts "więcej"
  elsif number2 > number
    puts "mniej"
  else
    puts "Brawo!"
    break
  end

end
