require './src/student'

describe Student do
    let(:student) { Student.new('Joe', true, 15) }

    it 'Should be instance of Student' do
        expect(student).to be_instance_of Student
    end

    it 'Should have a name' do
        expect(student.name).to eq('Joe')
    end

    it 'Should have a age' do
        expect(student.age).to eq(15)
    end
end