# require 'pry'

class Numeric
  def percent_of(n)
    self.to_f / n.to_f * 100.0
  end
end

class Move
  attr_accessor :value
  VALUES = ['rock', 'paper', 'scissor']

  def initialize(value)
    @value = value
  end

  def scissor?
    @value == 'scissor'
  end

  def rock?
    @value == 'rock'
  end

  def paper?
    @value == 'paper'
  end

  def >(other_move)
    (rock? && other_move.scissor?) ||
      (scissor? && other_move.paper?) ||
      (paper? && other_move.rock?)
  end

  def <(other_move)
    (rock? && other_move.paper?) ||
      (scissor? && other_move.rock?) ||
      (paper? && other_move.scissor?)
  end

  def to_s
    @value
  end
end

class Player
  attr_accessor :move, :name, :score
  def initialize
    @score = 0
  end
end

class Human < Player
  def initialize
    super
    set_name
  end

  def set_name
    n = nil
    loop do
      puts "What's your name?"
      n = gets.chomp
      break unless n.empty?
      puts "You must enter your name."
    end
    self.name = n.capitalize
  end

  def choose
    choice = nil
    loop do
      puts 'Please choose rock, scissor or paper'
      choice = gets.chomp
      break if Move::VALUES.include?(choice)
      puts 'Wrong input.'
    end
    self.move = Move.new(choice)
  end
end

class Computer < Player
  attr_accessor :history_of_lost_moves

  def initialize
    super
    @history_of_lost_moves = []
  end

  def choose
    rock_percent = @history_of_lost_moves.count('rock').percent_of(history_of_lost_moves.size)
    paper_percent = @history_of_lost_moves.count('paper').percent_of(history_of_lost_moves.size)
    scissor_percent = @history_of_lost_moves.count('scissor').percent_of(history_of_lost_moves.size)

    values_array = []
    if rock_percent > 60.0
      45.times { values_array << 'paper' }
      45.times { values_array << 'scissor' }
      10.times { values_array << 'rock' }
    elsif paper_percent > 60.0
      45.times { values_array << 'rock' }
      45.times { values_array << 'scissor' }
      10.times { values_array << 'paper' }
    elsif scissor_percent > 60.0
      45.times { values_array << 'paper' }
      45.times { values_array << 'rock' }
      10.times { values_array << 'scissor' }
    else
      33.times { values_array << 'paper' }
      33.times { values_array << 'rock' }
      34.times { values_array << 'scissor' }
    end
    self.move = Move.new(values_array.sample)
  end
end

class R2P2 < Computer
  def initialize
    super
    @name = 'R2P2'
  end
end

class XET < Computer
  def initialize
    super
    @name = 'XET'
  end

  def choose
    self.move = Move.new('rock')
  end
end

# Game Orchestration Engine
class RPSGame
  attr_accessor :human, :computer, :history_of_moves
  WINNER_SCORE = 10

  def initialize
    @human = Human.new
    @computer = choice_computer
    @history_of_moves = []
  end

  def choice_computer
    if 0 == Random.rand(2)
      R2P2.new
    else
      XET.new
    end
  end

  def display_welcome_message
    puts "Welcome #{@human.name}!"
  end

  def display_goodbye_message
    puts "Final Score:"
    if human.score > computer.score
      puts "You win #{human.score} to #{computer.score}"
    elsif computer.score > human.score
      puts "Computer win #{computer.score} to #{human.score}"
    else
      puts "Is a tie!"
    end
    puts 'Bye!'
  end

  def display_winner
    puts "#{human.name} choice: #{human.move}."
    puts "#{computer.name} choice: #{computer.move}."

    if human.move > computer.move
      puts "#{human.name} won!"
      human.score += 1
      computer.history_of_lost_moves << computer.move.to_s
    elsif human.move < computer.move
      puts "#{computer.name} won!"
      computer.score += 1
    else
      puts "It's a tie!"
    end
  end

  def play_again?
    puts "Do you want to play again? y/n"
    answer = gets.chomp
    answer == 'y' ? true : false
  end

  def display_scores
    if human.score > computer.score
      puts "You are winning #{human.score} to #{computer.score}"
    elsif computer.score > human.score
      puts "Computer is winning #{computer.score} to #{human.score}"
    else
      puts "Everything is tie at #{computer.score}"
    end
  end

  def game_end?
    human.score >= WINNER_SCORE || computer.score >= WINNER_SCORE
  end

  def save_moves
    history_of_moves << [human.move, computer.move]
  end

  def display_history_moves
    puts "History of Moves"
    puts "You - Computer"
    history_of_moves.each_with_index do |move, idx|
      puts "#{idx + 1}. #{move[0]} - #{move[1]}"
    end
  end

  def play
    display_welcome_message
    loop do
      system "clear"
      human.choose
      computer.choose
      save_moves
      display_winner
      display_scores
      display_history_moves
      break if game_end?
      break unless play_again?
    end
    system "clear"
    display_history_moves
    display_goodbye_message
  end
end

RPSGame.new.play
