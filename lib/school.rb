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
  
  
  def sort
    hash_of_sorts ={}
    roster.each do |key, value|
      hash_of_sorts[key]= value.sort
      
    end
    return hash_of_sorts
  end
  
  
  attr_reader :roster, :school_name
end



# {9=>["Homer Simpson", "Bart Simpson"], 10=>["Avi Flombaum", "Jeff Baird"], 7=>["Blake Johnson", "Jack Bauer"]}