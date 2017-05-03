# The input is first normalized: The spaces and punctuation are removed
# from the English text and the message is down-cased.

# The size of the square (number of columns) should be decided by the length of the message. 
# If the message is a length that creates a perfect square (e.g. 4, 9, 16, 25, 36, etc), 
# use that number of columns. If the message does not fit neatly into a square, 
# choose the number of columns that corresponds to the smallest square that is larger 
# than the number of characters in the message.

# Then, the normalized characters are broken into rows. These rows 
# can be regarded as forming a rectangle when printed with intervening newlines.

# The coded message is obtained by reading down the columns going left to right.

require 'pry'

class Crypto
  attr_reader :message, :normalized_message, :square_size

  def initialize(message)
    @message = message
  end

  def normalize_plaintext
    message.scan(/[0-9a-zA-Z]/).join.downcase
  end

  def size
    @square_size = 1
    @square_size += 1 until square_size ** 2 >= normalize_plaintext.size
    square_size
  end

  def plaintext_segments
    normalize_plaintext.scan(/.{1,#{size}}/)
  end

  def ciphertext
    result = []
    0.upto(size) do |idx|
      plaintext_segments.each { |segment| result << segment[idx] }
    end
    result.join
  end

  def normalize_ciphertext
    ciphertext.scan(/.{1,#{plaintext_segments.size}}/).join(' ')
  end
end