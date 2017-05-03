# input: multiples (one or more) and value upto
# iterate upto the the number checking if each number if multiple of at least one
# if true, save and the return the sum

class SumOfMultiples
  attr_reader :factors

  def initialize(*factors)
    @factors = factors
  end

  def to(value)
    result = []
    (0...value).each do |value|
      result << value if factors.any? { |factor| value % factor == 0 }
    end
    result.reduce(&:+)
  end

  def self.to(value)
    new(3, 5).to(value)
  end

end

p SumOfMultiples.to(20)