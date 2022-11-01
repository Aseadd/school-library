require './src/baseDecorator'

class Capitalizer < Decorator
  def correct_name
    @nameable.correct_name.capitalize
  end
end