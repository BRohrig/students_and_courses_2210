# Instructions
* Fork this Repository
* Clone your forked repo
* Complete the activity Below
* Push your solution to your repo
* Submit a Pull Request from your repo to this repo
* In your PR, please include:
  * Your name
  * A reflection on how you felt you did with this challenge

## Iteration 1

Use TDD to create a `Student` class that responds to the following interaction pattern:

```ruby
pry(main)> require './lib/student'
# => true

pry(main)> student = Student.new({name: "Morgan", age: 21})    
# => #<Student:0x00007fe196b0c050...>

pry(main)> student.name
# => "Morgan"

pry(main)> student.age
# => 21

pry(main)> student.scores
# => []

pry(main)> student.log_score(89)

pry(main)> student.log_score(78)    

pry(main)> student.scores
# => [89, 78]

pry(main)> student.grade #Average of all the scores
# => 83.5
```

## Iteration 2

Use TDD to create a `Course` class that responds to the following interaction pattern:

```ruby
pry(main)> require './lib/course'
# => true

pry(main)> require './lib/student'
# => true

pry(main)> course = Course.new("Calculus", 2)    
# => #<Course:0x00007fa0a69be328...>

pry(main)> course.name
# => "Calculus"

pry(main)> course.capacity
# => 2

pry(main)> course.students
# => []

pry(main)> course.full?
# => false

pry(main)> student1 = Student.new({name: "Morgan", age: 21})
# => #<Student:0x00007fa0a80ae588...>

pry(main)> student2 = Student.new({name: "Jordan", age: 29})    
# => #<Student:0x00007fa0a814f4d8...>

pry(main)> course.enroll(student1)    

pry(main)> course.enroll(student2)    

pry(main)> course.students
# => [#<Student:0x00007fa0a80ae588...>, #<Student:0x00007fa0a814f4d8...>]

pry(main)> course.full?
# => true
```

## Iteration 3

You have been contracted by the University of Denver to write a program that models gradebooks for its courses. Specifically, it would like you to implement the following features:

1. Each gradebook has an instructor, as well as a way to read that data
2. Each gradebook has courses and can list those courses
3. A gradebook can list all students in its courses
4. A gradebook can list all students with a grade below a given threshold

Build upon your code from the first two iterations to complete this task.

## Iteration 4

The University of Denver would like you to implement additional functionality. They would like to be able to track all the grades across all courses. They would also like to be able to find all students across all courses that have a grade in a given range.
