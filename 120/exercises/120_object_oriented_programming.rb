# puts 'Hello'.class
# puts 5.class
# puts [1, 2, 3].class

# module Walkable
#   def walk
#     puts "Let's go for a walk!"
#   end
# end

# class Cat
#   include Walkable

#   attr_accessor :name

#   def initialize(name)
#     @name = name
#   end

#   def greet
#     puts "Hello! My name is #{name}!"
#   end

#   def rename(new_name)
#     self.name = new_name
#   end

#   def self.generic_greeting
#     puts "Hello! I'm a cat!"
#   end

#   def identify
#     self
#   end
# end

# kitty = Cat.new('Sophie')
# kitty.greet
# kitty.walk
# Cat.generic_greeting
# p kitty.name
# kitty.rename('Clhoe')
# p kitty.name
# p kitty.identify

# Cat.generic_greeting
# kitty.personal_greeting

# class Cat
#   COLOR = 'purple'

#   @@total = 0

#   attr_reader :name

#   def initialize(name)
#     @name = name
#     @@total += 1
#   end

#   def self.generic_greeting
#     puts "Hello! I'm a cat!"
#   end

#   def personal_greeting
#     puts "Hello! My name is #{name}!"
#   end

#   def self.total
#     @@total
#   end

#   def greet
#     puts "Hello! My name is #{name} and I'm a #{COLOR} cat!"
#   end
# end

# # kitty = Cat.new('Sophie')

# kitty1 = Cat.new('kitty1')
# kitty2 = Cat.new('kitty2')

# p Cat.total

# kitty1.greet

# class Cat
#   attr_reader :name

#   def initialize(name)
#     @name = name
#   end

#   def to_s
#     "I am #{name}"
#   end
# end

# kitty = Cat.new('Sophie')
# puts kitty

# class Person
#   attr_accessor :secret
# end

# person1 = Person.new
# person1.secret = 'Shh.. this is a secret!'
# puts person1.secret

# class Person
#   attr_writer :secret

#   private

#   attr_reader :secret
# end

# person1 = Person.new
# person1.secret = 'Shh.. this is a secret!'
# person1.share_secret

# class Person
#   attr_writer :secret

#   def share_secret
#     puts secret
#   end

#   private

#   attr_reader :secret
# end

# person1 = Person.new
# person1.secret = 'Shh.. this is a secret!'
# person1.share_secret

# class Person
#   attr_writer :secret

#   def compare_secret(other_person)
#     self.secret == other_person.secret
#   end

#   protected

#   attr_reader :secret
# end

# person1 = Person.new
# person1.secret = 'Shh.. this is a secret!'

# person2 = Person.new
# person2.secret = 'Shh.. this is a different secret!'

# p person1.compare_secret(person2)

# class Vehicle
#   attr_reader :year

#   def initialize(year)
#     @year = year
#   end
# end

# class Car < Vehicle
# end

# class Truck < Vehicle
# end

# truck1 = Truck.new(1994)
# puts truck1.year

# car1 = Car.new(2006)
# puts car1.year

# class Vehicle
#   attr_reader :year, :bed_type

#   def initialize(year)
#     @year = year
#   end
# end

# class Truck < Vehicle
#   def initialize(year, bed_type)
#     super(year)
#     @bed_type = bed_type
#   end
# end

# class Car < Vehicle
# end

# truck1 = Truck.new(1994, 'Short')
# puts truck1.year
# puts truck1.bed_type

# class Vehicle
#   def start_engine
#     'Ready to go!'
#   end
# end

# class Truck < Vehicle
#   def start_engine(speed)
#     super() << "Drive #{speed} please!"
#   end
# end

# truck1 = Truck.new
# puts truck1.start_engine('fast')

# module Towable
#   def tow
#     puts "I can tow a trailer!"
#   end
# end

# class Truck
#   include Towable
# end

# class Car
# end

# truck1 = Truck.new
# puts truck1.tow

# module Towable
#   def tow
#     'I can tow a trailer!'
#   end
# end

# class Vehicle
#   attr_reader :year

#   def initialize(year)
#     @year = year
#   end
# end

# class Truck < Vehicle
#   include Towable
# end

# class Car < Vehicle
# end

# truck1 = Truck.new(1994)
# puts truck1.year
# puts truck1.tow

# car1 = Car.new(2006)
# puts car1.year

# module Transportation
#   class Vehicule
#   end

#   class Car < Vehicule
#   end

#   class Truck < Vehicule
#   end
# end

# class Person
#   attr_accessor :name
# end

# person1 = Person.new
# person1.name = 'Jessica'
# puts person1.name

# class Person
#   attr_writer :last_name
#   attr_accessor :first_name

#   def first_equals_last?
#     first_name == last_name
#   end

#   private

#   attr_reader :last_name
# end

# person1 = Person.new
# person1.first_name = 'Dave'
# person1.last_name = 'Smith'
# puts person1.first_equals_last?

# class Person
#   attr_writer :age

#   def older_than?(other)
#     age > other.age
#   end

#   protected

#   attr_reader :age
# end

# person1 = Person.new
# person1.age = 17

