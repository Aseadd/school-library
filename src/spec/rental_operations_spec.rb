require './src/rental_operations'
require './src/book_operations'
require './src/person_operations'
require './src/teacher'

# describe '#Create Rental' do 
#     it 'A new rental should be returned' do
#         rentals = []
#         books = []
#         people = []
#         book = BookOerations.new(books)
#         person = PersonOperations.new(people)
#         book.create_book('Harry Potter', 'J.K. Rowling')
#         book_index = books.length - 1
#         person.create_person('James', 'Math', 30)
#         person_index = people.length - 1
#         rental = RentalOperations.new(rentals, book['title'], person)
#         rental.create_rental('2021-01-01', 0, 0)
#         expect(rentals[0].date).to eq('2021-01-01')
#     end
# end


# require_relative 'spec_helper' 
describe Rental do
     let(:book) { Book.new('The Higher life', 'Pastor Chris') } 
     let(:person) { Person.new(45, 'Madison') } 
     let(:rental) { Rental.new('2022-09-07', book, person) } 

     describe '#new' do 
        it 'takes three parameters and returns a Rental object' do 
            expect(rental).to be_an_instance_of(Rental) 
        end 
    end
            describe '#rentals' do 
            it 'check for rental history' do
                    expect(rental.date).to eql '2022-09-07' 
                    expect(rental.book.title).to eql 'The Higher life' 
                    expect(rental.person.name).to eql 'Madison' 
                end 
            end 
        end 
