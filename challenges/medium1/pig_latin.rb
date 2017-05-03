# class PigLatin
#   def self.translate(words)
#     words = words.split(' ').map do |word|
#       if word[0..2].match(/[b-df-hj-np-tv-z]qu/)
#         next word[3...word.size] + word[0..2] + 'ay'
#       end

#       if ['thr', 'sch'].include?(word[0..2])
#         next word[3...word.size] + word[0..2] + 'ay'
#       end

#       if ['yt', 'xr'].include?(word[0..1])
#         next word + 'ay'
#       end

#       if ['ch', 'qu', 'th'].include?(word[0..1])
#         next word[2...word.size] + word[0..1] + 'ay'
#       end

#       if 'aeiou'.include?(word[0])
#         next word + 'ay'
#       else
#         next word[1...word.size] + word[0] + 'ay'
#       end
#     end
#     words.join(' ')
#   end
# end

require 'pry'

class ConsonantPlusQu
  def self.translate(word)
    if word[0..2].match(/[b-df-hj-np-tv-z]qu/)
      return word[3...word.size] + word[0..2] + 'ay'
    end
    word
  end
end

class ThreeLetters
  def self.translate(word)
    if ['thr', 'sch'].include?(word[0..2])
     return word[3...word.size] + word[0..2] + 'ay'
   end
   word
 end
end

class TwoLettersExceptions
  def self.translate(word)
    if ['yt', 'xr'].include?(word[0..1])
      return word + 'ay'
    end
    word
  end
end

class TwoLetters
  def self.translate(word)
    if ['ch', 'qu', 'th'].include?(word[0..1])
     return word[2...word.size] + word[0..1] + 'ay'
   end
   word
 end
end

class OneLetter
  def self.translate(word)
    if 'aeiou'.include?(word[0])
      return word + 'ay'
    else
      return word[1...word.size] + word[0] + 'ay'
    end
    word
  end
end

class PigLatin
  RULES = [ConsonantPlusQu, ThreeLetters, TwoLettersExceptions, TwoLetters, OneLetter]

  def self.translate(words)
    words = words.split(' ').map do |word|
      RULES.each do |rule| 
        if rule.translate(word) != word 
          word = rule.translate(word)
          break
        end
      end
      word
    end
    words.join(' ')
  end
end

# p PigLatin.translate('apple')