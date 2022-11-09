require './src/person'

describe Person do
    let(:person) { Person.new(20, 'John') }
    
    it 'Should be instance of Person' do
        expect(person).to be_instance_of Person
    end
    
    it 'Should have a name' do
        expect(person.name).to eq('John')
    end
    
    it 'Should have a age' do
        expect(person.age).to eq(20)
    end
    
    it 'Should have a parent permission' do
        expect(person.can_use_services?).to eq(true)
    end
    end