class Student
  attr_reader :scores, :average

  students = []
  
  def initialize(first_name, scores)   #Use named arguments!
    @first_name = first_name
    @scores = []
    # students << @first_name
  end

  def first_name

  end
  
  def average
    sum = 0
    @scores.each do |x|
      sum += x
    end
    average = sum / @scores.length
  end

  def letter_grade
    if average >= 90
      'A'
    elsif average >= 80
      'B'
    elsif average >= 70
      'C'
    elsif average >= 60
      'D'
    else
      'F'
    end
  end
end
 
## ADD YOUR CODE HERE and IN THE CLASS ABOVE
 
#1. Create an array of 5 Students each with 5 test scores between 0 and 100.  
# The first Student should be named "Alex" with scores [100,100,100,0,100]

students =       [  Student.new('Alex',   [100, 100, 100, 0, 100]), 
                    Student.new['Greg',   [37, 29, 56, 78, 45]     ],
                   ['Alexis', [89, 98, 87, 43, 43]     ],
                   ['Bob',    [56, 78, 67, 98, 100]    ],
                   ['Sue',    [87, 76, 78, 84, 89]     ]
                 ]

  
 
#3. Write a linear_search method that searches the student array for a student name
# and returns the position of that student if they are in the array.
 
 
 
 
#===========DRIVER CODE : DO NOT MODIFY =======
 
# Make sure these tests pass
# Tests for part 1:
 
p students[0].first_name == "Alex"
p students[0].scores.length == 5
# p students[0].scores[0] == students[0].scores[4]
# p students[0].scores[3] == 0
 
 
# Tests for part 2
 
# p students[0].average == 80
# p students[0].letter_grade == 'B'
 
# # Tests for part 3
 
# p linear_search(students, "Alex") == 0
# p linear_search(students, "NOT A STUDENT") == -1
