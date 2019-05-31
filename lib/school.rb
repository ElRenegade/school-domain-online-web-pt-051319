class School
  attr_reader :name, :roster
  def initialize(name)
    @name = name
    @roster = {}
  end
  def add_student(student, grade)
    roster[grade] ||= []
    roster[grade] << student
  end
  def grade(grade)
    @roster.detect{|num, name|
    if num == grade
      return name
    end}
  end

  def sort
    new_roster = {}
    roster.each{|num, name|
    new_roster[num] = name}
    new_roster
  end

end
