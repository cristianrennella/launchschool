# class Tree
#   include Enumerable

#   def each

#   end
# end

# def compute(value)
#   return 'Does not compute.' unless block_given?
#   yield(value)
# end

# p compute(2) { |value| 5 + 3 + value} == 10
# p compute('c') { |value|  'a' + 'b' + value } == 'abc'
# p compute('nothing') == 'Does not compute.'

# def missing(array)
#   complete_array = (array.first..array.last).to_a
#   complete_array.select { |value| !array.include?(value) }
# end

# p missing([-3, -2, 1, 5]) == [-1, 0, 2, 3, 4]
# p missing([1, 2, 3, 4]) == []
# p missing([1, 5]) == [2, 3, 4]
# p missing([6]) == []

# def divisors(value)
#   (1..value).select do |number|
#    value % number == 0
#  end
# end

# p divisors(1) == [1]
# p divisors(7) == [1, 7]
# p divisors(12) == [1, 2, 3, 4, 6, 12]
# p divisors(98) == [1, 2, 7, 14, 49, 98]
# p divisors(999962000357) == [1, 999979, 999983, 999962000357] # may take a minute

# ALPHABET = ('a'..'z').to_a

# def reverse_rot_13(str)
#   str.downcase.split.map do |word|
#     word.chars.map do |char|
#       next ' ' if ALPHABET.find_index(char) == nil
#       ALPHABET[ALPHABET.find_index(char)-13]
#     end.join('').capitalize
#   end.join(' ')
# end

# p reverse_rot_13('Nqn Ybirynpr')

# ENCRYPTED_PIONEERS = [
#   'Nqn Ybirynpr',
#   'Tenpr Ubccre',
#   'Nqryr Tbyqfgvar',
#   'Nyna Ghevat',
#   'Puneyrf Onoontr',
#   'Noqhyynu Zhunzznq ova Zhfn ny-Xujnevmzv',
#   'Wbua Ngnanfbss',
#   'Ybvf Unyog',
#   'Pynhqr Funaaba',
#   'Fgrir Wbof',
#   'Ovyy Tngrf',
#   'Gvz Orearef-Yrr',
#   'Fgrir Jbmavnx',
#   'Xbaenq Mhfr',
#   'Wbua Ngnanfbss',
#   'Fve Nagbal Ubner',
#   'Zneiva Zvafxl',
#   'Lhxvuveb Zngfhzbgb',
#   'Unllvz Fybavzfxv',
#   'Tregehqr Oynapu'
# ].freeze

# def rot13(encrypted_text)
#   encrypted_text.each_char.reduce('') do |result, encrypted_char|
#     result + decipher_character(encrypted_char)
#   end
# end

# def decipher_character(encrypted_char)
#   case encrypted_char
#   when 'a'..'m', 'A'..'M' then (encrypted_char.ord + 13).chr
#   when 'n'..'z', 'N'..'Z' then (encrypted_char.ord - 13).chr
#   else                         encrypted_char
#   end
# end

# ENCRYPTED_PIONEERS.each do |encrypted_name|
#   puts rot13(encrypted_name)
# end

# def any?(array)
#   array.each { |value| return true if yield(value) }
#   false
# end

# p any?([1, 3, 5, 6]) { |value| value.even? } == true
# p any?([1, 3, 5, 7]) { |value| value.even? } == false
# p any?([2, 4, 6, 8]) { |value| value.odd? } == false
# p any?([1, 3, 5, 7]) { |value| value % 5 == 0 } == true
# p any?([1, 3, 5, 7]) { |value| true } == true
# p any?([1, 3, 5, 7]) { |value| false } == false
# p any?([]) { |value| true } == false

# def all?(array)
#   array.each { |value| return false unless yield(value) }
#   true
# end

# p all?([1, 3, 5, 6]) { |value| value.odd? } == false
# p all?([1, 3, 5, 7]) { |value| value.odd? } == true
# p all?([2, 4, 6, 8]) { |value| value.even? } == true
# p all?([1, 3, 5, 7]) { |value| value % 5 == 0 } == false
# p all?([1, 3, 5, 7]) { |value| true } == true
# p all?([1, 3, 5, 7]) { |value| false } == false
# p all?([]) { |value| false } == true

