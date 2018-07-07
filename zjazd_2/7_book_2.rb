
class Book
  def initialize(title, number_of_pages)
    @title = title
    @number_of_pages = number_of_pages
  end

  def to_s
    "#{@title} has #{@number_of_pages} pages"
  end
end

books = [
  Book.new("Bolek i Lolek", 120)
  Book.new("Pan Tadeusz", 300)
  Book.new("W pustyni i w puszczy", 220)
]

puts books #wypisuje dalej z metodą to_s
print books #wypisuje bez tej metody
