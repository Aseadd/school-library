require 'json'
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
require './src/persist_book'
require './src/persist_person'

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
    @book_json = PersistBook.new(@book)
    @people_json = Persistperson.new(@person)
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

        @people_json.read_people_info
        print 'Do you want to create a student (1) or a teacher (2)? [Input the number]: '
        person_type = gets.chomp
        if person_type != '1' && person_type != '2'
          puts 'Invalid option'
          return
        end

        print 'Age: '
        age = gets.chomp

        print 'Name: '
        name = gets.chomp
        if person_type == '1'
          print 'Has parent permission? [Y/N]: '
          parent_permission = gets.chomp
          parent_permission = parent_permission.downcase == 'y'
          @people.create_student(name, parent_permission, age)
          @people_json.persist_people_student('Student', name, parent_permission, age)
        else
          print 'Specialization: '
          specialization = gets.chomp
          @people.create_person(name, specialization, age)
          @people_json.persist_people_data('Teacher', name, specialization, age)
        end
      when '4'
        @book_json.read_book_data
        print 'Title: '
        title = gets.chomp

        print 'Author: '
        author = gets.chomp
        @books.create_book(title, author)
        @book_json.persist_book(title, author)
      when '5'
        puts 'Select a book from the following list by number'
        @book.each_with_index do |book, index|
          puts "#{index}) #{book} Tiltle: #{book.title}, Author: #{book.author}"
        end

        puts
        puts 'Select a person from the following list by number (not id)'
        puts '========================================================================'
        @person.each_with_index do |person, index|
          puts "#{index}) #{person} Name: #{person.name}, ID: #{person.id}, Age: #{person.age}"
        end
        puts '========================================================================'

        puts 'Index of the book: '
        book_index = gets.chomp.to_i
        print 'Index of the person: '
        person_index = gets.chomp.to_i

        print 'Date: '
        date = gets.chomp

        @rentals.create_rental(date, book_index, person_index)
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
