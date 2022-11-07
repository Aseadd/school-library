require './src/book'
require './src/rental'
require './src/class_room'
require './src/student'
require './src/teacher'
require './src/person'
require './src/app'
require './src/book_operations'
require './src/rental_operations'
require './src/person_operations'
# rubocop:disable Metrics
class Main
  def initialize
    @book = []
    @person = []
    @rental = []
    @books = BookOerations.new(@book)
    @people = PersonOperations.new(@person)
    @rentals = RentalOperations.new(@rental, @book, @person)
    @class = Classroom.new('Class 1')
  end

  def main
    puts 'Welcome to School Library App!'
    option = nil
    while option != '7'
      puts 'Please choose an option by entering a number:'
      puts '========================================='
      puts '1 - List all books'
      puts '2 - List all people'
      puts '3 - Create a person'
      puts '4 - Create a book'
      puts '5 - Create a rental'
      puts '6 - List all rentals for a given person id'
      puts '7 - Exit'
      puts '========================================='
      option = gets.chomp
      case option
      when '1'
        @books.list_all_books
      when '2'
        @people.list_all_people
      when '3'
        @people.create_person
      when '4'
        @books.create_book
      when '5'
        @rentals.create_rental
      when '6'
        @rentals.list_all_rentals_for_person_id
      when '7'
        puts 'Thank you for using this app!'
      else
        puts 'Invalid option'
      end
    end
  end
  # rubocop:enable Metrics
end
main = Main.new
main.main
