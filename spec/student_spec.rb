require './lib/student'

RSpec.describe Student do
  let(:student) {Student.new({name: "Morgan", age: 21})}
  it 'has a name and age which are input as a hash' do
    expect(student).to be_a(Student)
    expect(student.name).to eq("Morgan")
    expect(student.age).to eq(21)
  end

  it 'has an array of scores that starts out empty' do
    expect(student.scores).to eq([])
  end

  it 'has a method to add scores to the scores array' do
    student.log_score(89)
    student.log_score(78)
    
    expect(student.scores).to eq([89, 78])
  end

  it 'has a method to give the average score to 1 decimal' do
    student.log_score(89)
    student.log_score(78)

    expect(student.grade).to eq(83.5)
  end
end