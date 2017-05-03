require 'pry'

class Cipher
  attr_reader :key

  LETTERS = ('a'..'z').to_a
  ENCODE = :+
  DECODE = :-

  def initialize(key = generate_random_key)
    raise ArgumentError unless valid_input?(key)
    @key = key
  end

  def encode(message)
    transform(ENCODE, message)
  end

  def decode(message)
    transform(DECODE, message)
  end

  private

  def transform(op, message)
    message.chars.map.with_index do |char, idx|
      LETTERS[(LETTERS.index(char).send(op, LETTERS.index(key[idx % key.size]))) % 26]
    end.join
  end

  def generate_random_key
    (1..100).each_with_object('') do |_, key| 
     key << LETTERS[rand(26)]
   end
 end

 def valid_input?(input)
  input.empty? || input.match(/[A-Z0-9]/) ? false : true
end
end