# person2 = Person.new
# person2.age = 26

# puts person1.older_than?(person2)

# class Person
#   attr_reader :name

#   def name=(name)
#     @name = name.capitalize
#   end
# end

# person1 = Person.new
# person1.name = 'eLiZaBeTh'
# puts person1.name

# class Person
#   attr_writer :name
#   def name
#     'Mr ' + @name
#   end
# end

# person1 = Person.new
# person1.name = 'James'
# puts person1.name

# class Person
#   def initialize(name)
#     @name = name
#   end

#   def name
#     name = String.new(@name)
#   end
# end

# person1 = Person.new('James')
# person1.name.reverse!
# puts person1.name

# class Person
#   def age=(age)
#     @age = age * 2
#   end

#   def age
#     @age * 2
#   end
# end

# person1 = Person.new
# person1.age = 20
# puts person1.age

# class Person
#   def name=(name)
#     @first_name, @last_name = name.split(' ')
#   end

#   def name
#     [first_name, last_name].join(' ')
#   end

#   private

#   attr_accessor :first_name, :last_name
# end

# person1 = Person.new
# person1.name = 'John Doe'
# puts person1.name

# class Banner
#   def initialize(message, width)
#     @message = message
#     @width = width
#   end

#   def to_s
#     [horizontal_rule, empty_line, message_line, empty_line, horizontal_rule].join("\n")
#   end

#   private

#   attr_accessor :message, :width

#   def horizontal_rule
#     if width <= (message.size + 2)
#       puts '+' + '-' * message.size + '+'
#     else
#       puts '+' + '-' * (width - 2) + '+' 
#     end
#   end

#   def empty_line
#     if width <= (message.size + 2)
#       puts '|' + ' ' * message.size + '|'
#     else
#       puts '|' + ' ' * (width - 2) + '|' 
#     end
#   end

#   def message_line
#     if width <= (message.size + 2)
#       puts "|#{@message}|"
#     else
#       message_line = message.center(width)
#       message_line[0], message_line[-1] = '|', '|'
#       puts message_line
#     end
#   end
# end

# banner = Banner.new('To boldly go where no one has gone before.', 48)
# puts banner

# banner = Banner.new('',1)
# puts banner

# class  Pet
#   attr_reader :name

#   def initialize(name)
#     @name = name.to_s
#   end

#   def to_s
#     "My name is #{@name.upcase}."
#   end
# end

# name = 42
# fluffy = Pet.new(name)
# name += 1
# puts fluffy.name
# puts fluffy
# puts fluffy.name
# puts name

# class Book
#   attr_accessor :title, :author

#   def initialize(author, title)
#     @author = author
#     @title = title
#   end

#   def to_s
#     %("#{title}", by #{author})
#   end
# end

# book = Book.new("Neil Stephenson", "Snow Crash")
# puts %(The author of "#{book.title}" is #{book.author}.)
# puts %(book = #{book}.)

# class Person
#   def initialize(first_name, last_name)
#     @first_name = first_name.capitalize
#     @last_name = last_name.capitalize
#   end

#   def first_name=(first_name)
#     @first_name = first_name.capitalize
#   end

#   def last_name=(last_name)
#     @last_name = last_name.capitalize
#   end

#   def to_s
#     "#{@first_name} #{@last_name}"
#   end
# end

# person = Person.new('john', 'doe')
# puts person

# person.first_name = 'jane'
# person.last_name = 'smith'
# puts person

# class Car
#   attr_accessor :mileage

#   def initialize
#     @mileage = 0
#   end

#   def increment_mileage(miles)
#     self.mileage = mileage + miles
#   end

#   def print_mileage
#     puts mileage
#   end
# end

# car = Car.new
# car.mileage = 5000
# car.increment_mileage(678)
# car.print_mileage  # should print 5678

# class Rectangle
#   def initialize(height, width)
#     @height = height
#     @width = width
#   end

#   def area
#     @height * @width
#   end
# end

# class Square < Rectangle
#   def initialize(length_of_side)
#     super(length_of_side, length_of_side)
#   end
# end

# square = Square.new(5)
# puts "area of square = #{square.area}"

# class Pet
#   def initialize(name, age)
#     @name = name
#     @age = age
#   end
# end

# class Cat < Pet
#   def initialize(name, age, fur)
#     super(name, age)
#     @fur = fur
#   end

#   def to_s
#     "My cat #{@name} is #{@age} years old and has #{@fur} fur."
#   end
# end

# pudding = Cat.new('Pudding', 7, 'black and white')
# butterscotch = Cat.new('Butterscotch', 10, 'tan and white')
# puts pudding, butterscotch

# class Vehicule
#   attr_reader :make, :model

#   def initialize(make, model)
#     @make = make
#     @model = model
#   end

#   def to_s
#     "#{make} #{model}"
#   end
# end

# class Car < Vehicule
#   def wheels
#     4
#   end
# end

# class Motorcycle < Vehicule
#   def wheels
#     2
#   end
# end

# class Truck < Vehicule
#   attr_reader :payload

#   def initialize(make, model, payload)
#     super(make, model)
#     @payload = payload
#   end

