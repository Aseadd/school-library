require './src/person'

class Student < Person
  attr_reader :classroom

  def initialize(age, classroom, name = 'Unknown', parent_permission: true)
    super(name, age)
    @parent_permission = parent_permission
    @classroom = classroom
  end

  def play_hooky
    '¯\(ツ)/¯'
  end

  def update_classroom(new_classroom)
    @classroom = new_classroom
    new_classroom.students.pysh(self) unless new_classroom.students.include?(self)
  end
end
