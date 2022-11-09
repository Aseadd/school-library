require './src/rental'
require './src/book'
require './src/person'
require './src/book_operations'
require './src/person_operations'
require './src/modules/list'
require './src/persist_book'
require './src/persist_person'
require './src/persist_rental'

class RentalOperations
  attr_reader :rentals, :books, :people

  def initialize(rentals, books, people)
    @rentals = rentals
    @books = books
    @people = people
  end

  include List

  def create_rental(date, book_index, person_index)
    @rentals.push(Rental.new(date, @books[book_index], @people[person_index]))
    puts 'Rental created successfully'
  end
end
