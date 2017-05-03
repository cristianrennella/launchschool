# - pick the best poker hand(s)

# [4S 5H 6S 8D 2H]
# [2S 4H 6S TD QH]

# game = Poker.new([high_of_8, high_of_queen])
# game.best_hand

# - Create a Poker class that can compare the hands
# - Create a Hand class that can calculate a total value
# - Create a Card class that has rank and suit

require 'pry'

class Card
  attr_reader :rank, :suit

  RANKS = { 
    '0' => 0, '1' => 1, '2' => 2, '3' => 3, '4' => 4,
    '5' => 5, '6' => 6, '7' => 7, '8' => 8, '9' => 9,
    'T' => 10, 'J' => 11, 'Q' => 12, 'K' => 13, 'A' => 14
  }

  def initialize(card)
    rank, suit = card.chars
    @rank = RANKS[rank]
    @suit = suit
  end

  def <=>(other_card)
    rank <=> other_card.rank
  end

  def to_s
    "#{RANKS.key(rank)}#{suit}"
  end
end

class Hand
  include Comparable
  attr_reader :cards

  def initialize(cards)
    @cards = cards.map { |card| Card.new(card)}
  end

  def value
    case
    when straight_flush?
      110 + cards.max.rank
    when square?
      95 + ranks.select { |rank| ranks.count(rank) == 4 }.max
    when full?
      80 + ranks.select { |rank| ranks.count(rank) == 3 }.max
    when flush?
      65 + cards.max.rank
    when straight?
      50 + cards.max.rank
    when ranks.select { |rank| ranks.count(rank) == 3 }.size == 3
      35 + cards.max.rank
    when double_pair?
      30 + ranks.select { |rank| ranks.count(rank) == 2 }.max
    when pair?
      15 + ranks.select { |rank| ranks.count(rank) == 2 }.first
    else
      cards.max_by { |card| card.rank }.rank
    end
  end

  def <=>(other_hand)
    self.value <=> other_hand.value
  end

  def to_a
    cards.map(&:to_s)
  end

  private

  def ranks
    cards.map { |card| card.rank }
  end

  def suits
    cards.map { |card| card.suit }
  end

  def straight_flush?
    flush? && straight?
  end

  def square?
    ranks.uniq.size == 2 && ranks.select { |rank| ranks.count(rank) == 4 }.size == 4
  end

  def full?
    ranks.uniq.size == 2
  end

  def flush?
    suits.all? { |suit| suits.first == suit }
  end

  def straight?
    if cards.max.rank == 14
      return true if ranks.max(4) == [10, 11, 12, 13]
      return true if ranks.min(4) == [2, 3, 4, 5]
    else
      cards.all? { |card| [*(cards.min.rank..cards.max.rank)].include?(card.rank) && ranks.count(card.rank) == 1 && cards.max.rank - cards.min.rank == 4}
    end
  end

  def double_pair?
    ranks.uniq.size == 3
  end

  def pair?
    ranks.uniq.size == 4
  end
end

class Poker
  attr_reader :hands

  def initialize(hands)
    @hands = hands.map! { |hand| Hand.new(hand) }
  end

  def best_hand
    hands_ordered_by_max = hands.find_all { |hand| hand == hands.max }.map(&:to_a)
  end
end