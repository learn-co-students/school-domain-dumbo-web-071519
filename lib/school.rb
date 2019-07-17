require 'pry'

class School
    def initialize(name)
        @name = name
        @roster = {}    
    end

    def add_student(name, grade)
        roster[grade] ||= []
        roster[grade] << name
    end

    def grade(student_grade)
        roster[student_grade]
    end

    def sort
        sortedHash = {}
        roster.each do |gradeKey, students|
            sortedHash[gradeKey] = students.sort
        end
        return sortedHash
    end
    attr_accessor :name, :roster
end
