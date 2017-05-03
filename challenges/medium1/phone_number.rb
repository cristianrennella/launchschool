require 'pry'

class PhoneNumber
  attr_reader :phone_number

  def initialize(phone_number)
    @phone_number = phone_number
  end

  def number
    clean!
    valid? ? phone_number : '0000000000'
  end

  def area_code
    clean!
    phone_number[0, 3]
  end

  def to_s
    clean!
    "(#{phone_number[0..2]}) #{phone_number[3..5]}-#{phone_number[6..10]}"
  end

  private

  def valid?
    phone_number.match(/\A[0-9]{10}\z/) ? true : false
  end

  def clean!
    phone_number.gsub!(/[)(-\.\s]/) { |match| "" }
    phone_number.slice!(0) if phone_number.length == 11 && phone_number[0] == '1'
  end
end