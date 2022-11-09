require './src/persist_rental'

class Book
  attr_accessor :rental, :title, :author

  def initialize(title, author)
    @title = title
    @author = author
  end

  def add_rental(date, person)
    Rental.new(date, self, person)
  end
end
