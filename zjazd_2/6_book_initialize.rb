#zmienne instancyjne

class Book
  def initialize
    @number_of_pages = 700
    puts "Number of pages: #{@number_of_pages}"
  end
end

harry_potter = Book.new


class Book
  def initialize(title, number_of_pages)
    @title = title
    @number_of_pages = number_of_pages
  end

  def show_book
    puts "#{@title} has #{@number_of_pages} pages"
  end
end

book = Book.new("Bolek i Lolek", 120)
book.show_book

book_1 = Book.new("Bolek i Lolek", 120)
book_2 = Book.new("W pustyni i w puszczy", 220)

def show_book(books)
  books.each { |book| book.show_book }
end

show_book([book_1, book_2])
