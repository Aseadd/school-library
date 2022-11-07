require './src/person'

class PersonOperations
    def initialize(person)
        @people = person
    end

    def create_person
        print 'Do you want to create a student (1) or a teacher (2)? [Input the number]: '
    person_type = gets.chomp
    if person_type != '1' && person_type != '2'
      puts 'Invalid option'
      return
    end

    print 'Age: '
    age = gets.chomp

    print 'Name: '
    name = gets.chomp

    if person_type == '1'
      print 'Has parent permission? [Y/N]: '
      parent_permission = gets.chomp
      parent_permission = parent_permission.downcase == 'y'
      student = Student.new(name, parent_permission, age)
      @people.push(student)
    else
      print 'Specialization: '
      specialization = gets.chomp
      teacher = Teacher.new(name, specialization, age)
      @people.push(teacher)
    end
    puts 'Person created successfully'
    end

    def list_all_people
        puts 'There are no people yet. Kindly Create people' if @people.empty?
        puts ' ====================================================================================='
        @people.each do |person|
          puts "Type: #{person.class}, Name: #{person.name}, ID: #{person.id}, Age: #{person.age}"
        end
        puts ' ====================================================================================='
      end
end