# def none?(array)
#   array.each { |value| return false if yield(value)}
#   true
# end

# p none?([1, 3, 5, 6]) { |value| value.even? } == false
# p none?([1, 3, 5, 7]) { |value| value.even? } == true
# p none?([2, 4, 6, 8]) { |value| value.odd? } == true
# p none?([1, 3, 5, 7]) { |value| value % 5 == 0 } == false
# p none?([1, 3, 5, 7]) { |value| true } == false
# p none?([1, 3, 5, 7]) { |value| false } == true
# p none?([]) { |value| true } == true

# def one?(array)
#   array.count { |value| yield(value) } == 1
# end

# p one?([1, 3, 5, 6]) { |value| value.even? }    # -> true
# p one?([1, 3, 5, 7]) { |value| value.odd? }     # -> false
# p one?([2, 4, 6, 8]) { |value| value.even? }    # -> false
# p one?([1, 3, 5, 7]) { |value| value % 5 == 0 } # -> true
# p one?([1, 3, 5, 7]) { |value| true }           # -> false
# p one?([1, 3, 5, 7]) { |value| false }          # -> false
# p one?([]) { |value| true }                     # -> false

# def count(array)
#   count = 0
#   0.upto(array.size - 1) do |idx|
#      count += 1 if yield(array[idx])
#   end
#   count
# end

# p count([1,2,3,4,5]) { |value| value.odd? } == 3
# p count([1,2,3,4,5]) { |value| value % 3 == 1 } == 2
# p count([1,2,3,4,5]) { |value| true } == 5
# p count([1,2,3,4,5]) { |value| false } == 0
# p count([]) { |value| value.even? } == 0
# p count(%w(Four score and seven)) { |value| value.size == 5 } == 2

# def step(start, stop, interval)
#   while start <= stop
#     yield(start)
#     start += interval
#   end
# end

# step(1, 10, 3) { |value| puts "value = #{value}" }

# create a method that takes 2 parameters
# create a new empty array
# iterate throught the first array with index
# create a new inner array and assign the value of both arrays 
# assign the inner array to the outter array

# def zip(array1, array2)
#   result = []

#   array1.each_with_index do |value, idx|
#     inner_array = []
#     inner_array << value
#     inner_array << array2[idx]
#     result << inner_array
#   end

#   result
# end

# p zip([1, 2, 3], [4, 5, 6]) == [[1, 4], [2, 5], [3, 6]]

# def map(array)
#   result = []

#   array.each do |value|
#     result << yield(value)
#   end

#   result
# end

# p map([1, 3, 6]) { |value| value**2 } == [1, 9, 36]
# p map([]) { |value| true } == []
# p map(['a', 'b', 'c', 'd']) { |value| false } == [false, false, false, false]
# p map(['a', 'b', 'c', 'd']) { |value| value.upcase } == ['A', 'B', 'C', 'D']
# p map([1, 3, 4]) { |value| (1..value).to_a } == [[1], [1, 2, 3], [1, 2, 3, 4]]

# def count(*values)
#   count = 0
#   values.each { |value| count += 1 if yield(value) }
#   count
# end

# p count(1, 3, 6) { |value| value.odd? } == 2
# p count(1, 3, 6) { |value| value.even? } == 1
# p count(1, 3, 6) { |value| value > 6 } == 0
# p count(1, 3, 6) { |value| true } == 3
# p count() { |value| true } == 0
# p count(1, 3, 6) { |value| value - 6 } == 3

# Iterate throught the array until I find the first false
# Then save the rest in a collection and return

# def drop_while(array)
#   result = []
#   first_false_found = false

#   array.each do |value|
#     first_false_found = true unless yield(value)
#     result << value if first_false_found
#   end

#   result
# end

