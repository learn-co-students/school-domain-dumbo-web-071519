require 'pry'
# code here!
class School
    attr_reader :roster

    def initialize(name, roster = {})
        @name = name
        @roster = roster
    end

    def roster=(roster)
        @roster = roster
    end

    def add_student(student, grade)
        if !roster.keys.include?(grade)
            @roster[grade] = []              
        end
         @roster[grade] << student  
    end

    def grade(grade_num)
        @roster[grade_num]
    end
    
    def sort
        @roster.keys.map do |grade|
           @roster[grade] = @roster[grade].sort
        end
        @roster
    end
end

tester = School.new("Bay Ridge Skool")
tester.add_student("Bro", 9)