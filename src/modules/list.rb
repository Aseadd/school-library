module List
    #List People
    def list_all_people
        puts 'There are no people yet. Kindly Create people' if @people.empty?
        puts ' ====================================================================================='
        @people.each do |person|
          puts "Type: #{person.class}, Name: #{person.name}, ID: #{person.id}, Age: #{person.age}"
        end
        puts ' ====================================================================================='
    end
    #List Books
    def list_all_books
    puts 'There are no books yet. Kindly Create books' if @books.empty?
    puts ' ====================================================================================='
    p
    @books.each do |book|
        puts "Title: #{book.title}, Author: #{book.author}"
    end
    puts ' ====================================================================================='
    end

    #List Rentals
    def list_all_rentals_for_person_id
        print 'ID of person: '
        id = gets.chomp.to_i
    
        rentals = @rentals.filter { |rental| rental.person.id == id }
    
        puts 'Rentals:'
        puts '========================================================================'
        rentals.each do |rental|
          puts "Date: #{rental.date}, Book \"#{rental.book.title}\" by #{rental.book.author}"
        end
        puts '========================================================================'
    end
end