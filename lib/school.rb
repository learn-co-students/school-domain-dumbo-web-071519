=begin 
I actually copied this from the Solutions page, 
but it makes a lot of sense looking at it this way.
=end

class School
    attr_accessor :name, :roster
  
    def initialize(name)
      @name = name
      @roster = {}
    end
  
    def add_student(student_name, grade)
      roster[grade] ||= []
      roster[grade] << student_name
    end
  
    def grade(student_grade)
      roster[student_grade]
    end
  
    # this method should arrange the students in each grade by alphabetical order
    def sort
      sorted = {}
      roster.each do |grade, students|
        sorted[grade] = students.sort
      end
      sorted
    end
  end