#   def wheels
#     6
#   end
# end

# class House
#   include Comparable

#   attr_reader :price

#   def initialize(price)
#     @price = price
#   end

#   def <=>(other_house)
#     price <=> other_house.price
#   end
# end

# home1 = House.new(100_000)
# home2 = House.new(150_000)
# puts "Home 1 is cheaper" if home1 < home2
# puts "Home 2 is more expensive" if home2 > home1

# class Transform
#   def initialize(data)
#     @data = data
#   end

#   def uppercase
#     @data.upcase
#   end

#   def self.lowercase(data)
#     data.downcase
#   end
# end

# my_data = Transform.new('abc')
# puts my_data.uppercase
# puts Transform.lowercase('XYZ')

# class Wallet
#   include Comparable

#   def initialize(amount)
#     @amount = amount
#   end

#   def <=>(other_wallet)
#     amount <=> other_wallet.amount
#   end

#   protected

#   attr_reader :amount
# end

# bills_wallet = Wallet.new(500)
# pennys_wallet = Wallet.new(465)
# if bills_wallet > pennys_wallet
#   puts 'Bill has more money than Penny'
# elsif bills_wallet < pennys_wallet
#   puts 'Penny has more money than Bill'
# else
#   puts 'Bill and Penny have the same amount of money.'
# end

# class Pet
#   attr_reader :name, :animal

#   def initialize (animal, name)
#     @animal = animal
#     @name = name
#   end

#   def to_s
#     "a #{animal} named #{name}"
#   end
# end

# class Owner
#   attr_reader :name, :pets

#   def initialize(name)
#     @name = name
#     @pets = []
#   end

#   def add_pet(pet)
#     @pets << pet
#   end

#   def number_of_pets
#     pets.size
#   end

#   def print_pets
#     pets.each { |pet| puts pet }
#   end
# end

# class Shelter
#   def initialize
#     @owners = {}
#     @unadopted_pets = []
#   end

#   def new_pet(pet)
#     @unadopted_pets << pet
#   end

#   def adopt(owner, pet)
#     @unadopted_pets.delete(pet) if @unadopted_pets.include?(pet)
#     owner.add_pet(pet)
#     @owners[owner.name] ||= owner
#   end

#   def number_of_unadopted
#     @unadopted_pets.size
#   end

#   def print_adoptions
#     @owners.each_pair do |name, owner|
#       puts "#{name} has adopted the following pets:"
#       owner.print_pets
#       puts
#     end
#   end

#   def print_unadopted
#     puts "The Animal Shelter has the following unadopted pets:"
#     @unadopted_pets.each do |pet|
#       puts pet
#     end
#   end
# end

# butterscotch = Pet.new('cat', 'Butterscotch')
# pudding      = Pet.new('cat', 'Pudding')
# darwin       = Pet.new('bearded dragon', 'Darwin')
# kennedy      = Pet.new('dog', 'Kennedy')
# sweetie      = Pet.new('parakeet', 'Sweetie Pie')
# molly        = Pet.new('dog', 'Molly')
# chester      = Pet.new('fish', 'Chester')
# asta         = Pet.new('dog', 'Asta')
# laddie       = Pet.new('dog', 'Laddie')
# fluffy       = Pet.new('cat', 'Fluffy')
# kat          = Pet.new('cat', 'Kat')
# ben          = Pet.new('cat', 'Ben')
# chatterbox   = Pet.new('parakeet', 'Chatterbox')
# bluebell     = Pet.new('parakeet', 'Bluebell')

# phanson = Owner.new('P Hanson')
# bholmes = Owner.new('B Holmes')

# shelter = Shelter.new
# shelter.new_pet(asta)
# shelter.new_pet(laddie)
# shelter.new_pet(fluffy)
# shelter.new_pet(kat)
# shelter.new_pet(ben)
# shelter.new_pet(chatterbox)
# shelter.new_pet(bluebell)
# shelter.adopt(phanson, butterscotch)
# shelter.adopt(phanson, pudding)
# shelter.adopt(phanson, darwin)
# shelter.adopt(bholmes, kennedy)
# shelter.adopt(bholmes, sweetie)
# shelter.adopt(bholmes, molly)
# shelter.adopt(bholmes, chester)
# shelter.print_adoptions
# shelter.print_unadopted
# puts
# puts "#{phanson.name} has #{phanson.number_of_pets} adopted pets."
# puts "#{bholmes.name} has #{bholmes.number_of_pets} adopted pets."
# puts "#The Animal shelter has #{shelter.number_of_unadopted} unadopted pets."
# puts

# shelter.adopt(phanson, asta)
# shelter.print_adoptions
# shelter.print_unadopted
# puts
# puts "#{phanson.name} has #{phanson.number_of_pets} adopted pets."
# puts "#{bholmes.name} has #{bholmes.number_of_pets} adopted pets."
# puts "#The Animal shelter has #{shelter.number_of_unadopted} unadopted pets."
# puts

# # P Hanson has adopted the following pets:
# # a cat named Butterscotch
# # a cat named Pudding
# # a bearded dragon named Darwin

