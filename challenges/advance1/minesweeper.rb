# - Map the input with index 
#   - Map again the internal string with index

# - Transform to the input where empty spaces turn tu numbers
#   - Count the * of 
#     - The line before where the idx - 1, idx and idx + 1 are == *
#     - And in the same number the previous and the next.
#     - The line after where the idx - 1, idx and idx + 1 are == *

# +-----+
# | * * |
# |  *  |
# |  *  |
# |     |
# +-----+

# +-----+
# |1*3*1|
# |13*31|
# | 2*2 |
# | 111 |
# +-----+

# inp = ['+------+', '| *  * |', '|  *   |', '|    * |', '|   * *|',
#  '| *  * |', '|      |', '+------+']
# out = ['+------+', '|1*22*1|', '|12*322|', '| 123*2|', '|112*4*|',
#    '|1*22*2|', '|111111|', '+------+']

require 'pry'

class ValueError < StandardError; end

class Board
  attr_reader :input

  MINE = '*'

  def initialize(input)
    @input = input
    validate_input
  end

  def self.transform(input)
    board = Board.new(input)
    board.transform!
    board.display
  end

  def transform!
    input.map!.with_index do |line, y|
      line.chars.map!.with_index do |char, x|
        if char.match(/\A\s\z/)
          count = count_the_mines(y, x)
        else
          char
        end
      end.join
    end
  end

  def display
    input.each do |line|
      line.chars.each do |char|
        print char
      end
      puts ""
    end
  end

  private

  def count_the_mines(y, x)
    count = [
      input[y][x - 1],
      input[y][x + 1],
      input[y - 1][x],
      input[y - 1][x - 1],
      input[y - 1][x + 1],
      input[y + 1][x],
      input[y + 1][x - 1],
      input[y + 1][x + 1]
      ].count(MINE)
      count == 0 ? ' ' : count
    end

    def validate_input
      raise ValueError unless validate_size
      raise ValueError unless validate_start_and_finish
      raise ValueError unless validate_middle_lines
    end

    def validate_middle_lines
      1.upto(input.size - 2) do |idx|
        return false unless input[idx].match(/\A\|[ *]+\|\z/)
      end
    end

    def validate_start_and_finish
      input[0].match(/\A\+-+\+\z/) && input[-1].match(/\A\+-+\+\z/)
    end

    def validate_size
      input.all? { |line| line.size == input.first.size }
    end
  end

inp = ['+---+', '|***|', '|* *|', '|***|', '+---+']

Board.transform(inp)