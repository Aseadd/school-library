require 'json'
require './src/person'
require './src/modules/list'

class Persistperson
  def initialize(person)
    @person = person
  end
  include List

  def read_people_info
    people_json = File.read('./src/people.json')
    people_info = JSON.parse(people_json)
    people_info.each_with_index do |person, index|
      puts "#{index} Person Type: #{person['person type']} Name: #{person['name']} Age: #{person['age']}"
    end
  end

  def persist_people_data(person_type, name, specialization, age)
    new_person = { 'person type' => person_type, 'name' => name, 'specialization' => specialization, 'age' => age }
    people_data = File.read('./src/people.json')
    people_list = JSON.parse(people_data)
    people_list << new_person
    File.write('./src/people.json', JSON.pretty_generate(people_list))
  end

  def persist_people_student(person_type, name, parent_permission, age)
    new_person = { 'person type' => person_type, 'name' => name, 'parent permission' => parent_permission,
                   'age' => age }
    people_data = File.read('./src/people.json')
    people_list = JSON.parse(people_data)
    people_list << new_person
    File.write('./src/people.json', JSON.pretty_generate(people_list))
  end
end
