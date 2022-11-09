require './src/person'
require './src/teacher'
require './src/student'
require './src/class_room'
require './src/book'
require './src/rental'

# describe Rental do
#     before(:each) do
#         @books = []
#         @people = []
#         @rentals = []
#         @book = Book.new('Harry Potter', 'J.K. Rowling')
#         @person = Teacher.new('James', 'Math', 30)
#         @rental = Rental.new('2021-01-01', @book, @person)
#     end

#     it 'Should be instance of Rental' do
#         expect(@rental).to_be_instance_of Rental
#     end

#     it 'Should have a date' do
#         expect(@rental.date).to eq('2021-01-01')
#     end

#     it 'Should have a book' do
#         expect(@rental.book).to eq(@book)
#     end

#     it 'Should have a person' do
#         expect(@rental.person).to eq(@person)
#     end

#     it 'Should person be instance of Student' do
#         expect(@rental.person).to be_instance_of Student
#     end

# end


describe Rental do
    let (:book) { Book.new('Harry Potter', 'J.K. Rowling') }
    let (:person) { Teacher.new('James', 'Math', 30) }
    let (:rental) { Rental.new('2021-01-01',book, person) }

    it 'Should be instance of Rental' do
        expect(rental).to be_instance_of Rental
    end

    it 'Should have a date' do
        expect(rental.date).to eq('2021-01-01')
    end

    it 'Should have a book' do
        expect(rental.book).to eq(book)
    end

    it 'Should have a person' do
        expect(rental.person).to eq(person)
    end

    it 'Should person be instance of Teacher' do
        expect(rental.person).to be_instance_of Teacher
    end

end
