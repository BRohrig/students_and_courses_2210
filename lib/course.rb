class Course
  attr_reader :name, :capacity, :students

  def initialize(name, capacity)
    @name = name
    @capacity = capacity
    @students = []
  end

  def full?
    @students.count >= @capacity
  end

  def enroll(student)
    @students << student
  end

  def find_students_below(grade)
    @students.select do |student|
      student.grade < grade
    end
  end

  def any_students_below?(grade)
    if @students.find do |student|
      student.grade < grade
      end.nil?
      return false
    else
      return true
    end
  end

  def students_within?(lower_range, top_range)
    if @students.find do |student|
      student.grade <= top_range && student.grade >= lower_range
      end.nil?
      return false
    else
      return true
    end
  end

  def find_students_within(lower_range, upper_range)
    @students.select do |student|
      student.grade >= lower_range && student.grade <= upper_range
    end
  end
end