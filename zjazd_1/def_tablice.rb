array.new(10) {10}


array = [2, 3]
array.push(4)
array# [2, 3, 4]
array << 5 #to samo co #push


array.delete(3)
#usuwa wszystkie trójki z tablicy


array.delete_at(1)
#w nawiasie jest pozycja elementu czyli w tym wypadku 3

array + [1, 4]
#tworzy nową tablicę
#wtedy trzeba ją przypisać do nowej nazwy bo tablica array pozostaje niezmienna

array = [1, 4, 8]

array.insert(1, 2)
#wstawia element 2 na pierwszą pozycję


Array#group_by   klasa array metoda group_by

array.new(100) { rand(100) }
#tworzy tablicę ze stu elementów przy losowaniu każdego (elementy mogą się powtarzać)
