# code here!
require 'pry'
class School
  
  attr_accessor :roster
  
  def initialize(school)
    @roster = {}
    
  end
  
  def add_student(name, grade)
    if @roster[grade] == nil
      @roster[grade] = []
    end
    @roster[grade] << name
  end
  
  def grade(num)
    @roster[num]
  end
  
  def sort
    new_roster = {}
    @roster.collect do |key, value|
      new_roster[key] = value.sort
    end
    new_roster
  end
  
  
end