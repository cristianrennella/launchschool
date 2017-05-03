# Iterate a hash until the next unmarked value = true
# For each prime value, sum the same value to find all the multiples and mark then = false
# Return the unmarked values = true

require 'pry'
require 'prime'

class Sieve
  def initialize(limit = 2)
    raise(ArgumentError, "Have to be a number bigger than 2") if limit < 2
    
    @primes = (2..limit).each_with_object({}) { |number, hash| hash[number] = true }
  end

  def primes
    mark_primes
    find_primes
  end

  private

  def find_first_unmarked(current_prime)
    @primes.keys.select { |key| key > current_prime && @primes[key] == true }.first
  end

  def mark_primes
    current_prime = @primes.keys.first

    loop do
      prime_multiple = current_prime
      loop do 
        prime_multiple += current_prime
        break if prime_multiple > @primes.length + 1
        @primes[prime_multiple] = false
      end
      current_prime = find_first_unmarked(current_prime)
      break if current_prime.nil?
    end
  end

  def find_primes
    @primes.keys.select { |key| @primes[key] == true }
  end
end

# p Sieve.new(10).primes