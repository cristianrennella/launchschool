class Series
  def initialize(string)
    @number = string.split('').map!(&:to_i)
  end

  def slices(consecutive_digits = '')
    raise ArgumentError.new("Consecutive digits bigger than string.") if consecutive_digits > number.size
    result = []
    # number.each_cons(consecutive_digits) { |consecutive| result << consecutive }
    number.each_with_index do |value, idx|
      break if number.size < (idx+consecutive_digits)
      result << number[idx...idx+consecutive_digits]
    end
    result
  end

  private
  attr_reader :number
end

# result = []
# serie = Series.new('01234')
# result = serie.slices(9)

# p result