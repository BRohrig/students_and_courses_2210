class Student
  attr_reader :name, :age, :scores

  def initialize(input_hash)
    @name = input_hash[:name]
    @age = input_hash[:age]
    @scores = []
  end

  def log_score(score)
    @scores << score
  end



end