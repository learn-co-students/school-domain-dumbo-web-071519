# code here!

#Define the concept of a domain model.
#Create your own domain model.
#Write instance methods that manipulate nested data structures.

# school.add_student("Screech", 11)

# school.roster 
# => {9 => ["Zach Morris", "AC Slater"], 10 => ["Kelly Kapowski"], 11 => ["Screech"]}

#school.grade(9)
# => ["Zach Morris", "AC Slater"]

# hash
#  => {"new_key"=>["new_value_for_value_array"]} 
class School


    attr_accessor :roster
    
    attr_reader :name

    def initialize(name)
        @name = name
        @roster = {}
    end

    def add_student(name, grade)
        if roster[grade]
            @roster[grade] << name
        else
            @roster[grade] = []
            @roster[grade] << name
        end
    end
    def grade(grade)
        @roster[grade]
    end

    def sort
        newRoster = {}
        sorted_roster_array = @roster.sort_by{|grade, students| grade}
        sorted_roster_array.each do |item|
            newRoster[item[0]] = item[1].sort
        end
        newRoster
    end
end