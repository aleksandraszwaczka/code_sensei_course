class Book
  def initialize(title, number_of_pages)
    @title = title
    @number_of_pages = number_of_pages
  end

  def title
  @title
  end

  def title=(title)
    @title = title
  end

  def number_of_pages
    @number_of_pages
  end

  def to_s
    "#{@title} has #{@number_of_pages} pages"
  end
end

books = [
  Book.new("Bolek i Lolek", 120),
  Book.new("Pan Tadeusz", 300),
  Book.new("W pustyni i w puszczy", 220)
]

book = books[0]
book.title = "Inny tytuł"
# puts book

def add_additional_info_to_books(books)
  books.each do |book|
    if book.number_of_pages > 200
      book.title += " (wiele stron) "
    end
  end
end

new_books = add_additional_info_to_books(books)
puts new_books


  #
  # def book_exists?(books, title)
  #   books.any? { |book| book.title == title }
  #   #albo books.any? do |book|
  #   #book.title == title
  # end

# def book_exists?(book, title)
#   book.each do |book|
#     returt true if book.title == title
# end


# puts book_exists?(books, "Sierotka Marysia")
# puts book_exists?(books, "Pan Tadeusz")
