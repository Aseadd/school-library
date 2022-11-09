require './src/book'
require './src/rental'

describe Book do
    let(:book) { Book.new('Harry Potter', 'J.K. Rowling') }
    
    it 'Should be instance of Book' do
        expect(book).to be_instance_of Book
    end
    
    it 'Should have a title' do
        expect(book.title).to eq('Harry Potter')
    end
    
    it 'Should have an author' do
        expect(book.author).to eq('J.K. Rowling')
    end
    
    it 'Should have a rental' do
        expect(book.rental).to eq(nil)
    end
    
    it 'Should have a rental' do
        expect(book.rental).to eq(nil)
    end
    end