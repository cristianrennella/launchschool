# turn right
# turn left
# advance

# Robots are placed on a hypothetical infinite grid, 
# facing a particular direction (north, east, south, or west) 
# at a set of {x,y} coordinates, e.g., {3,8}, 
# with coordinates increasing to the north and east.

# {7, 3} north + RAALAL =>

# Turn right
# Advance twice
# Turn left
# Advance once
# Turn left yet again

# {9, 4} facing west

# Create a Hash with coordinates. Everytime robot receive move update that coordinate with:

# Turn right = x + 1 && coordinates + 1
# Advance twice = y + 1 if north x + 1 if east y - 1 if south x - 1 if west
# Turn left = x - 1 && coordinates - 1

# For coordinates make a constant freeze with array and values as symbols.
# Right = array[index] + 1
# Left = array[index] - 1

require 'pry'

class Robot
  attr_reader :coordinates

  DIRECTIONS = [:north, :east, :south, :west].freeze
  
  TURN_TO_RIGHT = {
    :north => :east,
    :east => :south,
    :south => :west,
    :west => :north,
  }
  TURN_TO_LEFT = {
    :north => :west,
    :east => :north,
    :south => :east,
    :west => :south,
  }

  def initialize
    @coordinates = [0, 0]
  end

  def orient(direction)
    raise ArgumentError unless DIRECTIONS.include?(direction)
    @direction = direction
  end

  def at(x, y)
    @coordinates[0], @coordinates[1] = x, y
  end

  def turn_right
    @direction = TURN_TO_RIGHT[direction]
  end

  def turn_left
    @direction = TURN_TO_LEFT[direction]
  end

  def advance
    case direction
    when :north then @coordinates[1] += 1
    when :east  then @coordinates[0] += 1
    when :south then @coordinates[1] -= 1
    when :west  then @coordinates[0] -= 1
    end
  end

  def bearing
    direction
  end

  private

  attr_reader :direction
end

class Simulator
  INSTRUCTIONS_MAP = {
    'L' => :turn_left,
    'R' => :turn_right,
    'A' => :advance
  }

  def place(robot, x: -2, y: 1, direction: :east)
    robot.at(x, y)
    robot.orient(direction)
  end

  def evaluate(robot, commands)
    instructions(commands).each do |command|
      robot.send(command)
    end
  end

  def instructions(_instructions)
    _instructions.chars.reduce([]) { |result, command| result << INSTRUCTIONS_MAP[command] }
  end
end