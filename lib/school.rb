require "pry"

class School
    def initialize(school_name)
        @name = school_name
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

# school = School.new("Bayside")
# school.add_student("Zach", 9)
# school.add_student("Stacy", 9)
# school.add_student("Ally", 9)
# school.add_student("John", 11)
# school.add_student("Bob", 3)

# binding.pry

# 0