# # B Holmes has adopted the following pets:
# # a dog named Molly
# # a parakeet named Sweetie Pie
# # a dog named Kennedy
# # a fish named Chester

# # The Animal Shelter has the following unadopted pets:
# # a dog named Asta
# # a dog named Laddie
# # a cat named Fluffy
# # a cat named Kat
# # a cat named Ben
# # a parakeet named Chatterbox
# # a parakeet named Bluebell

# # P Hanson has 3 adopted pets.
# # B Holmes has 4 adopted pets.
# # The Animal shelter has 7 unadopted pets.

# class Expander
#   def initialize(string)
#     @string = string
#   end

#   def to_s
#     expand(3)
#   end

#   private

#   def expand(n)
#     @string * n
#   end
# end

# expander = Expander.new('xyz')
# puts expander

# module Walkable
#   def walk
#     puts "#{self} #{gait} forward"
#   end
# end

# class Person
#   include Walkable

#   attr_reader :name

#   def initialize(name)
#     @name = name
#   end

#   def to_s
#     name
#   end

#   private

#   def gait
#     "strolls"
#   end
# end

# class Noble
#   include Walkable

#   attr_reader :name, :title

#   def initialize(name, title)
#     @name = name
#     @title = title
#   end

#   def to_s
#     "#{title} #{name}"
#   end

#   private

#   def gait
#     "struts"
#   end
# end

# class Cat
#   include Walkable

#   attr_reader :name

#   def initialize(name)
#     @name = name
#   end

#   def to_s
#     name
#   end

#   private

#   def gait
#     "saunters"
#   end
# end

# class Cheetah
#   include Walkable

#   attr_reader :name

#   def initialize(name)
#     @name = name
#   end

#   def to_s
#     name
#   end

#   private

#   def gait
#     "runs"
#   end
# end

# mike = Person.new("Mike")
# mike.walk
# # => "Mike strolls forward"

# kitty = Cat.new("Kitty")
# kitty.walk
# # => "Kitty saunters forward"

# flash = Cheetah.new("Flash")
# flash.walk
# # => "Flash runs forward"

# byron = Noble.new("Byron", "Lord")
# byron.walk
# # => "Lord Byron struts forward"

# byron.name
# # => "Byron"
# byron.title
# # => "Lord"

# class Machine

#   def start
#     flip_switch(:on)
#   end

#   def stop
#     flip_switch(:off)
#   end

#   private

#   attr_writer :switch

#   def flip_switch(desired_state)
#     self.switch = desired_state
#   end
# end

# my_machine = Machine.new
# my_machine.start
# my_machine.stop

# class FixedArray
#   def initialize(number_of_elements)
#     @array = Array.new(number_of_elements)
#   end

#   def [](number)
#     @array.fetch(number)
#   end

#   def to_a
#     @array.clone
#   end

#   def to_s
#     to_a.to_s
#   end

#   def []=(number, element)
#     @array.fetch(number)
#     @array[number] = element
#   end
# end

# fixed_array = FixedArray.new(5)
# puts fixed_array[3] == nil
# puts fixed_array.to_a == [nil] * 5

# fixed_array[3] = 'a'
# puts fixed_array[3] == 'a'
# puts fixed_array.to_a == [nil, nil, nil, 'a', nil]

# fixed_array[1] = 'b'
# puts fixed_array[1] == 'b'
# puts fixed_array.to_a == [nil, 'b', nil, 'a', nil]

# fixed_array[1] = 'c'
# puts fixed_array[1] == 'c'
# puts fixed_array.to_a == [nil, 'c', nil, 'a', nil]

# fixed_array[4] = 'd'
# puts fixed_array[4] == 'd'
# puts fixed_array.to_a == [nil, 'c', nil, 'a', 'd']
# puts fixed_array.to_s == '[nil, "c", nil, "a", "d"]'

# puts fixed_array[-1] == 'd'
# puts fixed_array[-4] == 'c'

# begin
#   fixed_array[6]
#   puts false
# rescue IndexError
#   puts true
# end

# begin
#   fixed_array[-7] = 3
#   puts false
# rescue IndexError
#   puts true
# end

# class Student
#   def initialize(name, year, parking)
#     @name = name
#     @year = year
#     @parking = parking
#   end
# end

# class Graduate < Student
#   def initialize(name, year, parking)
#     super(name, year, true)
#   end
# end

# class Undergraduate < Student
#   def initialize(name, year, parking)
#     super(name, year, false)
#   end
# end

# 1. Create array with max_size (all values nil)
# 2. Add element: 
#   1. If everything is nil: Shift the element.
#   2. If there is any nil: Shift the element and delete the oldest one.
#   3. If it is full: Shift the element and delete the last one.
# 3. Delete element:
#   1. If everything is nil: don't do anything
#   2. Find the oldest, replace with nil 

# class CircularQueue
#   def initialize(number_of_elements)
#     @array = Array.new(number_of_elements)
#   end

#   def enqueue(value)
#     if @array.any? { |element| element == nil }
#       @array.each_with_index do |element, idx|
#         if element == nil
#           @array.delete_at(idx)
#           @array.unshift(value)
#           break
#         end
#       end
#     else
#       @array.unshift(value)
#       @array.pop      
#     end
#   end

