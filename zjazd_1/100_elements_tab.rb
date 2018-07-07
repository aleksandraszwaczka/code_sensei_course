(1..100).group_by { |i| i%10 }
# pokazuje
=> {1=>[1, 11, 21, 31, 41, 51, 61, 71, 81, 91],
 2=>[2, 12, 22, 32, 42, 52, 62, 72, 82, 92],
 3=>[3, 13, 23, 33, 43, 53, 63, 73, 83, 93],
 4=>[4, 14, 24, 34, 44, 54, 64, 74, 84, 94],
 5=>[5, 15, 25, 35, 45, 55, 65, 75, 85, 95],
 6=>[6, 16, 26, 36, 46, 56, 66, 76, 86, 96],
 7=>[7, 17, 27, 37, 47, 57, 67, 77, 87, 97],
 8=>[8, 18, 28, 38, 48, 58, 68, 78, 88, 98],
 9=>[9, 19, 29, 39, 49, 59, 69, 79, 89, 99],
 0=>[10, 20, 30, 40, 50, 60, 70, 80, 90, 100]}
# czyli pogrupował elementy z tablicy w uporządkowaniu do dzielników

Array.group_by { |i| i % 10 }.transform_values { |v| v.length }
=> {6=>14, 1=> #itd}

hash.transform_values { |v| v.length }
#ta metoda wraca

hash.transform_values! { |v| v.length }
#ta metoda nie wraca, czyli kiedy po niej wpoiszemy znowu hash to zmieni się jego treść






hash = {}
