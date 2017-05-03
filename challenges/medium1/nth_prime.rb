class Prime
  def self.nth(nth_prime)
    raise ArgumentError if nth_prime <= 0

    counter = 0
    number = 2

    loop do 
      counter += 1 if prime?(number)
      return number if counter == nth_prime
      number += 1
    end
  end

  private

  def prime?(number)
    return true if number == 1

    2.upto(Math.sqrt(number)) do |inner_number|
      return false if number % inner_number == 0
    end

    true
  end
end