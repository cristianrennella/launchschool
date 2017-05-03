class Polindrome
  VALID_CHARACTERS = %w(a b c d e f g h i j k l m n o p q r s t u v w x y z)

  def initialize(word)
    @word = word
  end

  def valid?
    reverse_word = []

    @word.chars.each do |letter| 
      next unless VALID_CHARACTERS.include?(letter)
      reverse_word.unshift(letter) 
    end

    @word == reverse_word.join
  end
end

p Polindrome.new('rotor').valid?
p Polindrome.new('rot4or').valid?
p Polindrome.new('rotar').valid?

# class Polindrome
#   VALID_CHARACTERS = %w(a b c d e f g h i j k l m n o p q r s t u v w x y z)

#   def initialize(word)
#     @word = word.downcase
#   end

#   def valid?
#     return true unless @word.chars.all? { |letter| VALID_CHARACTERS.include?(letter)}

#     start_index = 0
#     end_index = -1

#     (0...@word.size).each do |value| 
#       return false unless @word[start_index + value] == @word[end_index - value]
#     end

#     true
#   end
# end

# p Polindrome.new('reddar').valid?