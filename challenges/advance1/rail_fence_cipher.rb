class RailFenceCipher
  def self.encode(text, number_of_rails)
    return text if number_of_rails == 1 || number_of_rails > text.size

    result = Array.new(text.size) { Array.new(number_of_rails) { |i| i = '.' } }

    zigzag_index = generate_array_with_indexes_for_zigzag_iteration(text, number_of_rails)

    text.chars.each_with_index do |letter, idx|
      result[idx][zigzag_index.first] = letter
      zigzag_index.rotate!
    end

    result.transpose.join.scan(/[A-Z]/).join
  end

  def self.decode(text, number_of_rails)
    result = Array.new(text.size) { Array.new(number_of_rails) { |i| i = '.' } }

    zigzag_index = generate_array_with_indexes_for_zigzag_iteration(text, number_of_rails)

    text.chars.each_with_index do |_, idx|
      result[idx][zigzag_index.first] = '?'
      zigzag_index.rotate!
    end

    new_result = replace_question_marks_with_letters(text, result)

    new_result.transpose.flatten.join.scan(/[A-Z]/).join
  end

  private

  def self.replace_question_marks_with_letters(text, result)
    replace_index = 0
    result.transpose.map do |row|
      row.map do |value|
        if value == '?'
          replace_index += 1
          text[replace_index - 1]
        else
         value
       end
     end
   end
 end

 def self.generate_array_with_indexes_for_zigzag_iteration(text, number_of_rails)

  current_index = []

  0.upto(number_of_rails-1) do |idx|
    current_index << idx
  end

  (current_index[-1]-1).downto(1) do |idx|
    current_index << idx
  end

  current_index
end
end