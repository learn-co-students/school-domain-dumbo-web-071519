# code here!

class School
    def initialize(new_school)
      @name = new_school
      @roster = {}
    end

    def roster
      @roster
    end

    def add_student(student_name, num)
      if !(@roster.keys.include? num)
        @roster[num] = [student_name]
      else
        @roster[num] << student_name
      end
    end

    def grade(num_grade)
      @roster[num_grade]
    end

    def sort
      @roster.keys.reduce({}) do |memo, grade|
        students = @roster[grade]
        memo[grade] = students.sort
        memo
      end
    end
end

