require 'pry'

class Bst
  attr_reader :data, :left, :right

  def initialize(data)
    @data = data
    @array = []
  end

  def insert(value)
    if value <= data
      @left ? left.insert(value) : @left = Bst.new(value)
    else
      @right ? right.insert(value) : @right = Bst.new(value)
    end
  end

  def each(&block)
    array_from_tree
    @array.each(&block)
  end

  def array_from_tree(head = self)
    array_from_tree(head.left) unless head.left == nil 
    @array << head.data
    array_from_tree(head.right) unless head.right == nil
  end
end