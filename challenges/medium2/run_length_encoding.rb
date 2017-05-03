# module RunLengthEncoding
#   def self.encode(input)
#     result = []
#     input.chars.each_with_index do |char, idx|
#       !result.empty? && result.last[1] == char ? result.last[0] += 1 : result << [1, char]
#     end

#     result.map! do |value| 
#       value[0] = '' if value[0] == 1 
#       value
#     end

#     result.flatten.join
#   end

#   def self.decode(input)
#     result = []
#     number = ''
#     input.chars.each_with_index do |char, idx|
#       number += char and next if (1..9).include?(char.to_i)
#       (1..9).include?(input[idx - 1].to_i) ? result << char * number.to_i : result << char
#       number = ''
#     end
#     result.join
#   end
# end
require 'pry'

module RunLengthEncoding
  def self.encode(input)
    input.gsub(/(.)\1{1,}/) do |match| 
      binding.pry
      match.size.to_s + match[0] 
    end
  end

  def self.decode(input)
    input.gsub(/\d+\D/) { |match| match[-1] * match.to_i }
  end
end

p RunLengthEncoding.encode('AABBBCCCC')