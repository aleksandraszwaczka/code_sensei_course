["a", "bb", "ccc"].sum(0) do |element|
  element.length
end
 #stuckoverflow forum

 [1, 3, 4].sum(0) { |i| i }
 => 8

 [1, 3, 4].sum(0) { |i| 2 }
 => 6

 users = [ { :name => 'Janek', :age => 23 }, { :name => 'Rafał', :age => 45} ]
puts users.sum(0) { |user| user[:age] }
#sumuje lata wszystkich użytkowników
#(0) - element początkowy sumy
[1, 3, 4].sum(0) { |i| i }
=>8
[1, 3, 4].sum(0) { |i| i } == 0 + 1 + 3 + 4

[1.2, 3, 4].sum(0.0) { |i| i }
=> 8.2

[1, 3, 4].sum(0.0)
=>8.0

[1, 3, 4].sum("") { |i| i }
=>"134"

[1, 3, 4].sum(-1)
=> 7
#w nawiasie jest ta liczba lub element od którego zaczynamy sumowanie i dopiero do niego dodajemy elementy z tablicy


(1..100.to_a.sum)
#.. od jeden do 100 włącznie
#... od jeden do 99

[1].sum(3) { |i| i * 4 }
=> 7

(1...100).to_a.length



user[0][:age]
=>23
