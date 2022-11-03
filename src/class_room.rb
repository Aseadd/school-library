class Classroom
  attr_accessor :label
  attr_reader :students

  def initialize(label)
    @label = label
    @students = []
  end

  def add_student(student)
    @student.push(student) unless @students.include?(student)
    student.update_classroom(self) unless student.classroom == self
  end
end
