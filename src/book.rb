class Book
  attr_reader :rental

  def initialize(title, author)
    @title = title
    @author = author
    @rental = rental
    @rental = []
  end

  attr_accessor :title, :author

  def rental=(rental)
    @rental = rental
    rental.book << self
  end
end
