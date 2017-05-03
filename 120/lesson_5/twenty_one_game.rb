require 'pry'

module Hand
  def show_hand
    puts "#{name} cards are:"
    puts cards
    puts "=> Total #{calculate_total}"
    puts "-----"
  end

  def calculate_total
    @total = 0
    @cards.each do |card|
      case card.value
      when (2..10) then @total += card.value
      when *['Jack', 'Queen', 'King'] then @total += 10
      end
    end

    @cards.each do |card|
      case card.value
      when 'Ace' then @total += @total + 11 <= 21 ? 11 : 1
      end
    end
    @total
  end
end

class Participant
  include Comparable, Hand

  attr_accessor :cards
  attr_reader :total, :name

  def initialize
    @cards = []
    @total = 0
    @name = set_name
  end

  def add_card(card)
    @cards << card
  end

  def busted?
    calculate_total
    @total > 21
  end

  def <=>(other_participant)
    calculate_total <=> other_participant.calculate_total
  end
end

class Player < Participant
  def set_name
    answer = nil
    loop do
      puts "What is your name?."
      answer = gets.chomp
      break unless answer.empty?
      puts "Sorry, you must enter your name."
    end
    @name = answer
  end

  def show_flop
    show_hand
  end
end

class Dealer < Participant
  ROBOTS_NAME = ['R2D2', 'Hal', 'Chappie', 'Sonny', 'Number 5']

  def set_name
    @name = ROBOTS_NAME.sample
  end

  def show_flop
    puts @cards.first
    puts "???"
  end
end

class Deck
  def initialize
    @cards = []
    reset
  end

  def reset
    Card::VALUES.product(Card::SUITS).each do |item|
      @cards << Card.new(item[0], item[1])
    end

    @cards.shuffle!
  end

  def deal_one
    @cards.pop
  end
end

class Card
  VALUES = (2..10).to_a + ['Jack', 'Queen', 'King', 'Ace']
  SUITS = ['Hearts', 'Diamonds', 'Clubs', 'Spades']

  attr_reader :value, :suit

  def initialize(value, suit)
    @value = value
    @suit = suit
  end

  def to_s
    "#{@value} of #{@suit}"
  end
end

class Game
  attr_reader :deck, :player, :dealer

  def initialize
    @deck = Deck.new
    @player = Player.new
    @dealer = Dealer.new
  end

  def deal_cards
    2.times do
      player.add_card(deck.deal_one)
      dealer.add_card(deck.deal_one)
    end
  end

  def show_initial_cards
    clear
    puts player.show_flop
    puts dealer.show_flop
  end

  def player_turn
    answer = nil

    loop do
      loop do
        puts "Do you want to Hit (h) or Stay (s)?"
        answer = gets.chomp.downcase
        break if ['h', 's'].include?(answer)
        puts "Please enter a valid choice"
      end

      break if answer == 's'

      player.add_card(deck.deal_one)
      show_initial_cards
      break if player.busted?
    end
  end

  def show_all_cards
    clear
    player.show_hand
    dealer.show_hand
  end

  def clear
    system "clear"
  end

  def dealer_turn
    show_all_cards
    loop do
      break if dealer.calculate_total >= 17
      dealer.add_card(deck.deal_one)
      show_all_cards
    end
  end

  def show_result
    case
    when player.busted? then puts "You are busted. Dealer wins!."
    when dealer.busted? then puts "Dealer is busted. You win!."
    when player > dealer then puts "Congratulations!. You win #{player.total} to #{dealer.total}"
    when dealer > player then puts "Dealer wins #{dealer.total} to #{player.total}"
    else puts "It's a tie!."
    end
  end

  def start
    deal_cards
    show_initial_cards
    player_turn
    dealer_turn unless player.busted?
    show_result
  end
end

Game.new.start
