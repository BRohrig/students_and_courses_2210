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

  def grade
    total = @scores.sum.to_f
    (total / @scores.count).round(1)
  end
end