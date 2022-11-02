require './src/nameable'
require './src/capitalize'
require './src/trimmer'
require './src/base_decorator'
require './src/book'
require './src/rental'
require './src/class_room'
require './src/student'

class Person < Nameable
  attr_reader :rental, :id
  attr_accessor :name, :age

  def initialize(age, name = 'Unkown', parent_permission: true)
    super()
    @id = Random.rand(1...1000)
    @name = name
    @age = age
    @parent_permission = parent_permission
    @rental = []
  end

  private

  def of_age?
    @age >= 18
  end

  public

  def can_use_services?
    if of_age? || @parent_permission
      true
    else
      false
    end
  end

  def correct_name
    @name
  end

  def add_rental(date, book)
    @rental = Rental.new(date, book, self)
  end
end

person = Person.new(22, 'maximilianus')
puts person.correct_name
capitalized_person = Capitalizer.new(person)
puts capitalized_person.correct_name
capitalized_trimmed_person = Trimmer.new(capitalized_person)
puts capitalized_trimmed_person.correct_name