#   def dequeue
#     oldest_value = nil 
#     oldest_idx = @array.size - 1

#     @array.each_with_index do |element, idx|
#       if element != nil
#         oldest_idx = idx
#       end
#     end

#     oldest_value = @array[oldest_idx]
#     @array[oldest_idx] = nil

#     oldest_value
#   end

#   def to_s
#     @array.to_s
#   end
# end

# queue = CircularQueue.new(3)
# puts queue.dequeue == nil

# queue.enqueue(1)
# queue.enqueue(2)
# puts queue.dequeue == 1

# queue.enqueue(3)
# queue.enqueue(4)
# puts queue.dequeue == 2

# queue.enqueue(5)
# queue.enqueue(6)
# queue.enqueue(7)
# puts queue.dequeue == 5
# puts queue.dequeue == 6
# puts queue.dequeue == 7
# puts queue.dequeue == nil

# queue = CircularQueue.new(4)
# puts queue.dequeue == nil

# queue.enqueue(1)
# queue.enqueue(2)
# puts queue.dequeue == 1

# queue.enqueue(3)
# queue.enqueue(4)
# puts queue.dequeue == 2

# queue.enqueue(5)
# queue.enqueue(6)
# queue.enqueue(7)
# puts queue.dequeue == 4
# puts queue.dequeue == 5
# puts queue.dequeue == 6
# puts queue.dequeue == 7
# puts queue.dequeue == nil

# require 'set'

# class MinilangRuntimeError < RuntimeError; end
# class BadTokenError < MinilangRuntimeError; end
# class EmptyStackError < MinilangRuntimeError; end

# class Minilang
#   ACTIONS = Set.new %w(PUSH ADD SUB MULT DIV MOD POP PRINT)

#   def initialize(operations)
#     @operations = operations
#     @register = 0
#     @stack = []
#   end

#   def eval(degrees_c)
#     @operations = format(@operations, degrees_c: degrees_c)
#     @operations = @operations.split

#     @operations.each do |operation|
#       if integer?(operation)
#         @register = operation.to_i
#       elsif ACTIONS.include?(operation)
#         send(operation.downcase)
#       else
#         raise BadTokenError, "Invalid token: #{operation}"
#       end
#     end
#   rescue MinilangRuntimeError => error
#     puts error.message
#   end

#   private

#   def integer?(value)
#     value == value.to_i.to_s
#   end

#   def print
#     puts @register
#   end

#   def push
#     @stack << @register
#   end

#   def mult
#     @register *= @stack.pop
#   end

#   def div
#     @register /= @stack.pop
#   end

#   def add
#     @register += @stack.pop
#   end

#   def sub
#     @register -= @stack.pop
#   end

#   def mod
#     @register %= @stack.pop
#   end

#   def pop
#     raise EmptyStackError, "Empty stack!" if @stack.empty?
#     @register = @stack.pop
#   end
# end

# CENTIGRADE_TO_FAHRENHEIT = '5 PUSH %<degrees_c>d PUSH 9 MULT DIV PUSH 32 ADD PRINT'

# minilang = Minilang.new(CENTIGRADE_TO_FAHRENHEIT)
# minilang.eval(100)

# # Minilang.new('5 PUSH 3 MULT PRINT').eval
# # # 15

# # Minilang.new('5 PRINT PUSH 3 PRINT ADD PRINT').eval
# # # 5
# # # 3
# # # 8

# # Minilang.new('5 PUSH 10 PRINT POP PRINT').eval
# # # 10
# # # 5

# # Minilang.new('5 PUSH POP POP PRINT').eval
# # # Empty stack!

# # # p "Here"
# # Minilang.new('3 PUSH PUSH 7 DIV MULT PRINT').eval
# # # 6

# # Minilang.new('4 PUSH PUSH 7 MOD MULT PRINT ').eval
# # # 12

# # Minilang.new('-3 PUSH 5 XSUB PRINT').eval
# # # Invalid token: XSUB

# # Minilang.new('-3 PUSH 5 SUB PRINT').eval
# # # 8

# # Minilang.new('6 PUSH').eval
# # # (nothing printed; no PRINT commands)

# 1. Define constant with total number of chances to guess
# 2. Generate a random number between 1 and 100
# 3. Let the user choose
# 4. Check if the user win or give an orientation
# 5. End game after total number of chances to guess

# class PingGame
#   NUMBER_OF_GUESSES = 7
#   RANGE_OF_GUESSES = (1..100)
#   RESULT_MESSAGE = {
#     high: 'Your number is too high.',
#     low: 'Your number is too low.',
#     lose: 'You are out of guesses. You lose.',
#     win:  'You win!'
#   }.freeze

#   def initialize
#     @number_to_guess = rand(RANGE_OF_GUESSES)
#     @guesses = []
#     @user_wins = false
#   end

#   def play
#     loop do
#       ask_user_guess
#       print_result
#       break if @user_wins
#       break if out_of_guesses
#       give_suggestion
#     end
#   end

#   private

