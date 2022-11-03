require './src/book'
require './src/rental'
require './src/class_room'
require './src/student'
require './src/teacher'
require './src/person'
class App
  def initialize
    @books = []
    @people = []
    @rentals = []
    @class = Classroom.new('Class 1')
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

  def list_all_people
    puts 'There are no people yet. Kindly Create people' if @people.empty?
    puts ' ====================================================================================='
    @people.each do |person|
      puts "Type: #{person.class}, Name: #{person.name}, ID: #{person.id}, Age: #{person.age}"
    end
    puts ' ====================================================================================='
  end

  def create_person
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
      student = Student.new(name, parent_permission, age)
      @people.push(student)
    else
      print 'Specialization: '
      specialization = gets.chomp
      teacher = Teacher.new(name, specialization, age)
      @people.push(teacher)
    end
    puts 'Person created successfully'
  end

  def create_book
    print 'Title: '
    title = gets.chomp

    print 'Author: '
    author = gets.chomp

    @books.push(Book.new(title, author))
    puts 'Book created successfully'
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
