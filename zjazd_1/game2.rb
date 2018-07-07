admins = ["Adam", "Ania", "Bartek", "Marek", "Kasia", "Karol"]

name = gets.chomp
if admins.include?(name)
  puts "Witaj."
else
   puts "Brak dostępu"

end
