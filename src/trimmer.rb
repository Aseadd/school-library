require './src/baseDecorator'
class Trimmer < Decorator
  def correct_name
    @nameable.correct_name[0..9]
  end
end