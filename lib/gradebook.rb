class Gradebook
  attr_reader :instructor, :courses

  def initialize(instructor)
    @instructor = instructor
    @courses = []
  end

  def add_course(course)
    @courses << course
  end

  def students_by_course
    Hash[@courses.map { |course| [course, course.students]}]
  end

  def students_below(grade)
    students_under = []
    @courses.each do |course|
      if course.any_students_below?(grade) == true
       students_under << course.find_students_below(grade)
      end
    end
    students_under
  end

  def students_within(lower_end, upper_end)
    students_in_range = []
    @courses.each do |course|
      if course.students_within?(lower_end, upper_end) == true
        students_in_range << course.find_students_within(lower_end, upper_end)
      end
    end
    students_in_range
  end





end