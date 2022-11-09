require './src/teacher'

describe Teacher do
    let(:teacher) { Teacher.new('James', 'Math', 30) }

    it 'Should be instance of Teacher' do
        expect(teacher).to be_instance_of Teacher
    end

    it 'Should have a name' do
        expect(teacher.name).to eq('James')
    end

    it 'Should have a specialization' do
        expect(teacher.specialization).to eq('Math')
    end

    it 'Should have an age' do
        expect(teacher.age).to eq(30)
    end

end