# class Person
#   attr_accessor :first_name, :last_name

#   def initialize(full_name)
#     parse_ful_name(full_name)
#   end

#   def name=(full_name)
#     parse_ful_name(full_name)
#   end

#   def name
#     "#{@first_name} #{@last_name}".strip
#   end

#   def to_s
#     name
#   end

#   private

#   def parse_ful_name(full_name)
#     part = full_name.split
#     @first_name = part.first
#     @last_name = part.size > 1 ? part.last : ''
#   end

# end

# bob = Person.new('Robert Smith')
# rob = Person.new('Robert Willis')

# puts "Here is #{bob}"

class Dog
  def speak
    'bark!'
  end

  def swim
    'swimming!'
  end
end

class BullDog < Dog
  def swim
    'can not swim'
  end
end

teddy = Dog.new
puts teddy.speak           # => "bark!"
puts teddy.swim 

bull = BullDog.new
puts bull.speak
puts bull.swim