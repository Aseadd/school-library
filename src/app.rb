require './src/book'
require './src/rental'
require './src/class_room'
require './src/student'
require './src/teacher'
require './src/person'
require './src/book_operations'
require './src/rental_operations'
require './src/person_operations'
class App
  def initialize
    @books = BookOerations.new([])
    @people = PersonOperations.new([])
    @rentals = RentalOperations.new([])
    @class = Classroom.new('Class 1')
  end

end
