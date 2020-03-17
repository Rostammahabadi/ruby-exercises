class ReadingList

  attr_reader :books

  def initialize
    BOOKS = ["1984", "The Hobbit", "I, Robot"]
    @books = BOOKS
  end

  def <<(book)
    @books << book
  end

end
