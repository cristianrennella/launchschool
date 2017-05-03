require 'pry'
class Diamond
  def self.make_diamond(letter)
    letters = generate_letters(letter)
    first_half_square = make_half_square(letters)
    full_square = make_the_other_half_square(first_half_square)
  end

  def self.generate_letters(letter)
    ('A'..letter).to_a
  end

  def self.make_half_square(letters)
    letters.map!.with_index do |inner_letter, idx|
      horizontal_line =  ' ' * (letters.size - 1 - idx)
      horizontal_line += inner_letter 
      horizontal_line += ' ' * ((idx*2)-1) unless idx == 0
      horizontal_line += inner_letter unless idx == 0
      horizontal_line += ' ' * (letters.size - 1 - idx)
      horizontal_line += "\n"
    end
    letters
  end

  def self.make_the_other_half_square(letters)
    result = []
    letters.each { |value| result << value }
    letters.reverse.each_with_index { |value, idx| result << value unless idx == 0 }
    result.join
  end
end