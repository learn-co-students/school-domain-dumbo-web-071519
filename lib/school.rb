# code here!
require 'pry'
class School
  
  
  def initialize(school_name)
  @school_name = school_name
  @roster = {}
  
  end 
  
  def add_student(student,grade)
    if !roster.keys.include?(grade)
      roster[grade] = [student]
    else
      roster[grade].push(student)
    end
  end
  
  def grade(num)
    roster[num].map {|grade| grade}
  end
  
  binding.pry
  def sort
    
    roster[grade].sort_by {|key, value| key}
  end
  
  
  attr_reader :roster, :school_name
end