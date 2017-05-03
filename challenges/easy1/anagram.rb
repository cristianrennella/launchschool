class Anagram
  attr_reader :word

  def initialize(str = "")
    @word = str
  end

  def match(candidates)
    candidates.select do |candidate|
      anagrams?(word, candidate)
      
    end
  end

  private

  def anagrams?(word1, word2)
    return false if word1.downcase == word2.downcase
    stock(word1) == stock(word2)
  end

  def stock(word)
    word_hash = Hash.new(0)
    word.downcase.chars.each do |char|
      word_hash[char] += 1
    end
    word_hash
  end
end

anagram = Anagram.new('diaper')
p anagram.match(%w(hello world diaper Diaper zombies dpriea pants))

# word2.downcase.chars.all? do |char| 
#       word1.downcase.include?(char)
#     end