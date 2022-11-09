require './src/book_operations'
require './src/persist_book'


    describe '#create_book' do
        it 'creates a book' do
            books = []
            book = BookOerations.new(books)
            book.create_book('Harry Potter', 'J.K. Rowling')
            expect(books[0].title).to eq('Harry Potter')
            expect(books[0].author).to eq('J.K. Rowling')
    end
    end

    describe '#list_books' do
        it 'Display number of books' do
            books = []
            book = BookOerations.new(books)
            book.create_book('Harry Potter', 'J.K. Rowling')
            book.create_book('Lord of the Rings', 'J.R.R. Tolkien')
           expect(books.length).to eq(2)
            end
    end

