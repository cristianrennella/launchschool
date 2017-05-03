class School
  attr_reader :grades
   
  def initialize
    @grades = Hash.new([])
  end

  def add(name, grade)
    raise InvalidName unless name.is_a?(String)
    raise InvalidNumber unless grade.is_a?(Fixnum)

    grades[grade] += [name]
  end

  def grade(_grade)
    grades[_grade]
  end

  def to_h
    grades.sort.to_h.each { |_, value| value.sort! }
  end
end

# school = School.new
# school.add('Chelsea', 3)
# school.add('Logan', 7)
# p school.to_h