# module Speed
#   def go_fast
#     puts "I am a #{self.class} and going super fast!"
#   end
# end

# class Car
#   include Speed
#   def go_slow
#     puts "I am safe and driving slow."
#   end
# end

# class Truck
#   def go_very_slow
#     puts "I am a heavy truck and like going very slow."
#   end
# end

# Car.new.go_fast

# class AngryCat
#   def hiss
#     puts "Hisssss!!!"
#   end
# end

# angry_cat = AngryCat.new
# angry_cat.hiss

# class Fruit
#   def initialize(name)
#     name = name
#   end

#   def get_name
#     @name
#   end
# end

# class Pizza
#   def initialize(name)
#     @name = name
#   end

#   def get_name
#     @name
#   end
# end

# fruit = Fruit.new('banana')
# p fruit.get_name

# pizza = Pizza.new('provolone')
# p pizza.get_name

# class Cube
#   # attr_reader :volume
#   def initialize(volume)
#     @volume = volume
#   end

#   def get_volume
#     @volume
#   end
# end

# cube = Cube.new(5)
# p cube.get_volume

# puts cube

# class Cat
#   attr_accessor :type, :age

#   def initialize(type)
#     @type = type
#     @age  = 0
#   end

#   def age
#     @age += 10
#   end

#   def make_one_year_older
#     self.age += 1
#   end
# end

# my_cat = Cat.new('grey')
# p my_cat.make_one_year_older

# # p my_cat.age

# class Oracle
#   def predict_the_future
#     "You will " + choices.sample
#   end

#   def choices
#     ["eat a nice lunch", "take a nap soon", "stay at work late"]
#   end
# end

# oracle = Oracle.new
# p oracle.predict_the_future

# class Cat
#   attr_reader :type

#   def initialize(type)
#     @type = type
#   end

#   def to_s
#     type
#   end

# end

# teddy = Cat.new('japanese teddy')
# puts "I am a #{teddy} Cat"

# require 'pry'

# class InvoiceEntry
#   attr_accessor :quantity, :product_name

#   def initialize(product_name, number_purchased)
#     @quantity = number_purchased
#     @product_name = product_name
#   end

#   def update_quantity(updated_count)
#     # prevent negative quantities from being set
#     binding.pry
#     self.quantity = updated_count if updated_count >= 0
#   end
# end

# invoice = InvoiceEntry.new('iphone', 5)
# p invoice.quantity
# invoice.update_quantity(1)
# p invoice.quantity

# class Greeting
#   def greet(message)
#     puts message
#   end
# end

# class Hi < Greeting
#   def hello
#     greet("Hello")
#   end
# end

# class GoodBye < Greeting
#   def bye
#     greet("Bye Bye!")
#   end
# end

# hi = Hi.new
# hi.hello

# bye = GoodBye.new
# bye.bye

# class KrispyKreme
#   def initialize(filling_type, glazing)
#     @filling_type = filling_type
#     @glazing = glazing
#   end

#   def to_s
#     case 
#     when !@filling_type && !@glazing
#       "Plain"
#     when !@glazing
#      @filling_type
#    when !@filling_type
#      "Plain with #{@glazing}"
#    else
#      "#{@filling_type} with #{@glazing}"
#    end
#  end
# end

# donut1 = KrispyKreme.new(nil, nil)
# donut2 = KrispyKreme.new("Vanilla", nil)
# donut3 = KrispyKreme.new(nil, "sugar")
# donut4 = KrispyKreme.new(nil, "chocolate sprinkles")
# donut5 = KrispyKreme.new("Custard", "icing")

# puts donut1
#   # => "Plain"

#   puts donut2
#   # => "Vanilla"

#   puts donut3
#   # => "Plain with sugar"

#   puts donut4
#   # => "Plain with chocolate sprinkles"

#   puts donut5
#   # => "Custard with icing"

# class Computer
#   attr_accessor :template

#   def create_template
#     @template = "template 14231"
#   end

#   def show_template
#     template
#   end
# end

# comp = Computer.new
# p comp.create_template
# p comp.show_template

# class Light
#   attr_accessor :brightness, :color

#   def initialize(brightness, color)
#     @brightness = brightness
#     @color = color
#   end

#   def self.light_information
#     "I want to turn on the light with a brightness level of super high and a colour of green"
#   end
# end

module Moveable
  attr_accessor :speed, :heading
  attr_writer :fuel_capacity, :fuel_efficiency

  def range
    @fuel_capacity * @fuel_efficiency
  end
end

class WheeledVehicle
  def initialize(tire_array, km_traveled_per_liter, liters_of_fuel_capacity)
    @tires = tire_array
    self.fuel_efficiency = km_traveled_per_liter
    self.fuel_capacity = liters_of_fuel_capacity
  end

  def tire_pressure(tire_index)
    @tires[tire_index]
  end

  def inflate_tire(tire_index, pressure)
    @tires[tire_index] = pressure
  end

end

class Auto < WheeledVehicle
  def initialize
    # 4 tires are various tire pressures
    super([30,30,32,32], 50, 25.0)
  end
end

class Motorcycle < WheeledVehicle
  def initialize
    # 2 tires are various tire pressures
    super([20,20], 80, 8.0)
  end
end

class Catamaran
  attr_accessor :propeller_count, :hull_count

  include Moveable

  def initialize(num_propellers, num_hulls, km_traveled_per_liter, liters_of_fuel_capacity)
    # ... code omitted ...
  end
end