#   def ask_user_guess
#     puts "You have #{NUMBER_OF_GUESSES - @guesses.size} guesses remaining."
#     puts "Enter a number between 1 and 100: "

#     user_number = nil

#     loop do
#       user_number = gets.chomp.to_i
#       break if RANGE_OF_GUESSES.include?(user_number)
#       puts "Invalid guess. Enter a number between #{RANGE_OF_GUESSES.first} and #{RANGE_OF_GUESSES.last}: "
#     end

#     @guesses << user_number
#   end

#   def print_result
#     if @guesses.last == @number_to_guess
#       puts RESULT_MESSAGE[:win]
#       @user_wins = true
#     end
#   end

#   def give_suggestion
#     if @guesses.last < @number_to_guess
#       puts RESULT_MESSAGE[:low]
#     else
#       puts RESULT_MESSAGE[:high]
#     end
#   end

#   def out_of_guesses
#     if @guesses.size == NUMBER_OF_GUESSES
#       puts RESULT_MESSAGE[:lose]
#       return true
#     end

#     false
#   end

# end

# game = PingGame.new
# game.play

# class GuessingGame
#   RESULT_MESSAGE = {
#     high: 'Your number is too high.',
#     lose: 'You are out of guesses. You lose.',
#     low:  'Your number is too low.',
#     win:  'You win!'
#     }.freeze

#     def initialize(from, to)
#       @range = (from..to)
#       @max_guesses = Math.log2(@range.size).to_i + 1
#     end

#     def play
#       reset
#       @max_guesses.downto(1) do |remaining_guesses|
#         display_guesses_remaining(remaining_guesses)
#         result = check_guess(obtain_guess)
#         puts RESULT_MESSAGE[result]
#         return if result == :win
#       end

#       puts "\n", RESULT_MESSAGE[:lose]
#     end

#     private

#     def display_guesses_remaining(remaining)
#       puts
#       if remaining == 1
#         puts 'You have 1 guess remaining.'
#       else
#         puts "You have #{remaining} guesses remaining."
#       end
#     end

#     def check_guess guess_value
#       return :win if guess_value == @secret_number
#       return :low if guess_value < @secret_number
#       :high
#     end

#     def obtain_guess
#       loop do
#         print "Enter a number between #{@range.first} and #{@range.last}: "
#         guess = gets.chomp.to_i
#         return guess if @range.cover?(guess)
#         print "Invalid guess. "
#       end
#     end

#     def reset
#       @secret_number = rand(@range)
#     end
#   end

# game = GuessingGame.new(501, 1500)
# game.play

class Card
  include Comparable

  attr_reader :rank, :suit

  VALUES = {'Jack' => 11, 'Queen' => 12, 'King' => 13, 'Ace' => 14}
  SUIT_VALUES = {'Diamonds' => 0.1, 'Clubs' => 0.2, 'Hearts' => 0.3, 'Spades' => 0.4}

  def initialize(rank, suit)
    @rank = rank
    @suit = suit
  end

  def to_s
    "#{rank} of #{suit}"
  end

  def value
    VALUES.fetch(@rank, @rank) # + SUIT_VALUES[@suit]
  end

  def suit
    @suit
  end

  def <=>(other_card)
    value <=> other_card.value 
  end
end

class Deck
  RANKS = (2..10).to_a + %w(Jack Queen King Ace).freeze
  SUITS = %w(Hearts Clubs Diamonds Spades).freeze

  def initialize
    reset
  end

  def draw
    reset if @cards.empty?
    @cards.pop
  end

  private

  def reset
    @cards = []

    RANKS.product(SUITS).map! do |rank, suit|
      @cards << Card.new(rank, suit)
    end

    @cards.shuffle!
  end
end

# class PokerHand
#   def initialize(deck)
#     @hand = []
#     5.times { @hand << deck.draw }
#   end

#   def print
#     puts @hand
#   end

#   def evaluate
#     case
#     when royal_flush?     then 'Royal flush'
#     when straight_flush?  then 'Straight flush'
#     when four_of_a_kind?  then 'Four of a kind'
#     when full_house?      then 'Full house'
#     when flush?           then 'Flush'
#     when straight?        then 'Straight'
#     when three_of_a_kind? then 'Three of a kind'
#     when two_pair?        then 'Two pair'
#     when pair?            then 'Pair'
#     else                       'High card'
#     end
#   end

#   private

#   def get_ranks
#     @hand.map { |card| card.value }
#   end

#   def get_suits
#     @hand.map { |card| card.suit }    
#   end

#   def royal_flush?
#     if flush? && straight?
#       return true if get_ranks.include?(14)
#     end
#     false
#   end

#   def straight_flush?
#     if flush?
#       return true if straight?
#     end
#     false
#   end

#   def four_of_a_kind?
#     hand_ranks_array = get_ranks
#     hand_ranks_array.each do |rank|
#       return true if hand_ranks_array.count(rank) == 4
#     end
#     false
#   end

#   def full_house?
#     hand_ranks_array = get_ranks
#     hand_ranks_array.uniq.size == 2
#   end

