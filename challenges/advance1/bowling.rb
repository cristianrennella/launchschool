# - 10 frames
#   - one or two ball throws with 10 pins standing

# - 3 cases
#   - open frame less than 10 is recorded for the frame. 
#     this case the score for the frame is the number of pins knocked down.
#   - a spare where all ten pins are knocked down after the second throw. 
#     the total value of a spare is 10 plus the number of pins knocked down in their next throw.
#   - a strike is where all ten pins are knocked down after the first throw.
#     the total value of a strike is 10 plus the number of pins knocked down in their next 2 throws. 
#     - If a strike is immediately followed by a second strike, then we can not total the value of 
#       first strike until they throw the ball one more time.

# - The tenth frame in the game is a special case. 
#   If someone throws a strike or a spare then they get a fill ball. 
#   Fill balls exist to calculate the total of the 10th frame. 
#   Scoring a strike or spare on the fill ball does not give the player more fill balls. 
#   The total value of the 10th frame is the total number of pins knocked down.

# - roll(pins) is called each time the player rolls a ball. 
#   The argument is the number of pins knocked down.

# - score() is called only at the very end of the game. It returns the total score for that game.

# - A class Game with a function roll that receive the number of pins knoched down.
#   Each time I will add to an array instance variable history_of_rolls (arrays of arrays).
# - At the end, I will sum all the history_of_rolls values to obtain the score.
#   - If it is an open frame, I will just add the value to score.
#   - If it is a spare, I will add 10 + value at idx + 1
#   - If it is a strike, I will add + (value at idx + 1) + (value at idx + 2)
# - At 10th frame. I will add all the values with not spare or strike special treatment.

require 'pry'

class Game
  attr_reader :history_of_rolls

  def initialize
    @history_of_rolls = []
  end

  def roll(pins)
    validate_roll(pins)

    if pins == 10
      history_of_rolls << 10
      history_of_rolls << 0
    else
      history_of_rolls << pins
    end
  end

  def score
    validate_score

    normalize!
    history_of_rolls.reduce(&:+)
  end

  private

  def normalize!
    @history_of_rolls = history_of_rolls.each_slice(2).to_a

    history_of_rolls.map!.with_index do |value, idx|
      next value if idx == 9 || idx == 10 || idx == 11

      if strike?(value)
        if next_roll_is_strike?(idx)
          value[0] += history_of_rolls[idx + 1][0]
          value[0] += history_of_rolls[idx + 2][0]
        else
          value[0] += history_of_rolls[idx + 1][0]
          value[0] += history_of_rolls[idx + 1][1]
        end
      elsif spare?(value)
        value[1] += history_of_rolls[idx + 1][0]
        value
      else
        value
      end
    end

    history_of_rolls.flatten!
  end

  def strike?(value)
    value[0] == 10
  end

  def spare?(value)
    value[0] + value[1] == 10
  end

  def next_roll_is_strike?(idx)
    history_of_rolls[idx + 1][0] == 10
  end

  def validate_score
    if history_of_rolls.size < 20
      raise RuntimeError, 'Score cannot be taken until the end of the game' 
    end

    if history_of_rolls.size == 20 && history_of_rolls[-1] + history_of_rolls[-2] == 10
      raise RuntimeError, 'Score cannot be taken until the end of the game' 
    end
  end

  def validate_roll(pins)
    raise RuntimeError, 'Pins must have a value from 0 to 10' if pins < 0 || pins > 10

    if history_of_rolls.size.odd? && history_of_rolls.size > 0
      if history_of_rolls[-1] + pins > 10
        raise RuntimeError, 'Pin count exceeds pins on the lane' 
      end
    end

    if history_of_rolls.size == 20 && history_of_rolls[-1] + history_of_rolls[-2] != 10
      raise RuntimeError, 'Should not be able to roll after game is over' 
    end
  end
end