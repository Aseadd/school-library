require './src/class_room'

describe Classroom do
    let(:classroom) { Classroom.new('Class 1') }

    it 'Should be instance of Classroom' do
        expect(classroom).to be_instance_of Classroom
    end
    
    it 'Should have a label' do
        expect(classroom.label).to eq('Class 1')
    end
    
    it 'Should have a students' do
        expect(classroom.students).to eq([])
    end
    end
