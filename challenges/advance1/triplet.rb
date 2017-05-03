require 'pry'

class Triplet
  attr_reader :values
  def initialize(*values)
    @values = values
  end

  def sum
    values.reduce(&:+)
  end

  def product
    values.reduce(&:*)
  end

  def pythagorean?
    values[0] ** 2 + values[1] ** 2 == values[2] ** 2
  end

  def self.where(parameters)
    min = parameters[:min_factor] || 1
    max = parameters[:max_factor] || 1

    result = combinations(min, max).map do |values| 
      Triplet.new(values[0], values[1], values[2])
    end

    result.select do |triplet|
      if parameters[:sum]
        triplet.pythagorean? && triplet.sum == parameters[:sum]
      else
        triplet.pythagorean? 
      end
    end
  end

  def self.combinations(min, max)
    (min..max).to_a.combination(3).to_a
  end
end