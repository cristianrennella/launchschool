# count = 1

# loop do
#   puts count.even? ? "#{count} is Odd!" : "#{count} is Even!"
#   break if count == 5
#   count += 1
# end

# loop do
#   number = rand(100)
#   puts number
#   break if number.between?(1, 10)
# end

# loop do
#   puts 'What does 2 + 2 equal?'
#   answer = gets.chomp.to_i
#   if answer == 4
#     puts "That is correct!."
#     break
#   else
#     puts "Wrong answer. Try again!"
#   end
# end

# numbers = []

# loop do
#   puts 'Enter any number:'
#   input = gets.chomp.to_i
#   numbers.push(input)
#   break if numbers.size == 5
# end

# puts numbers.inspect

# names = ['Sally', 'Joe', 'Lisa', 'Henry']

# loop do
#   puts names.shift
#   break if names.empty?
# end

# 5.times do |index|
#   puts index
#   break if index == 2
# end

# 5.times do |index|
#   puts index
#   break if index == 4
# end

# 5.times do |index|
#   puts index
#   break if index < 7
# end

# number = 0

# until number == 10
#   number += 1
#   next if number.odd?
#   puts number
# end

# number_a = 0
# number_b = 0

# loop do
#   number_a += rand(2)
#   number_b += rand(2)

#   next unless number_a == 5 || number_b == 5

#   puts "5 was reached!"
#   break
# end

# def greeting
#   puts 'Hello!'
# end

# number_of_greetings = 2

# while number_of_greetings > 0
#   greeting
#   number_of_greetings -= 1
# end

# puts ">> Type anything you want:"
# input = gets.chomp

# puts input

# puts "What is your age in years?"
# input = gets.chomp.to_i

# puts "Your age in months is: #{input * 12}"

# loop do
#   puts ">> Do you want me to print something? (y/n)"
#   input = gets.chomp.downcase
#   puts "something" if input == 'y'
#   break if %w(y n).include?(input)
#   puts ">> Invalid input! Please enter y or n."
# end

# number_of_lines = 0
# loop do

#   loop do
#     puts ">> How many output lines do you want? \ 
#     Enter a number >= 3 (Q to quit):"
#     number_of_lines = gets.chomp
#     break if number_of_lines == 'Q' || number_of_lines.to_i >= 3
#     puts ">> That's not enough lines."
#   end

#   break if number_of_lines == 'Q'

#   number_of_lines.to_i.times do
#     puts "Launch School is the best!"
#   end
# end

# USER = "cris"
# PASSWORD = "soyyo"

# loop do
#   puts ">> Please enter your user: "
#   user_input = gets.chomp
#   puts ">> Please enter your password: "
#   password_input = gets.chomp
#   break if user_input == USER && password_input == PASSWORD
#   puts ">> Authorization failed!"
# end

# puts "Welcome!"

# def valid_number?(number_string)
#   number_string.to_i.to_s == number_string
# end

# first_number = nil
# second_number = nil

# loop do
#   puts ">> Please enter 2 numbers: "
#   first_number = gets.chomp
#   second_number = gets.chomp
#   break if valid_number?(first_number) && valid_number?(second_number) && second_number.to_i != 0
#   puts "Enter valid numbers and the second number could not be 0."
# end

# puts first_number.to_i / second_number.to_i

# def valid_number?(number_string)
#   number_string.to_i.to_s == number_string && number_string.to_i != 0
# end

# def read_number
#   loop do
#     puts ">> Please enter a positive or negative integer:"
#     number = gets.chomp
#     return number.to_i if valid_number?(number)
#     puts ">> Only valid numbers allowed. Try again."
#   end
# end

# loop do
#   first_number = read_number
#   second_number = read_number
#   unless ((first_number > 0 && second_number < 0)) || ((first_number < 0) && (second_number > 0))
#     puts ">> Sorry. One integer must be positive, one must be negative. Please start over."
#     next
#   end
#   puts "#{first_number} + #{second_number} = #{first_number.to_i+second_number.to_i}"
#   break
# end

# def hello
#   "Hello"
# end

# def world
#   "World"
# end

# puts hello + world

# def hello
#   'Hello'
# end

# def world
#   'World'
# end

# def greet
#   "#{hello} #{world}"
# end

# puts greet

# def car(brand, model)
#   "Brand: #{brand} and model: #{model}"
# end

# puts car('Toyota', 'Corolla')

# def time_of_day(daylight)
#   puts daylight ? "It's daytime!" : "It is nightime!"
# end

# daylight = [true, false].sample
# time_of_day(daylight)

