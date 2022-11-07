require './src/rental'
require './src/book'
require './src/person'
require './src/book_operations'
require './src/person_operations'
require './src/modules/list'

class RentalOperations
  attr_reader :rentals, :books, :people

  def initialize(rentals, books, people)
    @rentals = rentals
    @books = books
    @people = people
  end

  include List

  def create_rental
    puts 'Select a book from the following list by number'
    @books.each_with_index do |book, index|
      puts "#{index}) #{book} Tiltle: #{book.title}, Author: #{book.author}"
    end
    book_index = gets.chomp.to_i

    puts
    puts 'Select a person from the following list by number (not id)'
    puts '========================================================================'
    @people.each_with_index do |person, index|
      puts "#{index}) #{person} Name: #{person.name}, ID: #{person.id}, Age: #{person.age}"
    end
    puts '========================================================================'
    person_index = gets.chomp.to_i

    puts
    print 'Date: '
    date = gets.chomp

    @rentals.push(Rental.new(date, @books[book_index], @people[person_index]))
    puts 'Rental created successfully'
  end
end
