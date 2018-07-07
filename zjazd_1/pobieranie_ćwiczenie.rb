require "open-uri" #zaciąga nową bibliotekę lub plik do Ruby i dzięki temu możemy z niej korzystać
puts open("http://www.ruby-lang.org/).read
