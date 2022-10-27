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

  it 'has a method to find students below a certain grade' do
    course.enroll(student1)
    course.enroll(student2)
    student1.log_score(50)
    student1.log_score(60)
    student2.log_score(75)
    student2.log_score(85)

    expect(course.find_students_below(79)).to eq([student1])
  end

  it 'has a method to find if any students exist below a certain grade' do
    course.enroll(student1)
    course.enroll(student2)
    student1.log_score(50)
    student1.log_score(60)
    student2.log_score(75)
    student2.log_score(85)

    expect(course.any_students_below?(45)).to be false
    expect(course.any_students_below?(60)).to be true
  end

  it 'has a method to find if any students exist within a certain grade range' do
    course.enroll(student1)
    course.enroll(student2)
    student1.log_score(50)
    student1.log_score(60)
    student2.log_score(75)
    student2.log_score(85)

    expect(course.students_within?(50, 60)).to be true
    expect(course.students_within?(40, 50)).to be false
    expect(course.students_within?(75, 80)).to be true

  end
end