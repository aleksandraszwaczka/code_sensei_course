[1, 4, 5].each { |e| puts e }

[1, 4, 5].each do |e|
puts e
puts e + 2
end


users.detect { |user| user[:name] == 'Janek' }

users.select { |user| user[:name] == 'Janek' }

users.any? { |user| user[:name] == 'Janek' }
#pytamy czy jest jakikolwiek użytkownik o takich paramertach

users.none?
#zaprzeczenie wyrażenia (nie ma żadnego użytkownika który spełni te warunkki)

!(users.any? { |user| user[:name] == 'Janek' })
#negacja


[2, 4, 5, 6].map { |i| i }
=> [2, 4, 5, 6]
[2, 4, 5, 6].map { |i| i*2 }
=> [4, 8, 10, 12]
#zwraca zmienioną tablicę
# .map bierze każdy element z tablicy i działa na nim
