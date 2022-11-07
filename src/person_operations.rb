require './src/person'
require './src/modules/list'

class PersonOperations
  def initialize(person)
    @people = person
  end

  include List

  def create_person(name, specialization, age)
    teacher = Teacher.new(name, specialization, age)
    @people.push(teacher)
    puts 'Person created successfully'
  end

  def create_student(name, parent_permission, age)
    student = Student.new(name, parent_permission, age)
    @people.push(student)
  end
end
