require './src/nameable'
require './src/capitalize'
require './src/trimmer'
require './src/base_decorator'

class Person < Nameable
  def initialize(age, name = 'Unkown', parent_permission: true)
    super()
    @id = Random.rand(1...1000)
    @name = name
    @age = age
    @parent_permission = parent_permission
  end

  attr_accessor :name, :age
  attr_reader :id

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
end

person = Person.new(22, 'maximilianus')
puts person.correct_name
capitalized_person = Capitalizer.new(person)
puts capitalized_person.correct_name
capitalized_trimmed_person = Trimmer.new(capitalized_person)
puts capitalized_trimmed_person.correct_name
