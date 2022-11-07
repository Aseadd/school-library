require './src/book'
require './src/modules/list'

class BookOerations
    def initialize(book)
        @books = book
    end

    include List

    def create_book
        print 'Title: '
    title = gets.chomp

    print 'Author: '
    author = gets.chomp

    @books.push(Book.new(title, author))
    puts 'Book created successfully'  
    end

    
end