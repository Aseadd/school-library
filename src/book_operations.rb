require './src/book'

class BookOerations
    def initialize(book)
        @books = book
    end

    def create_book
        print 'Title: '
    title = gets.chomp

    print 'Author: '
    author = gets.chomp

    @books.push(Book.new(title, author))
    puts 'Book created successfully'  
    end

    def list_all_books
        puts 'There are no books yet. Kindly Create books' if @books.empty?
        puts ' ====================================================================================='
        p
        @books.each do |book|
          puts "Title: #{book.title}, Author: #{book.author}"
        end
        puts ' ====================================================================================='
      end
end