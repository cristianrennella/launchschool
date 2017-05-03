# - Queen can attack pieces which are on the same
#   - row with same row number
#   - column with same row number
#   - diagonal where the diferent between one piece x and other piece x 
#     are the same as the diferent of y

# - A chessboard can be represented by an 8 by 8 array.

require 'pry'

class Queens
  class Position < Struct.new(:x, :y); end

  attr_reader :coordinates

  WHITE_QUEEN = 'W'
  BLACK_QUEEN = 'B'

  def initialize(white: [0, 3], black: [7, 3])
    raise ArgumentError if white == black

    @white = Position.new(white[0], white[1])
    @black = Position.new(black[0], black[1])
  end

  def attack?
    same_row || same_column || same_diagonal
  end

  def to_s
    board = Array.new(8) { Array.new(8) { |i| i = "_" }  }

    board[@white.x][@white.y] = "#{WHITE_QUEEN}"
    board[@black.x][@black.y] = "#{BLACK_QUEEN}"
    board.map{ |row| row.join(' ') }.join("\n")
  end

  def white
    [@white.x, @white.y]
  end

  def black
    [@black.x, @black.y]
  end

  private

  def same_row
    @white.x == @black.x
  end

  def same_column
    @white.y == @black.y
  end

  def same_diagonal
    (@white.x - @black.x).abs == (@white.y - @black.y).abs
  end
end