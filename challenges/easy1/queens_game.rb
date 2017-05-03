class Piece
  FREE_SPACE = "-"
  QUEEN = "Q"

  def initialize
    @type = FREE_SPACE
  end

  def queen?
    @type == QUEEN
  end

  def set_queen
    @type = QUEEN
  end

  def to_s
    @type.to_s
  end
end

class Board
  BOARD_LIMIT = 1
  BOARD_SIZE = 8

  def initialize
    reset
  end

  def display
    puts ""
    puts "   1   2   3   4   5   6   7   8 "
    1.upto(BOARD_SIZE) do |number|
      puts "#{number} | #{squares[[number, 1]]} | #{squares[[number, 2]]} | #{squares[[number, 3]]} | #{squares[[number, 4]]} | #{squares[[number, 5]]} | #{squares[[number, 6]]} | #{squares[[number, 7]]} | #{squares[[number, 8]]} |"
    end
    puts ""
  end

  def horizontal_enemy?(key)
    row_value = key[0]
    1.upto(BOARD_SIZE) do |column_value|
      return true if squares[[row_value, column_value]].queen?
    end
    false
  end

  def vertical_enemy?(key)
    column_value = key[1]
    1.upto(BOARD_SIZE) do |row_value|
      return true if squares[[row_value, column_value]].queen?
    end
    false
  end

  def diagonal_enemy?(key)
    row_value = key[0]
    column_value = key[1]
    1.upto(BOARD_SIZE) do |number| 
      break if row_value + number > BOARD_SIZE || column_value + number > BOARD_SIZE || column_value - number < BOARD_LIMIT
      return true if squares[[row_value + number, column_value + number]].queen?
      return true if squares[[row_value + number, column_value - number]].queen? 
    end
    1.upto(BOARD_SIZE) do |number|
      break if row_value - number < BOARD_LIMIT || column_value - number < BOARD_LIMIT || column_value + number > BOARD_SIZE
      return true if squares[[row_value - number, column_value - number]].queen?
      return true if squares[[row_value - number, column_value + number]].queen?
    end
    false
  end

  def enemy_nearby?(key)
    horizontal_enemy?(key) || vertical_enemy?(key) || diagonal_enemy?(key)
  end

  def reset
    @squares = {}
    1.upto(BOARD_SIZE) do |number|
      (1..BOARD_SIZE).each { |inner_number| squares[[number, inner_number]] = Piece.new }
    end
  end

  def find_all_posible_board_position_for_queens
    posible_solutions = 0
    
    squares.each do |key, value|
      squares[key].set_queen
      number_of_queens_in_the_board = 1
      squares.each do |key, value|
        unless enemy_nearby?(key)
          squares[key].set_queen
          number_of_queens_in_the_board += 1
        end
      end
      display
      reset
      posible_solutions += 1 if number_of_queens_in_the_board == 8
    end
    posible_solutions
  end

  private
  attr_reader :squares
end

class QueensGameEngine
  def initialize
    @board = Board.new
  end

  def display_posible_solutions(posible_solutions)
    puts "Total number of posible solutions for this game: #{posible_solutions}"
  end

  def play
    board.display
    posible_solutions = board.find_all_posible_board_position_for_queens
    display_posible_solutions(posible_solutions)
  end

  private
  attr_reader :board
end

game = QueensGameEngine.new
game.play