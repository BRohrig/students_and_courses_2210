class Student
  attr_reader :name, :age

  def initialize(name_hash)
    @name = name_hash[:name]
    @age = name_hash[:age]

  end



end