require './src/person'

class Teacher < Person
  attr_reader :specialization

  def initialize(age, specialization, name = 'Unkown')
    super(name, age)
    @specialization = specialization
  end

  def can_use_services?
    true
  end
end