# p drop_while([1, 3, 5, 6]) { |value| value.odd? } == [6]
# p drop_while([1, 3, 5, 6]) { |value| value.even? } == [1, 3, 5, 6]
# p drop_while([1, 3, 5, 6]) { |value| true } == []
# p drop_while([1, 3, 5, 6]) { |value| false } == [1, 3, 5, 6]
# p drop_while([1, 3, 5, 6]) { |value| value < 5 } == [5, 6]
# p drop_while([]) { |value| true } == []

# def each_with_index(array)
#   idx = 0

#   while idx < array.size
#     yield(array[idx], idx)
#     idx += 1
#   end

#   array
# end

# result = each_with_index([1, 3, 6]) do |value, index|
#   puts "#{index} -> #{value**index}"
# end

# puts result == [1, 3, 6]

# def each_with_object(array, object)
#   array.each do |value|
#     yield(value, object)
#   end
#   object
# end

# result = each_with_object([1, 3, 5], []) do |value, list|
#   list << value**2
# end
# p result == [1, 9, 25]

# result = each_with_object([1, 3, 5], []) do |value, list|
#   list << (1..value).to_a
# end
# p result == [[1], [1, 2, 3], [1, 2, 3, 4, 5]]

# result = each_with_object([1, 3, 5], {}) do |value, hash|
#   hash[value] = value**2
# end
# p result == { 1 => 1, 3 => 9, 5 => 25 }

# result = each_with_object([], {}) do |value, hash|
#   hash[value] = value * 2
# end
# p result == {}

# def max_by(array)
#   max_value_idx = 0
#   array.each_with_index do |value, idx|
#     max_value_idx = idx if yield(value) > yield(array[max_value_idx])
#   end
#   array[max_value_idx]
# end

# p max_by([1, 5, 3]) { |value| value + 2 } == 5
# p max_by([1, 5, 3]) { |value| 9 - value } == 1
# p max_by([1, 5, 3]) { |value| (96 - value).chr } == 1
# p max_by([[1, 2], [3, 4, 5], [6]]) { |value| value.size } == [3, 4, 5]
# p max_by([-7]) { |value| value * 3 } == -7
# p max_by([]) { |value| value + 5 } == nil

# def each_cons(array)
#   array.each_with_index do |value, idx| 
#     yield(value, array[idx + 1]) unless idx + 1 == array.size
#   end
#   nil
# end

# hash = {}
# result = each_cons([1, 3, 6, 10]) do |value1, value2|
#   hash[value1] = value2
# end

# p result == nil
# p hash == { 1 => 3, 3 => 6, 6 => 10 }

# hash = {}
# each_cons([]) do |value1, value2|
#   hash[value1] = value2
# end
# p hash == {}

# hash = {}
# each_cons(['a', 'b']) do |value1, value2|
#   hash[value1] = value2
# end
# p hash == {'a' => 'b'}

# def each_cons(array, consecutives)
#   array[0..-consecutives].each_index { |idx| yield(*array[idx...idx + consecutives]) }
# end

# hash = {}
# each_cons([1, 3, 6, 10], 1) do |value|
#   hash[value] = true
# end
# p hash == { 1 => true, 3 => true, 6 => true, 10 => true }

# hash = {}
# each_cons([1, 3, 6, 10], 2) do |value1, value2|
#   hash[value1] = value2
# end
# p hash == { 1 => 3, 3 => 6, 6 => 10 }

# hash = {}
# each_cons([1, 3, 6, 10], 3) do |value1, *values|
#   hash[value1] = values
# end
# p hash == { 1 => [3, 6], 3 => [6, 10] }

# hash = {}
# each_cons([1, 3, 6, 10], 4) do |value1, *values|
#   hash[value1] = values
# end
# p hash == { 1 => [3, 6, 10] }

# hash = {}
# each_cons([1, 3, 6, 10], 5) do |value1, *values|
#   hash[value1] = values
# end
# p hash == {}

# class Device
#   def initialize
#     @recordings = []
#   end

#   def record(recording)
#     @recordings << recording
#   end

#   def listen
#     record(yield) if block_given?
#   end

