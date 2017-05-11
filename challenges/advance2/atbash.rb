# Encode Class by Cristian Rennella
class Atbash
  attr_reader :plain_text

  FIRST_13_LETTERS = ('a'..'m').to_a
  LAST_13_LETTERS = ('n'..'z').to_a.reverse

  def self.encode(text)
    Atbash.new(text).encode
  end

  def initialize(text)
    @plain_text = normalize(text)
  end

  def normalize(text)
    text.downcase
  end

  def encode
    plain_text.chars.each_with_object([]) do |char, result|
      if char =~ /[a-z]/
        result << replace_letter(char)
      elsif char =~ /[0-9]/
        result << char
      end
    end.join.scan(/.{1,5}/).join(' ')
  end

  private

  def replace_letter(char)
    if FIRST_13_LETTERS.include?(char)
      LAST_13_LETTERS[FIRST_13_LETTERS.index(char)]
    else
      FIRST_13_LETTERS[LAST_13_LETTERS.index(char)]
    end
  end
end