#   def flush?
#     hand_suits_array = get_suits
#     hand_suits_array.all? { |suit| suit == hand_suits_array.first}
#   end

#   def straight?
#     hand_ranks_array = get_ranks
#     hand_ranks_array.sort! == (hand_ranks_array.first..hand_ranks_array.last).to_a
#   end

#   def three_of_a_kind?
#     hand_ranks_array = get_ranks
#     hand_ranks_array.each do |rank|
#       return true if hand_ranks_array.count(rank) == 3
#     end
#     false
#   end

#   def two_pair?   
#     hand_ranks_array = get_ranks
#     hand_ranks_array.uniq.size == 3 
#   end

#   def pair?
#     hand_ranks_array = get_ranks
#     hand_ranks_array.uniq.size == 4
#   end
# end

# system 'clear'
# # hand = PokerHand.new(Deck.new)
# # hand.print
# # puts hand.evaluate

# Danger danger danger: monkey
# patching for testing purposes.
class Array
  alias_method :draw, :pop
end

# # Test that we can identify each PokerHand type.
# hand = PokerHand.new([
#   Card.new(10,      'Hearts'),
#   Card.new('Ace',   'Hearts'),
#   Card.new('Queen', 'Hearts'),
#   Card.new('King',  'Hearts'),
#   Card.new('Jack',  'Hearts')
#   ])
# puts hand.evaluate == 'Royal flush'

# hand = PokerHand.new([
#   Card.new(8,       'Clubs'),
#   Card.new(9,       'Clubs'),
#   Card.new('Queen', 'Clubs'),
#   Card.new(10,      'Clubs'),
#   Card.new('Jack',  'Clubs')
#   ])
# puts hand.evaluate == 'Straight flush'

# hand = PokerHand.new([
#   Card.new(3, 'Hearts'),
#   Card.new(3, 'Clubs'),
#   Card.new(5, 'Diamonds'),
#   Card.new(3, 'Spades'),
#   Card.new(3, 'Diamonds')
#   ])
# puts hand.evaluate == 'Four of a kind'

# hand = PokerHand.new([
#   Card.new(3, 'Hearts'),
#   Card.new(3, 'Clubs'),
#   Card.new(5, 'Diamonds'),
#   Card.new(3, 'Spades'),
#   Card.new(5, 'Hearts')
#   ])
# puts hand.evaluate == 'Full house'

# hand = PokerHand.new([
#   Card.new(10, 'Hearts'),
#   Card.new('Ace', 'Hearts'),
#   Card.new(2, 'Hearts'),
#   Card.new('King', 'Hearts'),
#   Card.new(3, 'Hearts')
#   ])
# puts hand.evaluate == 'Flush'

# hand = PokerHand.new([
#   Card.new(8,      'Clubs'),
#   Card.new(9,      'Diamonds'),
#   Card.new(10,     'Clubs'),
#   Card.new(7,      'Hearts'),
#   Card.new('Jack', 'Clubs')
#   ])
# puts hand.evaluate == 'Straight'

# hand = PokerHand.new([
#   Card.new(3, 'Hearts'),
#   Card.new(3, 'Clubs'),
#   Card.new(5, 'Diamonds'),
#   Card.new(3, 'Spades'),
#   Card.new(6, 'Diamonds')
#   ])
# puts hand.evaluate == 'Three of a kind'

# hand = PokerHand.new([
#   Card.new(9, 'Hearts'),
#   Card.new(9, 'Clubs'),
#   Card.new(5, 'Diamonds'),
#   Card.new(8, 'Spades'),
#   Card.new(5, 'Hearts')
#   ])
# puts hand.evaluate == 'Two pair'

# hand = PokerHand.new([
#   Card.new(2, 'Hearts'),
#   Card.new(9, 'Clubs'),
#   Card.new(5, 'Diamonds'),
#   Card.new(9, 'Spades'),
#   Card.new(3, 'Diamonds')
#   ])
# puts hand.evaluate == 'Pair'

# hand = PokerHand.new([
#   Card.new(2,      'Hearts'),
#   Card.new('King', 'Clubs'),
#   Card.new(5,      'Diamonds'),
#   Card.new(9,      'Spades'),
#   Card.new(3,      'Diamonds')
#   ])
# puts hand.evaluate == 'High card'


# # deck = Deck.new
# # drawn = []
# # 52.times { drawn << deck.draw }
# # p drawn.count { |card| card.rank == 5 } == 4
# # p drawn.count { |card| card.suit == 'Hearts' } == 13
# # # p drawn

# # drawn2 = []
# # 52.times { drawn2 << deck.draw }
# # p drawn != drawn2 # Almost always.


# # cards = [Card.new(2, 'Hearts'),
# #  Card.new(10, 'Diamonds'),
# #  Card.new('Ace', 'Clubs')]
# #  puts cards
# #  puts cards.min < Card.new(2, 'Spades')
# #  puts cards.min == Card.new(2, 'Hearts')
# #  puts cards.max == Card.new('Ace', 'Clubs')

# #  cards = [Card.new(5, 'Hearts')]
# #  puts cards.min == Card.new(5, 'Hearts')
# #  puts cards.max == Card.new(5, 'Hearts')

