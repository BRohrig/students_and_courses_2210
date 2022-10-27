require './lib/course'
require './lib/student'

RSpec.describe Course do
  let(:course) {Course.new("Calculus", 2)}
  let(:student1) {Student.new({name: "Morgan", age: 21})}
  let(:student2) {Student.new({name: "Jordan", age: 29})}

  it 'is created with a course title and student capacity' do
    expect(course.name).to eq("Calculus")
    expect(course.capacity).to eq(2)
  end

  it 'has an array containing students, and a method to evaluate fullness' do
    expect(course.students).to eq([])
    expect(course.full?).to be false
  end

  it 'has a method to enroll students in the class' do
    course.enroll(student1)
    course.enroll(student2)

    expect(course.students).to eq([student1, student2])
    expect(course.full?).to be true
  end
end