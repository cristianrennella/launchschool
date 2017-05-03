# Write a program that can detect palindrome products in a given range.

# A palindromic number reads the same both ways. 
# The largest palindrome made from the product of two 2-digit numbers 
# (range 10 ~ 99) is 9009 = 91 x 99.

# - All options on the range
#   - Make the product (+ unique?)
#   - Select the palindromes
#   - Sort by bigger palindromes
#   - Pick last one

require 'pry'

class Palindrome
  attr_reader :palindrome

  def initialize(pair)
    @palindrome = pair
  end

  def value
    palindrome[0] * palindrome[1]
  end

  def factors
    palindrome
  end
end

class Palindromes
  attr_reader :range, :palindromes

  def initialize(range_offsets)
    range_offsets[:min_factor] ||= 1
    @range = range_offsets[:min_factor]..range_offsets[:max_factor]
    @palindromes = []
  end

  def generate
    all_options = clean_reverse([*range].product([*range]))
    all_options.each { |pair| palindromes << Palindrome.new(pair) if palindrome?(pair) }
  end

  def largest
    max_palindrome = palindromes.max { |a, b| a.value <=> b.value }

    @palindromes = palindromes
                    .sort_by { |palindrome| palindrome.value }
                    .reverse
                    .take_while { |palindrome| palindrome.value >= max_palindrome.value }

    self
  end

  def smallest
    min_palindrome = palindromes.min { |a, b| a.value <=> b.value }

    @palindromes = palindromes
                    .sort_by { |palindrome| palindrome.value }
                    .take_while { |palindrome| palindrome.value <= min_palindrome.value }

    self
  end

  def value
    palindromes.last.factors[0] * palindromes.last.factors[1]
  end

  def factors
    palindromes.map { |palindrome| palindrome.palindrome }
  end

  private

  def palindrome?(pair)
    product = pair.first * pair.last
    product.to_s == product.to_s.reverse
  end

  def clean_reverse(arr)
    temp = []
    arr.each do |pair|
      temp << pair unless temp.include?(pair.reverse)
    end
    temp
  end
end