#   def play
#     puts @recordings.last
#   end
# end

# listener = Device.new
# listener.listen { "Hello World!" }
# listener.listen
# listener.play # Outputs "Hello World!"

# class TextAnalyzer
#   def process
#     my_file = File.read("my_file.txt")
#     yield(my_file)
#   end
# end

# analyzer = TextAnalyzer.new
# analyzer.process { |file| puts "Lines: #{file.lines.count}" }
# analyzer.process { |file| puts "Words: #{file.lines.inject(0) { |sum, line| sum + line.split(' ').count }}" }
# analyzer.process do |file| 
#   file.lines.delete_if { |line| line == ""}
#   puts file.lines.count
# end

# 3 paragraphs
# 25 lines
# 306 words

# class TextAnalyzer
#   def process
#     file = File.open('my_file.txt', 'r')
#     yield(file.read)
#     file.close
#   end
# end

# analyzer = TextAnalyzer.new
# analyzer.process { |text| puts "#{text.split("\n\n").count} paragraphs" }
# analyzer.process { |text| puts "#{text.split("\n").count} lines" }
# analyzer.process { |text| puts "#{text.split(' ').count} words" }

# items = ['apples', 'corn', 'cabbage', 'wheat']

# def gather(items)
#   puts "Let's start gathering food."
#   yield(items)
#   puts "Let's start gathering food."
# end

# count = 1
# gather(items) do |items|
#   items.each do |item|
#     puts "#{count}: #{item}"
#     count += 1
#   end
# end

# def birds_method(*birds)
#   yield(*birds)
# end

# birds_method('raven', 'finch', 'hawk', 'eagle') do |_,_,*birds|
#   puts "#{birds.first} and #{birds.last}"
# end

# items = ['apples', 'corn', 'cabbage', 'wheat']

# def gather(items)
#   puts "Let's start gathering food."
#   yield(items)
#   puts "We've finished gathering!"
# end

# gather(items) do |*items, item|
#   puts items.join(', ')
#   puts item
# end

# gather(items) do |item1, *items, item2|
#   puts item1
#   puts items.join(', ')
#   puts item2
# end

# gather(items) do |item, *items|
#   puts item
#   puts items.join(', ')
# end

# gather(items) do |item1, item2, item3, item4|
#  puts "#{item1}, #{item2}, #{item3}, and #{item4}"
# end

# Let's start gathering food.
# apples, corn, cabbage, and wheat
# We've finished gathering!

# Group 1
# my_proc = proc { |thing| puts "This is a #{thing}." }
# puts my_proc
# puts my_proc.class
# my_proc.call
# my_proc.call('cat')

# Group 2
# my_lambda = lambda { |thing| puts "This is a #{thing}" }
# my_second_lambda = -> (thing) { puts "This is a #{thing}" }
# puts my_lambda
# puts my_second_lambda
# puts my_lambda.class
# my_lambda.call('dog')
# my_lambda.call('cat')
# my_third_lambda = Lambda.new { |thing| puts "This is a #{thing}" }

# Group 3
# def block_method_1(animal)
#   yield
# end

# block_method_1('seal') { |seal| puts "This is a #{seal}."}
# block_method_1('seal')

# Group 4
# def block_method_2(animal)
#   yield(animal)
# end

# block_method_2('turtle') { |turtle| puts "This is a #{turtle}."}
# block_method_2('turtle') do |turtle, seal|
#   puts "This is a #{turtle} and a #{seal}."
# end
# block_method_2('turtle') { puts "This is a #{animal}."}

# Group 1
# def check_return_with_proc
#   my_proc = proc { return }
#   my_proc.call
#   puts "This will never output to screen."
# end

# check_return_with_proc

# Group 2
# my_proc = proc { return }

# def check_return_with_proc_2(my_proc)
#   my_proc.call
# end

# check_return_with_proc_2(my_proc)

# Group 3
# def check_return_with_lambda
#   my_lambda = lambda { return }
#   my_lambda.call
#   puts "This will be output to screen."
# end

# check_return_with_lambda

