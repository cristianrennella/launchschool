# class Phrase
#   def initialize(phrase)
#     @phrase = phrase.downcase
#   end

#   def word_count
#     result = Hash.new(0)
#     @phrase.split(/[^('|\w)]/).each do |word|
#       word.gsub!(/^'|'$/, '')
#       result[word] += 1 unless word.empty?
#     end
#     result
#   end
# end

# p Phrase.new('one of each').word_count