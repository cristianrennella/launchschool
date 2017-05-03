require 'pry'

class Board
  WINNING_LINES = [[1, 2, 3], [4, 5, 6], [7, 8, 9]] + # rows
                  [[1, 4, 7], [2, 5, 8], [3, 6, 9]] + # cols
                  [[1, 5, 9], [3, 5, 7]]              # diagonals

                  def initialize
                    @squares = {}
                    reset
                  end

                  def []=(num, marker)
                    @squares[num].marker = marker
                  end

                  def unmarked_keys
                    @squares.keys.select { |key| @squares[key].unmarked? }
                  end

                  def full?
                    unmarked_keys.empty?
                  end

                  def someone_won?
                    !!winning_marker
                  end

                  def winning_marker
                    WINNING_LINES.each do |line|
                      squares = @squares.values_at(*line)
                      if three_identical_markers?(squares)
                        return squares.first.marker
                      end
                    end
                    nil
                  end

                  def reset
                    (1..9).each { |key| @squares[key] = Square.new }
                  end

  # rubocop:disable Metrics/AbcSize
  def draw
    puts "     |     |"
    puts "  #{@squares[1]}  |  #{@squares[2]}  |  #{@squares[3]}"
    puts "     |     |"
    puts "-----+-----+-----"
    puts "     |     |"
    puts "  #{@squares[4]}  |  #{@squares[5]}  |  #{@squares[6]}"
    puts "     |     |"
    puts "-----+-----+-----"
    puts "     |     |"
    puts "  #{@squares[7]}  |  #{@squares[8]}  |  #{@squares[9]}"
    puts "     |     |"
  end
  # rubocop:enable Metrics/AbcSize

  def smart_move(player_marker, opponent_player_marker)
    WINNING_LINES.each do |line|
      squares = @squares.values_at(*line)
      if two_identical_markers_and_one_vacant?(squares, player_marker)
        return squares.select(&:unmarked?)[0].marker = player_marker
      end
    end

    WINNING_LINES.each do |line|
      squares = @squares.values_at(*line)
      if two_identical_markers_and_one_vacant?(squares, opponent_player_marker)
        return squares.select(&:unmarked?)[0].marker = player_marker
      end
    end

    if unmarked_keys.include?(5)
      @squares[5].marker = player_marker
    else
      @squares[unmarked_keys.sample].marker = player_marker
    end
  end

  private

  def two_identical_markers_and_one_vacant?(squares, player_marker)
    markers = squares.select(&:marked?).collect(&:marker)
    markers.size == 2 && markers.first == player_marker && markers.last == player_marker
  end

  def three_identical_markers?(squares)
    markers = squares.select(&:marked?).collect(&:marker)
    return false if markers.size != 3
    markers.min == markers.max
  end
end

class Square
  INITIAL_MARKER = " "

  attr_accessor :marker

  def initialize(marker=INITIAL_MARKER)
    @marker = marker
  end

  def to_s
    @marker
  end

  def unmarked?
    marker == INITIAL_MARKER
  end

  def marked?
    marker != INITIAL_MARKER
  end
end

class Player
  attr_accessor :marker, :wins, :name

  def initialize(marker)
    @marker = marker
    @wins = 0
  end

  def win
    @wins += 1
  end

  def reset
    @wins = 0
  end
end

class TTTGame
  COMPUTER_MARKER = "O"
  CHOOSE = "choose"
  FIRST_TO_MOVE = CHOOSE
  FIRST_TO_WIN = 5

  attr_reader :board, :human, :computer

  def initialize
    @board = Board.new
    @human = Player.new("X")
    @computer = Player.new(COMPUTER_MARKER)
    @current_marker = FIRST_TO_MOVE
  end

  def play
    clear
    display_welcome_message
    set_names
    define_marker

    loop do 

      loop do
        display_board

        loop do
          current_player_moves
          break if board.someone_won? || board.full?
          clear_screen_and_display_board
        end

        display_result
        break unless next_game?
        reset_match
        display_play_again_message
      end

      break unless play_again?
      reset_match_and_players
      display_play_again_message
    end

    display_goodbye_message
  end

  private

  def define_marker
    puts "#{@human.name} choose your marker."
    @human.marker = gets.chomp.upcase
  end

  def set_names
    puts "Please enter your name"
    @human.name = gets.chomp
    puts "Enter computer name"
    @computer.name = gets.chomp
  end

  def next_game?
    human.win if board.winning_marker == human.marker
    computer.win if board.winning_marker == computer.marker
    puts "Global Score. #{@human.name}: #{human.wins} #{@computer.name}: #{computer.wins}"
    
    if human.wins == FIRST_TO_WIN
      puts "Congratulations!. You win the Game!."
    elsif computer.wins == FIRST_TO_WIN
      puts "Sorry, computer wins!."
    else
      puts "Press enter to start next match."
      gets.chomp
    end
  end

  def display_welcome_message
    puts "Welcome to Tic Tac Toe!"
    puts ""
  end

  def display_goodbye_message
    puts "Thanks for playing Tic Tac Toe! Goodbye!"
  end

  def clear_screen_and_display_board
    clear
    display_board
  end

  def display_board
    puts "You're a #{human.marker}. Computer is a #{computer.marker}."
    puts ""
    board.draw
    puts ""
  end

  def joinor(array, join_mark, close_mark)
    array.join(join_mark + ' ').insert(-2, close_mark + ' ')
  end

  def human_moves
    puts "Choose a square (#{joinor(board.unmarked_keys, ',', 'or')}): "
    square = nil
    loop do
      square = gets.chomp.to_i
      break if board.unmarked_keys.include?(square)
      puts "Sorry, that's not a valid choice."
    end

    board[square] = human.marker
  end

  def computer_moves
    board.smart_move(COMPUTER_MARKER, @human.marker)
  end

  def define_current_player
    answer = nil
    loop do 
      puts "Do you want to play first? y/n"
      answer = gets.chomp.downcase
      break if ['y', 'n'].include?(answer)
      puts "Enter a valid answer."
    end
    answer == 'y' ? @current_marker = @human.marker : @current_marker = COMPUTER_MARKER
  end

  def current_player_moves
    if @current_marker == CHOOSE
      define_current_player
    end

    if @current_marker == @human.marker
      human_moves
      @current_marker = COMPUTER_MARKER
    else
      computer_moves
      @current_marker = @human.marker
    end
  end

  def display_result
    clear_screen_and_display_board

    case board.winning_marker
    when human.marker
      puts "You won!"
    when computer.marker
      puts "Computer won!"
    else
      puts "It's a tie!"
    end
  end

  def play_again?
    answer = nil
    loop do
      puts "Would you like to play again? (y/n)"
      answer = gets.chomp.downcase
      break if %w(y n).include? answer
      puts "Sorry, must be y or n"
    end

    answer == 'y'
  end

  def clear
    system "clear"
  end

  def reset_match
    board.reset
    @current_marker = FIRST_TO_MOVE
    clear
  end

  def reset_match_and_players
    human.reset
    computer.reset
    board.reset
    @current_marker = FIRST_TO_MOVE
    clear
  end

  def display_play_again_message
    puts "Let's play again!"
    puts ""
  end
end

game = TTTGame.new
game.play