# #  cards = [Card.new(4, 'Hearts'),
# #    Card.new(4, 'Diamonds'),
# #    Card.new(10, 'Clubs')]
# #    puts cards.min.rank == 4
# #    puts cards.max == Card.new(10, 'Clubs')

# #    cards = [Card.new(7, 'Diamonds'),
# #      Card.new('Jack', 'Diamonds'),
# #      Card.new('Jack', 'Spades')]
# #      puts cards.min == Card.new(7, 'Diamonds')
# #      puts cards.max.rank == 'Jack'

# #      cards = [Card.new(8, 'Diamonds'),
# #        Card.new(8, 'Clubs'),
# #        Card.new(8, 'Spades')]
# #        puts cards.min.rank == 8
# #        puts cards.max.rank == 8

# class PokerHand
#   include Comparable 

#   attr_reader :rank_count

#   HAND_VALUES = ['High card', 'Pair', 'Two pair', 'Three of a kind', 'Straight', 'Flush', 'Full house', 'Four of a kind', 'Straight flush', 'Royal flush']
#   VALUES = {'Jack' => 11, 'Queen' => 12, 'King' => 13, 'Ace' => 14}


#   def initialize(cards)
#     @cards = []
#     @rank_count = Hash.new(0)

#     cards = choose_best_five(cards)

#     puts cards

#     5.times do
#       card = cards.shift
#       @cards << card
#       @rank_count[card.rank] += 1
#     end
#   end

#   def print
#     puts @cards
#   end

#   def evaluate
#     if    royal_flush?     then 'Royal flush'
#     elsif straight_flush?  then 'Straight flush'
#     elsif four_of_a_kind?  then 'Four of a kind'
#     elsif full_house?      then 'Full house'
#     elsif flush?           then 'Flush'
#     elsif straight?        then 'Straight'
#     elsif three_of_a_kind? then 'Three of a kind'
#     elsif two_pair?        then 'Two pair'
#     elsif pair?            then 'Pair'
#     else 'High card'
#     end
#   end

#   def self.pair?(cards)
#     rank_count = Hash.new(0)

#     5.times do
#       card = cards.draw
#       rank_count[card.rank] += 1
#     end

#     n_of_a_kind?(2, rank_count)
#   end

#   def <=>(other_hand)
#     return HAND_VALUES.index(evaluate) <=> HAND_VALUES.index(other_hand.evaluate) unless HAND_VALUES.index(evaluate) == HAND_VALUES.index(other_hand.evaluate)
#     if pair?
#       @rank_count.key(@rank_count.values.max) <=> other_hand.rank_count.key(other_hand.rank_count.values.max)
#     end
#   end

#   protected

#   def choose_best_five(cards)
#     cards.sort!.reverse!.take(5)
#   end

#   def flush?
#     suit = @cards.first.suit
#     @cards.all? { |card| card.suit == suit }
#   end

#   def straight?
#     return false if @rank_count.any? { |_, count| count > 1 }

#     @cards.min.value == @cards.max.value - 4
#   end

#   def self.n_of_a_kind?(number, rank_count)
#     rank_count.one? { |_, count| count == number }
#   end

#   def n_of_a_kind?(number)
#     @rank_count.one? { |_, count| count == number }
#   end

#   def straight_flush?
#     flush? && straight?
#   end

#   def royal_flush?
#     straight_flush? && @cards.min.rank == 10
#   end

#   def four_of_a_kind?
#     n_of_a_kind?(4)
#   end

#   def full_house?
#     n_of_a_kind?(3) && n_of_a_kind?(2)
#   end

#   def three_of_a_kind?
#     n_of_a_kind?(3)
#   end

#   def two_pair?
#     @rank_count.select { |_, count| count == 2 }.size == 2
#   end

#   def pair?
#     n_of_a_kind?(2)
#   end
# end

# # Danger danger danger: monkey
# # patching for testing purposes.
# class Array
#   alias_method :draw, :pop
# end

# hand1 = PokerHand.new([
#   Card.new(2, 'Hearts'),
#   Card.new(9, 'Clubs'),
#   Card.new(5, 'Diamonds'),
#   Card.new(9, 'Spades'),
#   Card.new(3, 'Diamonds'),
#   Card.new('Queen', 'Diamonds'),
#   Card.new('Ace', 'Diamonds')
#   ])

# # puts hand.evaluate == 'Pair'

# # hand2 = PokerHand.new([
# #   Card.new(3, 'Hearts'),
# #   Card.new(7, 'Clubs'),
# #   Card.new(10, 'Diamonds'),
# #   Card.new(10, 'Spades'),
# #   Card.new(6, 'Diamonds')
# #   ])

# # hand3 = PokerHand.new([
# #   Card.new(3, 'Hearts'),
# #   Card.new(3, 'Clubs'),
# #   Card.new(3, 'Diamonds'),
# #   Card.new(3, 'Spades'),
# #   Card.new(6, 'Diamonds')
# #   ])

# # p hand2 > hand1
# # p hand3 > hand2
# # puts hand.evaluate == 'Three of a kind'