# Group 4
# my_lambda = lambda { return }
# def check_return_with_lambda(my_lambda)
#   my_lambda.call
#   puts "This will be output to screen."
# end

# check_return_with_lambda(my_lambda)

# Group 5
# def block_method_3
#   yield
# end

# block_method_3 { return }

# def convert_to_base_8(n)
#   n.to_s(8).to_i # replace these two method calls
# end

# # The correct type of argument must be used below
# base8_proc = method(:convert_to_base_8).to_proc

# # We'll need a Proc object to make this code work. Replace `a_proc`
# # with the correct object
# p [8,10,12,14,16,33].map(&base8_proc)

# # [10, 12, 14, 16, 20, 41]

# Create a new Enumerator object. 
# Define what values are iterated upon. 
# Iterate over an infinite list of factorials. 
# Test it out by printing out the first 7 factorial values, starting with zero factorial.
# Print the first 7 factorials by using an "External Iterator". 
# Reset your Enumerator. 
# Reprint those same 7 factorials using your Enumerator object as an "Internal Iterator".

# e = [1,2,3,4,5,6,7].each

# factorials = []

# factorials << 0
# factorials << e.next
# factorials << e.next * factorials[-1]   
# factorials << e.next * factorials[-1]   
# factorials << e.next * factorials[-1]
# factorials << e.next * factorials[-1]
# factorials << e.next * factorials[-1]   
# factorials << e.next * factorials[-1]

# p factorials

# factorials = Enumerator.new do |y|
#   factorials_array = []
#   y << 0
#   factorials_array << 0
#   y << 1
#   factorials_array << 1
#   a = 2
#   loop do
#     factorials_array << a * factorials_array[-1]
#     y << factorials_array[-1]
#     a += 1
#   end
# end

# 7.times { puts factorials.next }

# factorial = Enumerator.new do |yielder|
#   accumulator = 1
#   number = 0
#   loop do
#     accumulator = number.zero? ? 1 : accumulator * number
#     yielder << accumulator
#     number += 1
#   end
# end

# 7.times { puts factorial.next }

# factorial.rewind

# factorial.each_with_index do |number, index|
#   puts number
#   break if index == 6
# end

# def bubble_sort!(array)
#   loop do
#     swapped = false
#     1.upto(array.size - 1) do |index|
#       if block_given?
#         next if yield(array[index - 1], array[index])
#       else
#         next if array[index - 1] <= array[index]
#       end
#       array[index - 1], array[index] = array[index], array[index - 1]
#       swapped = true
#     end

#     break unless swapped
#   end
#   nil
# end

# array = [5, 3]
# bubble_sort!(array)
# p array == [3, 5]

# array = [5, 3, 7]
# bubble_sort!(array) { |first, second| first >= second }
# p array == [7, 5, 3]

# array = [6, 2, 7, 1, 4]
# bubble_sort!(array)
# p array == [1, 2, 4, 6, 7]

# array = [6, 12, 27, 22, 14]
# bubble_sort!(array) { |first, second| (first % 7) <= (second % 7) }
# p array == [14, 22, 12, 6, 27]

# array = %w(sue Pete alice Tyler rachel Kim bonnie)
# bubble_sort!(array)
# p array == %w(Kim Pete Tyler alice bonnie rachel sue)

# array = %w(sue Pete alice Tyler rachel Kim bonnie)
# bubble_sort!(array) { |first, second| first.downcase <= second.downcase }
# p array == %w(alice bonnie Kim Pete rachel sue Tyler)

def bubble_sort!(array)
  loop do
    swapped = false
    1.upto(array.size - 1) do |index|
      value1, value2 = yield(array[index - 1]), yield(array[index]) if block_given?
      next if value1 <= value2
      array[index - 1], array[index] = array[index], array[index - 1]
      swapped = true
    end

    break unless swapped
  end
  nil
end

array = %w(sue Pete alice Tyler rachel Kim bonnie)
bubble_sort!(array) { |value| value.downcase }
p array == %w(alice bonnie Kim Pete rachel sue Tyler)
