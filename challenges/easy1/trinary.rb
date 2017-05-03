class Trinary
  attr_reader :trinary

  def initialize(trinary)
    valid?(trinary) ? @trinary = trinary : @trinary = 0
  end

  def valid?(trinary)
    # raise ArgumentError, "Not valid Trinary Value" unless trinary =~ /\A[0-2]+\z/
    trinary =~ /\A[0-2]+\z/
  end

  def to_decimal
    return 0 if trinary == 0

    trinary
      .reverse
      .chars
      .map(&:to_i)
      .map
      .with_index { |value, idx| value * (3 ** idx) }
      .reduce(:+)
  end
end

# p Trinary.new('102012').to_decimal

# def to_decimal
#   trinary
#     .reverse
#     .chars
#     .map(&:to_i)
#     .each_with_index
#     .reduce(0) { |sum, (value, idx)| sum += value * (3 ** idx) }
# end