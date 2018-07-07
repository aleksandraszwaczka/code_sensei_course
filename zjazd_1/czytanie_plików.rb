content = File.read('/etc/hosts') #czytanie plików
puts content



file = File.open("/etc/hosts")
file.each do |line|  #do i end zamiast klamerki kiedy nie chcemy pisać tego w jednej lini
  next if line[0] == "#" #line[0] oznacza, że zaczyna od pierwszej lini
  puts line
end
file.close



# tworzenie pliku
data = File.open("secret_data.txt", "w+") do |file|
  file.puts 42  #f to plik który otwieramy, a ta metoda wkłada 42 do tego pliku, czyli tworzy w nim linię
end
