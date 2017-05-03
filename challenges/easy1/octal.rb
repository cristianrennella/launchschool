class Octal
  def initialize(number)
    @octal_number = number
  end

  def to_decimal
    return 0 unless octal_valid? 
    octal_number_to_array_of_numbers
    calculate_decimal_value
  end

  private
  def octal_valid?
    !(@octal_number =~ /[A-Fa-f8-9]/)
  end

  def octal_number_to_array_of_numbers
    @octal_number = @octal_number.chars.map(&:to_i)
  end

  def calculate_decimal_value
    @octal_number.reverse.each_with_index.inject(0) do |sum, (value, idx)|
      sum += value * (8**idx)
    end
  end
end

p Octal.new('6789').to_decimal