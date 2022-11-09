require './src/person'
require './src/person_operations'
require './src/teacher'
require './src/student'


describe '#Create Teacher' do
    it 'creates a person' do
        people = []
        person = PersonOperations.new(people)
        person.create_person('James', 'Math', 30)
        expect(people[0].name).to eq('James')
        expect(people[0].age).to eq(30)
    end
end

describe '#Create Student' do
    it 'creates a student' do
        people = []
        person = PersonOperations.new(people)
        person.create_student('Joe', true, 15)
        expect(people[0].name).to eq('Joe')
        expect(people[0].age).to eq(15)
    end
end