# def dog(name)
#   return name
# end

# def cat(name)
#   return name
# end

# puts "The dog's name is #{dog('Spot')}."
# puts "The cat's name is #{cat('Singer')}."

# def assign_name(name='Bob')
#   return name
# end

# puts assign_name == 'Bob'
# puts assign_name('Kevin') == 'Kevin'

# def add(a,b)
#   return a + b
# end

# def multiply(a,b)
#   return a * b
# end

# puts add(2, 2) == 4
# puts add(5, 4) == 9
# puts multiply(add(2, 2), add(5, 4)) == 36

# def name(array)
#   array.sample
# end

# def activity(array)
#   array.sample
# end

# def sentence(name, activity)
#   "#{name} went #{activity} today!"
# end

# names = ['Dave', 'Sally', 'George', 'Jessica']
# activities = ['walking', 'running', 'cycling']

# puts sentence(name(names), activity(activities))

# def print_me
#   "I'm printing within the method!"
# end

# puts print_me

# sun = ['visible', 'hidden'].sample

# puts "The sun is so bright!" if sun == 'visible'

# puts "The clouds are blocking the sun!" unless sun == 'visible'

# puts "The sun is so bright!" if sun == 'visible'
# puts "The clouds are blocking the sun!" unless sun == 'visible'

# boolean = [true, false].sample

# boolean ? puts("I'm True!") : puts("I'm False!")

# stoplight = ['green', 'yellow', 'red'].sample

# case stoplight
# when 'green'
#   puts 'go'
# when 'yellow'
#   puts 'slow down'
# when 'red'
#   puts 'stop'
# end

# status = ['awake', 'tired'].sample

# result = if status == 'awake'
#   "Be productive!"
# else
#   "Go to sleep!"
# end

# puts result

# stoplight = ['green', 'yellow', 'red'].sample

# case stoplight
# when 'green'  then puts 'Go!'
# when 'yellow' then puts 'Slow down!'
# else               puts 'Stop!'
# end

# my_string = ""
# my_string = String.new

# puts "It's now 12 o'clock."

# name = 'Roger'

# puts name.casecmp('RoGeR') == 0
# puts name.casecmp('DAVE') == 0
# puts name.casecmp('roges')
# puts name.casecmp('rogez')

# state = 'tExAs'

# puts state.capitalize!

# greeting = 'Hello!'
# greeting = 'Goodbye!'
# puts greeting

# alphabet = 'abcdefghijklmnopqrstuvwxyz'
# puts alphabet.split('')

# words = 'car human elephant airplane'
# words.split(' ').each {|word| puts word + 's' }

# colors = 'blue pink yellow orange'
# puts colors.split(' ').include?('yellow')
# puts colors.split(' ').include?('purple')

# user_input = gets.chomp.downcase
# puts 'yes yeah'.include?(user_input)

# user_input = gets.chomp.downcase
# puts user_input.include?('yes')

# pets = ['cat', 'dog', 'fish', 'lizard']

# my_pets = pets[2, 3]

# my_pets.pop

# puts my_pets.inspect

# # puts "I have a pet #{my_pets[0]} and a pet #{my_pets[1]}!"

# pets = ['cat', 'dog', 'fish', 'lizard']
# my_pets = pets[2..3]
# my_pets.pop

# my_pets.push(pets[1])
# puts my_pets.inspect

# colors = ['red', 'yellow', 'purple', 'green']

# colors.each { |color| puts "I'm color #{color}!."}

# numbers = [1, 2, 3, 4, 5]

# double_numbers = numbers.map { |number| number * 2}

# p double_numbers

# numbers = [5, 9, 21, 26, 39]

# divisible_by_three = numbers.select { |number| number % 3 == 0 }

# p divisible_by_three

# array1 = [1, 5, 9]
# array2 = [1, 9, 5]

# puts array1 == array2 ? 'match!' : 'not match!'

# type  color mileage
# sedan blue  80_000

# car = {type: 'sedan', color: 'blue', mileage: 80_000}

# car[:year] = 2003

# car.delete(:mileage)

# color = car[:color]
# puts color

# p car

# numbers = {
#   high:   100,
#   medium: 50,
#   low:    10
# }

# numbers.each { |key, value| puts "A #{key} number is #{value}."}

# half_numbers = numbers.map { |key, value| value / 2 }

# p half_numbers

# low_numbers = numbers.select! { |key, value| value < 25 }

# p numbers
# p low_numbers

car = {
  car: {type: 'sedan', color: 'blue', year: 2003}, 
  truck: {type: 'pickup', color: 'red', year: 1998}
}

