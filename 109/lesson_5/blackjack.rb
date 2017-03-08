require 'pry'

MAX_VALUE = 21
MAX_COMPUTER_VALUE = 17

def prompt(message)
  puts "==> #{message}"
end

def initialize_deck(cards)
  suits = ["hearts", "diamonds", "clubs", "spades"]
  suits.each do |suit|
    cards["A #{suit}"] = 1
    (2..10).each { |number| cards["#{number} #{suit}"] = number }
    cards["J #{suit}"] = 10
    cards["Q #{suit}"] = 10
    cards["K #{suit}"] = 10
  end
end

def give_two_cards(cards, player_cards)
  first_card = cards.keys.sample
  player_cards[first_card] = cards.delete(first_card)
  second_card = cards.keys.sample
  player_cards[second_card] = cards.delete(second_card)
end

def display_board(player_cards, computer_cards, hide = false, user_win_rounds, computer_win_rounds)
  system "clear"
  prompt "User Rounds Wins: #{user_win_rounds}"
  prompt "Computer Rounds Wins: #{computer_win_rounds}"
  puts ""
  prompt "User has:"
  player_cards.each { |card, _| puts card }
  prompt "Computer has:"
  computer_cards.each do |card, _|
    if hide == true
      puts card
      puts "unknown card"
      break
    else
      puts card
    end
  end
end

def alive?(cards_at_hand)
  cards_at_hand.values.inject(0, :+) <= MAX_VALUE
end

def count_cards(cards_at_hand)
  total_points = cards_at_hand.values.inject(0, :+)
  has_an_ace = false

  cards_at_hand.each do |card, _|
    if card[0] == "A"
      has_an_ace = true
    end
  end

  if has_an_ace == true && (total_points + 10) <= MAX_VALUE
    total_points + 10
  else
    total_points
  end
end

def hit(cards, cards_at_hand)
  new_card = cards.keys.sample
  cards_at_hand[new_card] = cards.delete(new_card)
end

def rounds_finished?(user_win_rounds, computer_win_rounds)
  user_win_rounds == 5 || computer_win_rounds == 5
end

def play_again?
  prompt "Do you want to play again? (y / n)"
  answer = gets.chomp
  answer == 'y'
end

user_win_rounds = 0 
computer_win_rounds = 0

loop do
  prompt "Welcome to Twenty-One"

  cards = {}
  player_cards = {}
  computer_cards = {}

  initialize_deck(cards)
  give_two_cards(cards, player_cards)
  give_two_cards(cards, computer_cards)
  display_board(player_cards, computer_cards, true, user_win_rounds, computer_win_rounds)

  loop do
    prompt "Do you want to hit or stay? (h / s)"
    choice = gets.chomp

    break unless choice == "h"

    hit(cards, player_cards)
    display_board(player_cards, computer_cards, user_win_rounds, computer_win_rounds)

    break unless alive?(player_cards)
  end

  display_board(player_cards, computer_cards, user_win_rounds, computer_win_rounds)

  if alive?(player_cards) == false
    prompt "You lose!."
    computer_win_rounds += 1

    next unless rounds_finished?(user_win_rounds, computer_win_rounds)
    if play_again?
      computer_win_rounds = 0
      user_win_rounds = 0
      next
    else
      break
    end
  end

  prompt "Computer time to choice:"
  loop do
    count_cards(computer_cards) < MAX_COMPUTER_VALUE ? hit(cards, computer_cards) : break
  end

  display_board(player_cards, computer_cards, user_win_rounds, computer_win_rounds)

  if alive?(computer_cards) == false
    prompt "You Win!."
    user_win_rounds += 1

    next unless rounds_finished?(user_win_rounds, computer_win_rounds)
    if play_again?
      computer_win_rounds = 0
      user_win_rounds = 0
      next
    else
      break
    end
  end

  prompt "Total Player: #{count_cards(player_cards)}"
  prompt "Total Computer: #{count_cards(computer_cards)}"

  if count_cards(player_cards) > count_cards(computer_cards)
    prompt "Player wins!"
    user_win_rounds += 1
  elsif count_cards(player_cards) < count_cards(computer_cards)
    prompt "Computer wins!"
    computer_win_rounds += 1
  else
    prompt "It is a tie!."
  end

  next unless rounds_finished?(user_win_rounds, computer_win_rounds)
  if play_again?
    computer_win_rounds = 0
    user_win_rounds = 0
    next
  else
    break
  end
end
