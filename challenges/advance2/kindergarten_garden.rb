# There are 12 children in the class:

# Alice, Bob, Charlie, David, Eve, Fred, Ginny, Harriet, Ileana, Joseph, Kincaid, and Larry

# Each child gets 4 cups, two on each row. 
# The children are assigned to cups in alphabetical order.

# [        window        ]
# VRCGVVRVCGGCCGVRGCVCGCGV
# VRCCCGCRRGVCGCRVVCVGCGCV

# Alice

# Violets, radishes, violets, radishes

# Bob

# Clover, grass, clover, clover

# - class garden
#   - 2 intance variables: plans(array of string) and childrens(hash(key: name, value: order 1 - 12))
# - get name, look at the hash, get the order
#   - do the same for each array of plans
#     - multiply that order * 2 and get that plan and the previous one (idx - 1)

require 'pry'

class Garden
  require 'ostruct'

  attr_reader :diagrams, :students

  CHILDRENS = %w(alice bob charlie david eve fred ginny harriet ileana joseph kincaid larry)

  PLANS_NAMES = {
    'V' => :violets, 'R' => :radishes, 'C' => :clover, 'G' => :grass
  }

  def initialize(diagrams, students = CHILDRENS)
    @diagrams = diagrams.split("\n")
    @students = students.map(&:downcase).sort
  end

  def method_missing(name, *args, &blk)
    if args.empty? && blk.nil? && students.index(name.to_s)
        find_ordered_plans(students.index(name.to_s))
    end
  end

  def find_ordered_plans(children_number)
    [PLANS_NAMES[diagrams[0][(children_number*2)]], PLANS_NAMES[diagrams[0][(children_number*2)+1]], \
    PLANS_NAMES[diagrams[1][(children_number*2)]], PLANS_NAMES[diagrams[1][(children_number*2)+1]]]
  end

  def find_disordered_plans
    [PLANS_NAMES[diagrams[0][(@disordered_index*2)]], PLANS_NAMES[diagrams[0][(@disordered_index*2)+1]], \
    PLANS_NAMES[diagrams[1][(@disordered_index*2)]], PLANS_NAMES[diagrams[1][(@disordered_index*2)+1]]]
  end

  private

  def ordered?
    students == CHILDRENS ? true : false
  end
end

# garden = Garden.new("RC\nGG")
# puts garden.alice

# diagram = "VCRRGVRG\nRVGCCGCV"
# students = %w(Samantha Patricia Xander Roger)
# garden = Garden.new(diagram, students)

# p garden.patricia

# p garden.roger

# p garden.samantha