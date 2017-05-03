# - counting from rightmost digit
#   - double the value of every second digit
#   - any digits that thus become 10 or more, subtract 9 from the result

# - If the checksum ends in 0 then the number is valid

# Can check if it is valid per the Luhn formula. "2323 2005 7766 3554" as valid.
# Can return the checksum, or the remainder from using the Luhn method.
# Can add a check digit to make the number valid per the Luhn formula 
#   and return the original number plus that digit. 
#   This should give "2323 2005 7766 3554" in response to "2323 2005 7766 355".

class Luhn
  def initialize(number = 0)
    @digits = number.to_s.chars.map(&:to_i)
  end

  def addends
    luhn_number = digits.reverse.map.with_index do |inner_number, idx|
      if idx.odd?
        inner_number * 2 >= 10 ? inner_number * 2 - 9 : inner_number * 2
      else
        inner_number
      end
    end

    luhn_number.reverse!
  end

  def checksum
    addends.reduce(&:+)
  end

  def valid?
    checksum % 10 == 0
  end

  def self.create(number)
    0.upto(9) do |value|
      new_number = (number.to_s + value.to_s).to_i
      return new_number if new(new_number.to_i).valid?
    end
  end

  private
  attr_reader :digits
end

# p Luhn.new(8_739_567).addends