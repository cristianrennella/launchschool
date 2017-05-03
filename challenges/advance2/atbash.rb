# Encode Class by Cristian Rennella
class Atbash
  attr_reader :plain_text, :first_13_letters, :last_13_letters

  def self.encode(text)
    Atbash.new(text).encode
  end

  def initialize(text)
    @plain_text = normalize(text)
    @first_13_letters = ('a'..'m').to_a
    @last_13_letters = ('n'..'z').to_a.reverse
  end

  def normalize(text)
    text.downcase
  end

  def encode
    plain_text.chars.each_with_object([]) do |char, result|
      if first_13_letters.include?(char)
        result << last_13_letters[first_13_letters.index(char)]
      elsif last_13_letters.include?(char)
        result << first_13_letters[last_13_letters.index(char)]
      elsif char =~ /[0-9]/
        result << char
      end
    end.join.scan(/.{1,5}/).join(' ')
  end
end
