require './lib/gradebook'
require './lib/course'
require './lib/student'

RSpec.describe Gradebook do
  let(:gradebook) {Gradebook.new("Mrs. Marken")}
  let(:course1) {Course.new("English 1", 3)}
  let(:course2) {Course.new("Honors English", 2)}
  let(:student1) {Student.new({name: "Morgan", age: 21})}
  let(:student2) {Student.new({name: "Jordan", age: 29})}
  let(:student3) {Student.new({name: "Denise", age: 34})}

  it 'exists and has an instructor and access to that info' do
    expect(gradebook).to be_a(Gradebook)
    expect(gradebook.instructor).to eq("Mrs. Marken")
  end

  it 'can contain a list of courses and access them' do
    expect(gradebook.courses).to eq([])
    gradebook.add_course(course1)

    expect(gradebook.courses).to eq([course1])
    gradebook.add_course(course2)

    expect(gradebook.courses).to eq([course1, course2])
  end

  it 'can list all students in its courses' do
    course1.enroll(student1)
    course1.enroll(student2)
    course2.enroll(student3)
    gradebook.add_course(course1)
    gradebook.add_course(course2)

    expect(gradebook.students_by_course).to eq({course1 => [student1, student2],
                                                course2 => [student3]})
  end

  it 'can list all students with a grade below a given threshold' do
    course1.enroll(student1)
    course1.enroll(student2)
    course2.enroll(student3)
    gradebook.add_course(course1)
    gradebook.add_course(course2)
    student1.log_score(52)
    student1.log_score(50)
    student2.log_score(65)
    student2.log_score(75)
    student3.log_score(90)
    student3.log_score(100)

    expect(gradebook.students_below(70)).to eq([[student1]])
  end

  it 'can list all students with a grade in a given range' do
    course1.enroll(student1)
    course1.enroll(student2)
    course2.enroll(student3)
    gradebook.add_course(course1)
    gradebook.add_course(course2)
    student1.log_score(52)
    student1.log_score(50)
    student2.log_score(65)
    student2.log_score(75)
    student3.log_score(90)
    student3.log_score(100)

    expect(gradebook.students_within(50, 60)).to eq([[student1]])
    expect(gradebook.students_within(70, 80)).to eq([[student2]])
    expect(gradebook.students_within(90, 100)).to eq([[student3]])
  end



end