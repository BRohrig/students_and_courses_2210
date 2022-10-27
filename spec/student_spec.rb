require './lib/student'

RSpec.describe Student do
  let(:student) {Student.new({name: "Morgan", age: 21})}
  it 'has a name and age which are input as a hash' do
    expect(student).to be_a(Student)
    expect(student.name).to eq("Morgan")
    expect(student.age).to eq(21)
  end

  it 'has an array of scores that starts out empty'
end