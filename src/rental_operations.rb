require './src/rental'
require './src/book'
require './src/person'
require './src/book_operations'
require './src/person_operations'

class RentalOperations
    attr_reader :rentals, :books, :people

    def initialize(rentals, books, people)
        @rentals = rentals
        @books = books
        @people = people
    end

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

    def list_all_rentals_for_person_id
        print 'ID of person: '
        id = gets.chomp.to_i
    
        rentals = @rentals.filter { |rental| rental.person.id == id }
    
        puts 'Rentals:'
        puts '========================================================================'
        rentals.each do |rental|
          puts "Date: #{rental.date}, Book \"#{rental.book.title}\" by #{rental.book.author}"
        end
        puts '========================================================================'
      end

end