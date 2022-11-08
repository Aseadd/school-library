require './src/book'
require './src/modules/list'
require 'json'

class BookOerations
  def initialize(book)
    @books = book
  end

  include List

  def create_book(title, author)
    @books.push(Book.new(title, author))
    
    puts 'Book created successfully'
  end
end
