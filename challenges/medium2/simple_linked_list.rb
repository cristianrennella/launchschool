require 'pry'

class Element
  attr_reader :datum, :next

  def initialize(datum, next_element=nil)
    @datum = datum
    @next = next_element
  end

  def tail?
    @next.nil?
  end
end

class SimpleLinkedList
  attr_reader :size, :head

  def initialize
    @head = nil
    @size = 0
  end

  def self.from_a(value)
    if value == nil || value.empty?
      new
    else
      new_list = new
      value.reverse.each { |inner_value| new_list.push(inner_value) }
      new_list
    end
  end

  def to_a
    return [] if empty?

    array = [head.datum]
    temporary_head = head
    until temporary_head.next == nil
      array << temporary_head.next.datum 
      temporary_head = temporary_head.next
    end
    array
  end

  def reverse
    array_to_reverse = to_a
    array_to_reverse.reverse!
    SimpleLinkedList.from_a(array_to_reverse)
  end

  def push(number)
    @head = Element.new(number, head)
    @size += 1
  end

  def peek
    head ? head.datum : nil
  end

  def pop
    datum = peek
    @head = (head.next ? head.next : nil)
    @size -= 1
    datum
  end

  def empty?
    head == nil
  end
end