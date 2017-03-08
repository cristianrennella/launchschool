# def repeat(msj, number)
#   number.times do
#     puts msj
#   end  
# end

# repeat('Hello', 3)

# def is_odd?(number)
#   number % 2 == 1
# end

# puts is_odd?(2)    # => false
# puts is_odd?(5)    # => true
# puts is_odd?(-17)  # => true
# puts is_odd?(-8)   # => false

# def digit_list(number)
#   return number.to_s.chars.map(&:to_i)
# end

# puts digit_list(12345) == [1, 2, 3, 4, 5]
# puts digit_list(7) == [7]
# puts digit_list(375290) == [3, 7, 5, 2, 9, 0]
# puts digit_list(444) == [4, 4, 4]

# def count_occurrences(vehicles)
#   loop do
#     break if vehicles.empty?
#     puts "#{vehicles[0]} => #{vehicles.count(vehicles[0])}"
#     vehicles.delete(vehicles[0])
#   end
# end

# def count_occurrences(array)
#   ocurrences = {}

#   array.uniq.each do |word|
#     ocurrences[word] = array.count(word)
#   end

#   ocurrences.each do |word, count| 
#     puts "#{word} => #{count}"
#   end
# end

# vehicles = ['car', 'car', 'truck', 'car', 'SUV', 'truck', 'motorcycle', 'motorcycle', 'car', 'truck']

# count_occurrences(vehicles)

# # car => 4
# # truck => 3
# # SUV => 1
# # motorcycle => 2

# def reverse_sentence(string)
#   array_to_reverse = string.split(' ')
#   reversed_array = []
#   iteration = 0

#   loop do
#     reversed_array.push(array_to_reverse.pop)
#     break if array_to_reverse.empty?
#   end

#   p reversed_array.join(' ')
# end

# puts reverse_sentence('') == ''
# puts reverse_sentence('Hello World') == 'World Hello'
# puts reverse_sentence('Reverse these words') == 'words these Reverse'

# def reverse_words(string)
#   reversed_array = string.split

#   reversed_array.map! do |value|
#     value.size >= 5 ? value.reverse : value
#   end

#   reversed_array.join(' ')
# end

# def reverse_words(string)
#   words = []

#   string.split.each do |value|
#     value.reverse! if value.size >= 5
#     words << value
#   end

#   words.join(' ')
# end

# puts reverse_words('Professional')          # => lanoisseforP
# puts reverse_words('Walk around the block') # => Walk dnuora the kcolb
# puts reverse_words('Launch School')         # => hcnuaL loohcS

# def stringy(number)
#   array = ['1']

#   (number - 1).times do
#     array.last == '1' ? array.push('0') : array.push('1')
#   end

#   array.join
# end

# def stringy(size, start = 1)
#   numbers = []

#   size.times do |index|
#     if start == 1
#       number = index.even? ? 1 : 0
#     else
#       number = index.odd? ? 1 : 0
#     end

#     numbers << number
#   end

#   p numbers.join
# end

# puts stringy(6) == '101010'
# puts stringy(9, 0) == '101010101'
# puts stringy(4) == '1010'
# puts stringy(7, 0) == '1010101'

# def average(array)
#   array.inject(:+) / array.count 
# end

# puts average([1, 5, 87, 45, 8, 8]) == 25
# puts average([9, 47, 23, 95, 16, 52]) == 40

# def sum(number)
#   sum = 0

#   number.to_s.chars.each do |number|
#    sum += number.to_i
#  end

#  sum
# end

# puts sum(23) == 5
# puts sum(496) == 19
# puts sum(123_456_789) == 45

# def calculate_bonus(salary, bonus = true)
#   bonus ? (salary / 2) : 0
# end

# puts calculate_bonus(2800, true) == 1400
# puts calculate_bonus(1000, false) == 0
# puts calculate_bonus(50000, true) == 25000

# def how_old?
#   rand(20..200)
# end

# puts "Teddy is #{how_old?} years old!"

# SQMETERS_TO_SQFEETS = 10.7639

# def calculate_square_meters(length, width)
#   length * width
# end

# def calculate_square_feet(length, width)
#   calculate_square_meters(length, width) * SQMETERS_TO_SQFEETS
# end

# puts "Enter the length of the room in meters:"
# length = gets.chomp.to_f

# puts "Enter the width of the room in meters:"
# width = gets.chomp.to_f

# meters = calculate_square_meters(length, width).round(2)
# feets = calculate_square_feet(length, width).round(2)

# puts "The area of the room is #{meters} square meters (#{feets} square feet)."

# puts "What is the bill?"
# bill_amount = gets.chomp.to_f

# puts "What is the tip percentage?"
# tip_percentage = gets.chomp.to_f

# tip_amount = (bill_amount * (tip_percentage / 100)).round(2)
# bill_total = (bill_amount + tip_amount).round(2)

# puts "The tip is #{tip_amount}"
# puts "The total is #{format('%0.2f', bill_total)}"
# puts "The total is %0.2f" % [bill_total]
# puts "The total is #{bill_total}"

# puts "What is your age?"
# age = gets.chomp.to_i

# puts "At what age would you like to retire?"
# retire = gets.chomp.to_i

# year = Time.now.year

# years_to_work = retire - age
# year_of_retirement = year + years_to_work

# puts "It's 2017. You will retire in #{year_of_retirement}.
# You have only #{years_to_work} years of work to go!"

# puts "What is your name?"
# user_name = gets.chomp

# good_answer = "Hello #{user_name}."
# bad_answer = "HELLO #{user_name.chop.upcase}. WHY ARE WE SCREAMING?"

# p user_name[-1] == '!' ? bad_answer : good_answer

# (1..99).each { |number| puts number if number.odd? }

# 1.upto(99) { |number| puts number if number.odd? }

# def sum(number)
#   total = 0
#   (1..number).reduce(:+)
# end

# def prod(number)
#   total = 1
#   (1..number).reduce(:*)
# end

# puts "Please enter an integer greater than 0:"
# number = gets.chomp.to_i

# puts "Enter 's' to compute the sum, 'p' to compute the product."
# answer = gets.chomp

# if answer == 's'
#   total = sum(number)
#   puts "The sum of the integers between 1 and #{number} is #{total}."
# elsif answer == 'p'
#   total = prod(number)
#   puts "The product of the integers between 1 and #{number} is #{total}."
# else
#   puts "Wrong answer."
# end

# array1 = %w(Moe Larry Curly Shemp Harpo Chico Groucho Zeppo)
# array2 = []
# array1.each_with_index { |value, index| array2[index] = value }
# array1.each { |value| value.upcase! if value.start_with?('C', 'S') }
# puts array2

# first_five_numbers = []
# number_six = 0

# puts "==> Enter the 1st number:"
# first_five_numbers[0] = gets.chomp.to_i

# puts "==> Enter the 2nd number:"
# first_five_numbers[1] = gets.chomp.to_i

# puts "==> Enter the 3th number:"
# first_five_numbers[2] = gets.chomp.to_i

# puts "==> Enter the 4th number:"
# first_five_numbers[3] = gets.chomp.to_i

# puts "==> Enter the 5th number:"
# first_five_numbers[4] = gets.chomp.to_i

# puts "==> Enter the last number:"
# number_six = gets.chomp.to_i

# if first_five_numbers.include? number_six
#   puts "The number #{number_six} appears in #{first_five_numbers}."
# else
#   puts "The number #{number_six} does not appears in #{first_five_numbers}."
# end

# puts "==> Enter the first number:"
# first_number = gets.chomp.to_i

# puts "==> Enter the second number:"
# second_number = gets.chomp.to_i

# puts "#{first_number} + #{second_number} = #{first_number+second_number}"

# puts "Please write word or multiple words:"
# answer = gets.chomp

# puts answer.delete(" ").size

# def xor?(arg1, arg2)
#   if arg1 && !arg2
#     return true
#   elsif !arg1 && arg2
#     return true
#   else
#     false
#   end
# end

# puts xor?(5.even?, 4.even?) == true
# puts xor?(5.odd?, 4.odd?) == true
# puts xor?(5.odd?, 4.even?) == false
# puts xor?(5.even?, 4.odd?) == false

# def oddities(array)
#   new_array = []
#   array.each_with_index { |value, index| new_array << value if index.even?}  
#   p new_array
# end

# puts oddities([2, 3, 4, 5, 6]) == [2, 4, 6]
# puts oddities(['abc', 'def']) == ['abc']
# puts oddities([123]) == [123]
# puts oddities([]) == []

# def real_palindrome?(string)
#   string = string.downcase.delete('^a-z0-9')
#   puts string
#   string == string.reverse  
# end

# puts real_palindrome?('madam') == true
# puts real_palindrome?('Madam') == true           # (case does not matter)
# puts real_palindrome?("Madam, I'm Adam") == true # (only alphanumerics matter)
# puts real_palindrome?('356653') == true
# puts real_palindrome?('356a653') == true
# puts real_palindrome?('123ab321') == false

# def palindromic_number? number
#   number.to_s == number.to_s.reverse
# end

# puts palindromic_number?(34543) == true
# puts palindromic_number?(123210) == false
# puts palindromic_number?(22) == true
# puts palindromic_number?(5) == true

# def short_long_short(string1, string2)
#   if string1.size > string2.size
#     string2 + string1 + string2
#   else
#     string1 + string2 + string1
#   end  
# end

# puts short_long_short('abc', 'defgh') == "abcdefghabc"
# puts short_long_short('abcde', 'fgh') == "fghabcdefgh"
# puts short_long_short('', 'xyz') == "xyz"

# def century_suffix(century)
#   century = case century.to_s
#             when /^.*11$/, /^.*12$/, /^.*13$/
#              century.to_s + 'th'
#             when /^.*1$/
#              century.to_s + 'st'
#             when /^.*2$/
#              century.to_s + 'nd'
#             when /^.*3$/
#              century.to_s + 'rd'
#             else
#              century.to_s + 'th'
#             end
# end

# def century(year)
#   year += 100 unless year.to_s.chars.last == '0'

#   century = year / 100

#   century_suffix(century)
# end

# puts century(2000) == '20th'
# puts century(2001) == '21st'
# puts century(1965) == '20th'
# puts century(256) == '3rd'
# puts century(5) == '1st'
# puts century(10103) == '102nd'
# puts century(1052) == '11th'
# puts century(1127) == '12th'
# puts century(11201) == '113th'

# def leap_year?(year)
#   if year >= 1752
#    (year % 400 == 0) || (year % 4 == 0 && year % 100 != 0) 
#  else
#   year % 4 == 0
# end
# end

# puts leap_year?(2016) == true
# puts leap_year?(2015) == false
# puts leap_year?(2100) == false
# puts leap_year?(2400) == true
# puts leap_year?(240000) == true
# puts leap_year?(240001) == false
# puts leap_year?(2000) == true
# puts leap_year?(1900) == false
# puts leap_year?(1752) == true
# puts leap_year?(1700) == true
# puts leap_year?(1) == false
# puts leap_year?(100) == true
# puts leap_year?(400) == true

# def multisum number
#   sum = 0
#   1.upto(number).each { |value| sum += value if value % 3 == 0 || value % 5 == 0}
#   sum
# end

# def multisum number
#   array = []
#   1.upto(number).each { |value| array << value if value % 3 == 0 || value % 5 == 0}
#   return array.inject(:+)
# end

# puts multisum(3) == 3
# puts multisum(5) == 8
# puts multisum(10) == 33
# puts multisum(1000) == 234168

# def running_total(array)
#   total = 0
#   array.map { |value| total += value}
# end

# puts running_total([2, 5, 13]) == [2, 7, 20]
# puts running_total([14, 11, 7, 15, 20]) == [14, 25, 32, 47, 67]
# puts running_total([3]) == [3]
# puts running_total([]) == []

# def find_number(number)
#   case number
#   when '0' then 0
#   when '1' then 1
#   when '2' then 2
#   when '3' then 3
#   when '4' then 4
#   when '5' then 5
#   when '6' then 6
#   when '7' then 7
#   when '8' then 8
#   when '9' then 9
#   end
# end

# def calculate_multiple(index)
#   return 1 if index == 0
#   multiple = 1
#   index.times { |index| multiple *= 10}
#   multiple
# end

# def string_to_integer(string)
#   final_number = 0 
#   array = string.chars
#   array.map! { |value| find_number(value) }
#   array.reverse.each_with_index { |value, index| final_number += value * calculate_multiple(index)}
#   final_number
# end

# puts string_to_integer('4321') == 4321
# puts string_to_integer('570') == 570

# DIGITS = {
#   '0' => 0, '1' => 1, '2' => 2, '3' => 3, '4' => 4,
#   '5' => 5, '6' => 6, '7' => 7, '8' => 8, '9' => 9
# }

# def string_to_integer(string)
#   digits = string.chars.map { |char| DIGITS[char] }

#   value = 0
#   digits.each { |digit| value = 10 * value + digit }
#   value
# end

# def string_to_signed_integer(string)
#   if string.chars.first == '-'
#     string.delete!('-')
#     result = string_to_integer(string)
#     result -= result * 2
#   elsif string.chars.first == '+'
#     string.delete!('+')
#     string_to_integer(string)
#   else
#     string_to_integer(string)
#   end
# end

# puts string_to_signed_integer('4321') == 4321
# puts string_to_signed_integer('-570') == -570
# puts string_to_signed_integer('+100') == 100

# DIGITS = ['0', '1', '2', '3', '4', '5', '6', '7', '8', '9']

# def integer_to_string(number)
#   result = ''
#   loop do
#     number, remainder = number.divmod(10)
#     result.prepend(DIGITS[remainder])
#     break if number == 0
#   end
#   result
# end

# def signed_integer_to_string(number)
#   if number < 0
#     '-' + integer_to_string(-number)
#   elsif number == 0
#     '0'
#   else
#     '+' + integer_to_string(number)
#   end
# end

# puts signed_integer_to_string(4321) == '+4321'
# puts signed_integer_to_string(-123) == '-123'
# puts signed_integer_to_string(0) == '0'

# def ascii_value(string)
#   ascii_total = 0
#   string.chars.each { |value| ascii_total += value.ord }
#   ascii_total
# end

# puts ascii_value('Four score') == 984
# puts ascii_value('Launch School') == 1251
# puts ascii_value('a') == 97
# puts ascii_value('') == 0

# MINUTES_IN_A_DAY = 1440

# def time_of_day(time)
#   days, minutes = time.divmod(MINUTES_IN_A_DAY)
#   hours, minutes = minutes.divmod(60)

#   format('%02d:%02d', hours, minutes)
# end

# puts time_of_day(0) == "00:00"
# puts time_of_day(-3) == "23:57"
# puts time_of_day(35) == "00:35"
# puts time_of_day(-1437) == "00:03"
# puts time_of_day(3000) == "02:00"
# puts time_of_day(800) == "13:20"
# puts time_of_day(-4231) == "01:29"

# require 'time'

# HOURS_PER_DAY = 24
# MINUTES_PER_HOUR = 60
# MINUTES_PER_DAY = MINUTES_PER_HOUR * HOURS_PER_DAY

# def after_midnight(time)
#   hours, minutes = time.split(':').map(&:to_i)
#   (hours * MINUTES_PER_HOUR + minutes) % MINUTES_PER_DAY
# end

# def before_midnight(time)
#   hours, minutes = time.split(':').map(&:to_i)

#   total_minutes = 0

#   total_minutes += hours * MINUTES_PER_HOUR unless hours == 0
#   total_minutes += minutes unless minutes == 0  

#   total_minutes = MINUTES_PER_DAY - total_minutes
#   total_minutes % MINUTES_PER_DAY
# end

# puts after_midnight('00:00') == 0
# puts before_midnight('00:00') == 0
# puts after_midnight('12:34') == 754
# puts before_midnight('12:34') == 686
# puts after_midnight('24:00') == 0
# puts before_midnight('24:00') == 0

# def swap(string)
#   new_string = string.split.map do |word|
#     word[0], word[-1] = word[-1], word[0]
#     word
#   end
#   new_string.join(' ')
# end

# def swap_first_last_characters(word)
#   word[0], word[-1] = word[-1], word[0]
#   word
# end

# def swap(words)
#   result = words.split.map do |word|
#     swap_first_last_characters(word)
#   end
#   result.join(' ')
# end

# puts swap('Oh what a wonderful day it is') == 'hO thaw a londerfuw yad ti si'
# puts swap('Abcde') == 'ebcdA'
# puts swap('a') == 'a'

# def is_alphabetic?(character)
#   character =~ /^[A-z]+$/
# end

# def cleanup(string)
#   new_string = ''
#   last_char = 'a'
#   string.chars.each do |char|
#     if is_alphabetic?(char)
#       new_string << char
#       last_char = char
#     else
#       if last_char == ' '
#         next
#       else
#         new_string << ' '
#         last_char = ' '
#       end
#     end
#   end
#   new_string
# end

# puts cleanup("---what's my +*& line?") == ' what s my line '

# def word_sizes(string)
#   my_hash = Hash.new(0)
#   string.split.each do |word|
#     word.gsub!(/[^a-z]/i, '')
#     my_hash[word.size] += 1
#   end
#   my_hash
# end

# puts word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 2 }
# puts word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 3 }
# puts word_sizes("What's up doc?") == { 5 => 1, 2 => 1, 3 => 1 }
# puts word_sizes('') == {}

# HASH_0_TO_19 = {
#   0 => 'zero', 1 => 'one', 2 => 'two', 3 => 'three', 4 => 'four',
#   5 => 'five', 6 => 'six', 7 => 'seven', 8 => 'eight', 9 => 'nine',
#   10 => 'ten', 11 => 'eleven', 12 => 'twelve', 13 => 'thirteen', 
#   14 => 'fourteen', 15 => 'fifteen', 16 => 'sixteen', 17 => 'seventeen',
#   18 => 'eighteen', 19 => 'nineteen'
# }

# def alphabetic_number_sort(array)
#   values_array = HASH_0_TO_19.values
#   values_array.sort.map do |value|
#     HASH_0_TO_19.key(value)
#   end
# end

# puts alphabetic_number_sort((0..19).to_a) == [
#   8, 18, 11, 15, 5, 4, 14, 9, 19, 1, 7, 17,
#   6, 16, 10, 13, 3, 12, 2, 0
# ]

# def crunch(string)
#   new_string = ''
#   last_char = ''

#   string.chars.each do |char|
#     new_string << char unless last_char == char
#     last_char = char
#   end

#   new_string
# end

# puts crunch('ddaaiillyy ddoouubbllee') == 'daily double'
# puts crunch('4444abcabccba') == '4abcabcba'
# puts crunch('ggggggggggggggg') == 'g'
# puts crunch('a') == 'a'
# puts crunch('') == ''

# MAX_LINE = 80

# def print_message(string)
#   if string.size <= MAX_LINE
#     puts '|' + ' ' * 2 + string + ' ' * 2 + '|'
#   else
#     number_of_strings = string.size / MAX_LINE
#     number_of_strings.times do |time|
#       puts '|' + ' ' * 2 + string[(time * MAX_LINE)..(((time + 1) * MAX_LINE) - 1)] + ' ' * 2 + '|'
#     end
#   end
# end

# def print_in_box(string)
#   string.size > MAX_LINE ? size = MAX_LINE : size = string.size

#   horizontal_line = '+' + '-' * (size + 4) + '+'
#   vertical_line = '|' + ' ' * (size + 4) + '|'

#   puts horizontal_line
#   puts vertical_line
#   print_message(string)
#   puts vertical_line
#   puts horizontal_line
# end
# print_in_box('To boldly go where no one has gone before.')
# print_in_box('To boldly go where no one has gone before. This is a test of sorry. Hahahaha. Let\'s play!.To boldly go where no one has gone before. This is a test of sorry. Hahahaha. To boldly go where no one has gone before. This is a test of sorry. Hahahaha. To boldly go where no one has gone before. This is a test of sorry. Hahahaha.')
# print_in_box('')

# def dms(value)
#   value = value.to_s.split('.').map!(&:to_i)
#   if value[1].nil?
#     puts %(#{value[0]}°00'00\")
#   else
#     puts value[1] = (value[1] / 100) * 60
#     puts "%(#{value[0]}°#{value[1]}'#{value[2]}\")"
#   end
# end

# dms(30) == %(30°00'00")
# dms(76.73) == %(76°43'48")
# dms(254.6) == %(254°36'00")
# dms(93.034773) == %(93°02'05")
# dms(0) == %(0°00'00")
# dms(360) == %(360°00'00")

# def remove_vowels(array)
#   new_array = array.map do |value| 
#     value.gsub(/[aeiou]/i, '')
#   end
# end

# puts remove_vowels(%w(abcdefghijklmnopqrstuvwxyz)) == %w(bcdfghjklmnpqrstvwxyz)
# puts remove_vowels(%w(green YELLOW black white)) == %w(grn YLLW blck wht)
# puts remove_vowels(%w(ABC AEIOU XYZ)) == ['BC', '', 'XYZ']

# FINOBACCI_START = [1, 1]

# def find_fibonacci_index_by_length(length)
#   finobacci_array = FINOBACCI_START

#   loop do
#     finobacci_array << finobacci_array[-1] + finobacci_array[-2]
#     break if finobacci_array.last.to_s.length == length
#   end

#   finobacci_array.size
# end

# puts find_fibonacci_index_by_length(2) == 7
# puts find_fibonacci_index_by_length(10) == 45
# puts find_fibonacci_index_by_length(100) == 476
# puts find_fibonacci_index_by_length(1000) == 4782
# puts find_fibonacci_index_by_length(10000) == 47847

# def reverse_array!(array)
#   total_iterations = array.size / 2
#   total_iterations
#   iteration = 0
#   loop do
#     break if iteration >= total_iterations
#     iteration += 1
#     array[iteration - 1], array[-(iteration)] = array[-(iteration)], array[iteration - 1]
#   end
#   array
# end

# list = [1,2,3,4]
# p result = reverse_array!(list) # => [4,3,2,1]
# puts list == [4, 3, 2, 1]
# puts list.object_id == result.object_id

# list = %w(a b c d e)
# p reverse_array!(list) # => ["e", "d", "c", "b", "a"]
# p list == ["e", "d", "c", "b", "a"]

# list = ['abc']
# p reverse_array!(list) # => ["abc"]
# p list == ["abc"]

# list = []
# p reverse_array!([]) # => []
# p list == []

# def reverse(array)
#   reverse_array = []
#   iteration = 0

#   loop do
#     break if iteration >= array.size
#     reverse_array.unshift(array[iteration])
#     iteration += 1
#   end

#   reverse_array
# end

# puts reverse([1,2,3,4]) == [4,3,2,1]          # => true
# puts reverse(%w(a b c d e)) == %w(e d c b a)  # => true
# puts reverse(['abc']) == ['abc']              # => true
# puts reverse([]) == []                        # => true

# list = [1, 2, 3]                      # => [1, 2, 3]
# new_list = reverse(list)              # => [3, 2, 1]
# puts list.object_id != new_list.object_id  # => true
# puts list == [1, 2, 3]                     # => true
# puts new_list == [3, 2, 1]                 # => true

# def merge(array1, array2)
#   result = array1 + array2
#   result.uniq
# end

# puts merge([1, 3, 5], [3, 6, 9]) == [1, 3, 5, 6, 9]

# def halvsies(array)
#   return [[], []] if array.empty?

#   return [array, []] if array.size == 1

#   first_array = []
#   second_array = []
#   iteration = 0

#   if array.size.even?
#     while iteration < array.size / 2
#       first_array.push(array[iteration])
#       iteration += 1
#     end
#     while iteration < array.size
#       second_array.push(array[iteration])
#       iteration += 1
#     end
#   else
#     while iteration <= array.size / 2
#       first_array.push(array[iteration])
#       iteration += 1
#     end
#     while iteration < array.size
#       second_array.push(array[iteration])
#       iteration += 1
#     end
#   end

#   [first_array, second_array]
# end

# puts halvsies([1, 2, 3, 4]) == [[1, 2], [3, 4]]
# puts halvsies([1, 5, 2, 4, 3]) == [[1, 5, 2], [4, 3]]
# puts halvsies([5]) == [[5], []]
# puts halvsies([]) == [[], []]

# def find_dup(ary)
#   loop do
#     value = ary.pop
#     return value if ary.include?(value)
#   end
# end

# puts find_dup([7, 10, 5, 5, 3, 1]) == 5
# puts find_dup([18,  9, 36, 96, 31, 19, 54, 75, 42, 15,
#           38, 25, 97, 92, 46, 69, 91, 59, 53, 27,
#           14, 61, 90, 81,  8, 63, 95, 99, 30, 65,
#           78, 76, 48, 16, 93, 77, 52, 49, 37, 29,
#           89, 10, 84,  1, 47, 68, 12, 33, 86, 60,
#           41, 44, 83, 35, 94, 73, 98,  3, 64, 82,
#           55, 79, 80, 21, 39, 72, 13, 50,  6, 70,
#           85, 87, 51, 17, 66, 20, 28, 26,  2, 22,
#           40, 23, 71, 62, 73, 32, 43, 24,  4, 56,
#           7,  34, 57, 74, 45, 11, 88, 67,  5, 58]) == 73

# def include?(ary, value_to_search)
#   !!ary.find_index(value_to_search)
# end

# puts include?([1,2,3,4,5], 3) == true
# puts include?([1,2,3,4,5], 6) == false
# puts include?([], 3) == false
# puts include?([nil], nil) == true
# puts include?([], nil) == false

# def triangle(size)
#   1.upto(size) do |iteration|
#     puts " " * (size - iteration) + "*" * iteration
#   end
# end

# triangle(5)
# triangle(9)

# def interleave(ary1, ary2)
#   result = []
#   i = 0

#   while i < ary1.size
#     result << ary1[i]
#     result << ary2[i]
#     i += 1
#   end

#   result
# end

# def interleave(ary1, ary2)
#   result = ary1.zip(ary2)

#   result.flatten!
# end

# puts interleave([1, 2, 3], ['a', 'b', 'c']) == [1, 'a', 2, 'b', 3, 'c']

# def letter_case_count(string)
#   hsh = { lowercase: 0, uppercase: 0, neither: 0}

#   string.each_char do |char|
#     case char
#     when /[a-z]/ then hsh[:lowercase] += 1
#     when /[A-Z]/ then hsh[:uppercase] += 1
#     else hsh[:neither] += 1
#     end
#   end

#   hsh
# end

# puts letter_case_count('abCdef 123') == { lowercase: 5, uppercase: 1, neither: 4 }
# puts letter_case_count('AbCd +Ef') == { lowercase: 3, uppercase: 3, neither: 2 }
# puts letter_case_count('123') == { lowercase: 0, uppercase: 0, neither: 3 }
# puts letter_case_count('') == { lowercase: 0, uppercase: 0, neither: 0 }

# def word_cap(string)
#   p string.split.each(&:capitalize!).join(' ')
# end

# def word_cap(string)
#   new_string = string.split.map do |value|
#     value[0] = value[0].upcase
#     value[1..value.size] = value[1..value.size].downcase
#     value
#   end
#   p new_string.join(' ')
# end

# puts word_cap('four score and seven') == 'Four Score And Seven'
# puts word_cap('the javaScript language') == 'The Javascript Language'
# puts word_cap('this is a "quoted" word') == 'This Is A "quoted" Word'

# def swapcase(string)
#   result = string.chars.map do |char|
#     if /[a-z]/.match(char)
#       char.upcase! 
#     elsif /[A-Z]/.match(char)
#       char.downcase!
#     end
#     char
#   end
#   result.join
# end

# puts swapcase('CamelCase') == 'cAMELcASE'
# puts swapcase('Tonight on XYZ-TV') == 'tONIGHT ON xyz-tv'

# def staggered_case(str)
#   new_str = []
#   need_upper = true
#   str.chars.each_with_index do |char, index|
#     if /[a-z]/i.match(char) 
#       if need_upper 
#         new_str.push(char.upcase)
#         need_upper = !need_upper
#       else
#         new_str.push(char.downcase)
#         need_upper = !need_upper
#       end
#     else
#       new_str.push(char)
#     end
#   end
#   p new_str.join
# end

# puts staggered_case('I Love Launch School!') == 'I lOvE lAuNcH sChOoL!'
# puts staggered_case('ALL CAPS') == 'AlL cApS'
# puts staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 nUmBeRs'

# def show_multiplicative_average(ary)
#   total = ary.inject(:*)

#   total.to_f / ary.count
# end

# result = show_multiplicative_average([3, 5])
# puts "The result is #{result}"

# result = show_multiplicative_average([2, 5, 7, 11, 13, 17])
# puts "The result is #{format("%0.3f", result)}"

# def multiply_list(ary1, ary2)
#     new_ary = []
#     ary1.each_with_index do |value, index|
#       new_ary << value * ary2[index]
#     end
#     new_ary
# end

# def multiply_list(ary1, ary2)
#   ary1.zip(ary2).map { |ary| ary.inject(:*) }
# end


# puts multiply_list([3, 5, 7], [9, 10, 11]) == [27, 50, 77]

# def multiply_all_pairs(ary1, ary2)
#   ary1.product(ary2).map { |ary| ary.inject(:*) }.sort
# end

# puts multiply_all_pairs([2, 4], [4, 3, 1, 2]) == [2, 4, 4, 6, 8, 8, 12, 16]

# def penultimate(str)
#   new_str = str.split 
#   new_str[-2]
# end

# puts penultimate('last word') == 'last'
# puts penultimate('Launch School is great!') == 'is'

# def sum_of_sums(ary)
#   total = 0

#   ary.each_with_index do |_, index|
#     while index >= 0
#       total += ary[index]
#       index -= 1
#     end
#   end

#   total
# end

# puts sum_of_sums([3, 5, 2]) == (3) + (3 + 5) + (3 + 5 + 2) # -> (21)
# puts sum_of_sums([1, 5, 7, 3]) == (1) + (1 + 5) + (1 + 5 + 7) + (1 + 5 + 7 + 3) # -> (36)
# puts sum_of_sums([4]) == 4
# puts sum_of_sums([1, 2, 3, 4, 5]) == 35

# puts "Enter a noun: "
# noun = gets.chomp

# puts "Enter a verb: "
# verb = gets.chomp

# puts "Enter a adjective: "
# adjective = gets.chomp

# puts "Enter a adverb: "
# adverb = gets.chomp

# puts "Do you #{verb} your #{adjective} #{noun} #{adverb}? That is hilarious!"

# def substrings_at_start(str)
#   new_ary = []

#   1.upto(str.size) do |index|
#     new_ary << str.slice(0, index)
#   end

#   new_ary
# end

# def substrings(str)
#   new_ary = []

#   0.upto(str.size) do |index|
#     new_ary << substrings_at_start(str.slice(index, str.size))
#   end

#   new_ary.flatten!
# end

# def palindromes(str)
#   substrings(str).select do |value| 
#     value.size > 1 && value == value.reverse
#   end
# end

# p palindromes('abcd') == []
# p palindromes('knitting cassettes')

# def divisible?(number, divisor)
#   number % divisor == 0
# end

# def fizzbuzz(start_number, end_number)
#   ary = []
#   start_number.upto(end_number) do |index|
#     if divisible?(index, 3) && divisible?(index, 5)
#       ary << 'FizzBuzz'
#     elsif divisible?(index, 3)
#       ary << 'Fizz'
#     elsif divisible?(index, 5)
#       ary << 'Buzz'
#     else
#       ary << index
#     end
#   end
#   ary.join(', ')
# end

# p fizzbuzz(1, 15)

# def repeater(str)
#   result = []

#   result = str.chars.map do |value|
#     /[aeiou\. !?-]/.match(value) ? value : value * 2
#   end

#   result.join
# end

# puts repeater('Hello-World!')

# def reversed_number(number)
#   number.to_s.reverse.to_i
# end

# p reversed_number(12345)

# def center_of(str)
#   if str.size.odd?
#     center = (str.size.to_f / 2).floor
#     str[center]
#   else
#     center = str.size / 2
#     str[center - 1] + str[center]
#   end
# end

# p center_of('x') == 'x'

# def greetings(ary_name, hsh_profession)
#   "Hello #{ary_name[0]} #{ary_name[1]} #{ary_name[2]}! \
# Nice to have a #{hsh_profession[:title]} #{hsh_profession[:occupation]} around."
# end

# puts greetings(['John', 'Q', 'Doe'], {title: 'Master', occupation: 'Plumber'})

# def double_double(number_string)
#   center = number_string.size / 2
#   number_string.slice(0, center) == number_string.slice(center, number_string.size)
# end

# def twice(number)
#   number_string = number.to_s

#   if number_string.size.even? && double_double(number_string)
#     number
#   else
#     number = number * 2
#   end

# end

# p twice(37) == 74
# p twice(44) == 44
# p twice(334433) == 668866
# p twice(444) == 888
# p twice(107) == 214
# p twice(103103) == 103103
# p twice(3333) == 3333
# p twice(7676) == 7676
# p twice(123_456_789_123_456_789) == 123_456_789_123_456_789
# p twice(5) == 10

# def negative(number)
#   number > 0 ? -(number) : number
# end

# p negative(5) == -5
# p negative(-3) == -3
# p negative(0) == 0      # There's no such thing as -0 in ruby

# def sequence(number)
#   ary = []
#   1.upto(number) do |index|
#     ary << index
#   end
#   ary
# end

# p sequence(5) == [1, 2, 3, 4, 5]
# p sequence(3) == [1, 2, 3]
# p sequence(1) == [1]

# def uppercase?(str)
#   /[a-z]/.match(str) ? false : true
# end

# p uppercase?('t') == false
# p uppercase?('T') == true
# p uppercase?('Four Score') == false
# p uppercase?('FOUR SCORE') == true
# p uppercase?('4SCORE!') == true
# p uppercase?('') == true

# def word_lengths(str)
#   ary = str.split.map do |word|
#     word + ' ' + word.size.to_s
#   end
# end

# p word_lengths("cow sheep chicken") == ["cow 3", "sheep 5", "chicken 7"]

# p word_lengths("baseball hot dogs and apple pie") ==
# ["baseball 8", "hot 3", "dogs 4", "and 3", "apple 5", "pie 3"]

# p word_lengths("It ain't easy, is it?") == ["It 2", "ain't 5", "easy, 5", "is 2", "it? 3"]

# p word_lengths("Supercalifragilisticexpialidocious") ==
# ["Supercalifragilisticexpialidocious 34"]

# p word_lengths("") == []

# def swap_name(str)
#   ary_name = str.split
#   "#{ary_name.last}, #{ary_name.first}" 
# end

# p swap_name('Joe Roberts') == 'Roberts, Joe'

# def sequence(count, number)
#   ary = []

#   return ary if count == 0

#   1.upto(count) do |index|
#     ary << number * index
#   end

#   ary
# end

# p sequence(5, 1) == [1, 2, 3, 4, 5]
# p sequence(4, -7) == [-7, -14, -21, -28]
# p sequence(3, 0) == [0, 0, 0]
# p sequence(0, 1000000) == []

# def get_grade(score1, score2, score3)
#   score_average = (score1 + score2 + score3) / 3

#   case 
#   when score_average > 0 && score_average < 60 then 'F'
#   when score_average > 60 && score_average < 70 then 'D'
#   when score_average > 70 && score_average < 80 then 'C'
#   when score_average > 80 && score_average < 90 then 'B'
#   when score_average > 90 && score_average <= 100 then 'A'
#   end

# end

# p get_grade(95, 90, 93) == "A"
# p get_grade(50, 50, 95) == "D"

# def buy_fruit(ary)
#   new_ary = []

#   ary.each do |inner_ary|
#     inner_ary[1].times do
#      new_ary << inner_ary[0] 
#    end
#  end

#  new_ary
# end

# puts buy_fruit([["apples", 3], ["orange", 1], ["bananas", 2]]) ==
# ["apples", "apples", "apples", "orange", "bananas","bananas"]

# def rotate_array(ary)
#   new_ary = []
#   last_value = 0

#   ary.each_with_index do |value, idx|
#     idx == 0 ? last_value = value : new_ary << value
#   end
#   new_ary << last_value

#   new_ary
# end

# p rotate_array([7, 3, 5, 2, 9, 1]) == [3, 5, 2, 9, 1, 7]
# p rotate_array(['a', 'b', 'c']) == ['b', 'c', 'a']
# p rotate_array(['a']) == ['a']

# x = [1, 2, 3, 4]
# p rotate_array(x) == [2, 3, 4, 1]   # => true
# x == [1, 2, 3, 4]                 # => true

# def rotate_rightmost_digits(ary_number, rotate_size)  
#   ary_number[-rotate_size..-1] = rotate_array(ary_number[-rotate_size..-1])
#   ary_number
# end

# p rotate_rightmost_digits(735291, 1) == 735291
# p rotate_rightmost_digits(735291, 2) == 735219
# p rotate_rightmost_digits(735291, 3) == 735912
# p rotate_rightmost_digits(735291, 4) == 732915
# p rotate_rightmost_digits(735291, 5) == 752913
# p rotate_rightmost_digits(735291, 6) == 352917

# def max_rotation(number)
#   ary_number = number.to_s.chars
#   (-ary_number.size..-1).each do |idx|
#     ary_number = rotate_rightmost_digits(ary_number, idx.abs)
#   end
#   ary_number.join.to_i
# end

# p max_rotation(735291) == 321579
# p max_rotation(3) == 3
# p max_rotation(35) == 53
# p max_rotation(105) == 15 # the leading zero gets dropped
# p max_rotation(8_703_529_146) == 7_321_609_845

# def switch_lights(number_of_lights)
#   array_lights = (1..number_of_lights).to_a.map! { |value| value = 'off' }

#   array_lights.map! { |value| value = 'on' }

#   2.upto(number_of_lights) do |idx|
#     next_idx = idx - 1
#     loop do
#       array_lights[next_idx] == 'on' ? array_lights[next_idx] = 'off' : array_lights[next_idx] = 'on'
#       next_idx += idx
#       break if array_lights.at(next_idx) == nil
#     end
#   end

#   index_array = []
#   array_lights.each_with_index do |value, idx|
#     index_array << (idx + 1) if value == 'on'
#   end 
#   index_array
# end

# p switch_lights (1000)

# def print_me(number, idx)
#   print " " * ((number - idx) / 2)
#   print "*"  
#   print " " * (idx - 2) if idx > 1
#   print "*" if idx > 1
#   puts 
# end

# def diamond(number)
#   1.upto(number - 1) do |idx|
#     next if idx.even?
#     print_me(number, idx) 
#   end

#   number.downto(1) do |idx|
#     next if idx.even?
#     print_me(number, idx)
#   end
# end

# diamond(1)
# diamond(3)
# diamond(9)

# def minilang(commands)
#   register = 0
#   stack = []

#   commands.split(' ').each do |command| 
#     case command
#     when 'PRINT' then puts register
#     when /[0-9]/ then register = command.to_i
#     when 'PUSH' then stack.push(register)
#     when 'POP' then register = stack.pop
#     when 'MULT' then register *= stack.pop
#     when 'ADD' then register += stack.pop
#     when 'SUB' then register -= stack.pop
#     when 'DIV' then register /= stack.pop 
#     when 'MOD' then register %= stack.pop
#     end
#   end
# end

# minilang('3 PUSH PUSH 7 DIV MULT PRINT')

# WORD_TO_DIGIT = {
#   'one' => 1, 'two' => 2, 'three' => 3, 'four' => 4, 
#   'five' => 5, 'six' => 6, 'seven' => 7, 'eight' => 8,
#   'nine' => 9, 'zero' => 0 
# }.freeze

# # def word_to_digit(str)
# #   ary = str.split
# #   ary.map! do |word|
# #     WORD_TO_DIGIT.keys.include?(word) ? WORD_TO_DIGIT[word] : word
# #   end
# #   ary.join(' ')
# # end

# def word_to_digit(words)
#   WORD_TO_DIGIT.keys.each do |word|
#     words.gsub!(/\b#{word}\b/, WORD_TO_DIGIT[word].to_s)
#   end
#   words.gsub!(/(\d)\s/, '\1')
#   words.gsub!(/(\d{3})(\d{3})(\d{4})/, '(\1) \2-\3')
# end

# p word_to_digit('Please call me at one five five one two three four eight nine nine. Thanks.')

# def fibonacci(idx, fibonacci_ary = [1, 1])
#   return 1 if idx < 3
#   return fibonacci_ary[-1] + fibonacci_ary[-2] if idx == fibonacci_ary.size + 1

#   fibonacci_ary << fibonacci_ary[-1] + fibonacci_ary[-2]

#   fibonacci(idx, fibonacci_ary)
# end

# p fibonacci(1) == 1
# p fibonacci(2) == 1
# p fibonacci(3) == 2
# p fibonacci(4) == 3
# p fibonacci(5) == 5
# p fibonacci(12) == 144
# p fibonacci(20) == 6765

# def fibonacci(nth)
#   return 1 if nth <= 2

#   fibonacci_ary = [1, 1]

#   loop do
#     fibonacci_ary << fibonacci_ary[-1] + fibonacci_ary[-2]
#     break if nth == fibonacci_ary.size + 1
#   end  

#   fibonacci_ary[-1] + fibonacci_ary[-2]
# end

# def fibonacci(nth)
#   first, last = 1, 1
#   3.upto(nth) do
#     first, last = last, first + last
#   end

#   last
# end

# # p fibonacci(20) == 6765
# # p fibonacci(100) == 354224848179261915075

# def fibonacci_last(nth)
#   fibonacci_nth = fibonacci(nth)
#   fibonacci_str = fibonacci_nth.to_s
#   p fibonacci_str[-1].to_i
# end

# fibonacci_last(15)        # -> 0  (the 15th Fibonacci number is 610)
# fibonacci_last(20)        # -> 5 (the 20th Fibonacci number is 6765)
# fibonacci_last(100)       # -> 5 (the 100th Fibonacci number is 354224848179261915075)
# fibonacci_last(100_001)   # -> 1 (this is a 20899 digit number)
# fibonacci_last(1_000_007) # -> 3 (this is a 208989 digit number)
# fibonacci_last(123456789) # -> 4

# letter = File.read("letter.txt")

# letter_array = letter.split(/\.|!|\?/)

# letter_array.each do |sentence|
#   puts sentence
#   puts 
#   puts sentence.split.count
#   puts
# end

# def block_word?(word)
#   word_ary = word.upcase.split('')
#   spell_block = []
#   spelling_block = [
#     'BO',   'XK',   'DQ',   'CP',   'NA',
#     'GT',   'RE',   'FS',   'JW',   'HU',
#     'VI',   'LY',   'ZM' 
#   ]

#   word_ary.each do |char|
#     spell_block = spelling_block.map do |letters| 
#       letters.gsub!(char, '-') if letters.include?(char)
#       letters 
#     end
#   end

#   !spell_block.include?('--')
# end

# p block_word?('BATCH') == true
# p block_word?('BUTCH') == false
# p block_word?('jest') == true

# def letter_percentages(str)
#   percentages_hsh = {lowercase: 0.0, uppercase: 0.0, neither: 0.0}

#   str.chars.each do |char|
#     case char
#     when /[a-z]/ then percentages_hsh[:lowercase] += 1
#     when /[A-Z]/ then percentages_hsh[:uppercase] += 1
#     else percentages_hsh[:neither] += 1
#     end
#   end

#   total_chars = percentages_hsh.values.inject(:+)
#   percentages_hsh[:lowercase] = percentages_hsh[:lowercase] * 100 / total_chars
#   percentages_hsh[:uppercase] = percentages_hsh[:uppercase] * 100 / total_chars
#   percentages_hsh[:neither] = percentages_hsh[:neither] * 100 / total_chars

#   percentages_hsh
# end

# p letter_percentages('abCdef 123') == { lowercase: 50, uppercase: 10, neither: 40 }
# p letter_percentages('AbCd +Ef') == { lowercase: 37.5, uppercase: 37.5, neither: 25 }
# p letter_percentages('123') == { lowercase: 0, uppercase: 0, neither: 100 }

# def balanced?(str)
#   open_parentheses = 0
#   close_parentheses = 0

#   str.chars.each do |char|
#     open_parentheses += 1 if /[(]/ =~ char
#     close_parentheses += 1 if /[)]/ =~ char
#     return false if close_parentheses > open_parentheses
#   end

#   open_parentheses == close_parentheses
# end

# p balanced?('What (is) this?') == true
# p balanced?('What is) this?') == false
# p balanced?('What (is this?') == false
# p balanced?('((What) (is this))?') == true
# p balanced?('((What)) (is this))?') == false
# p balanced?('Hey!') == true
# p balanced?(')Hey!(') == false
# p balanced?('What ((is))) up(') == false

# def valid?(ary)
#   ary.none? { |value| value <= 0 } && ary.min(2).inject(:+) > ary.max
# end

# def triangle(a, b, c)
#   ary = [a, b, c]

#   return :invalid unless valid?(ary)

#   equal_sides = 0

#   ary.each_with_index { |side, idx| equal_sides += 1 if side == ary[idx - 1]}

#   case equal_sides
#   when 3 then :equilateral
#   when 1 then :isosceles
#   when 0 then :scalene
#   end
# end

# p triangle(3, 3, 3) == :equilateral
# p triangle(3, 3, 1.5) == :isosceles
# p triangle(3, 4, 5) == :scalene
# p triangle(0, 3, 3) == :invalid
# p triangle(3, 1, 1) == :invalid

# def triangle(side1, side2, side3)
#   ary = [side1, side2, side3]

#   case 
#   when ary.inject(:+) != 180 || ary.any? { |side| side == 0}
#     :invalid
#   when ary.any? { |side| side > 90}
#     :obtuse
#   when ary.any? { |side| side == 90}
#     :right
#   else
#     :acute
#   end
# end

# p triangle(60, 70, 50) == :acute
# p triangle(30, 90, 60) == :right
# p triangle(120, 50, 10) == :obtuse
# p triangle(0, 90, 90) == :invalid
# p triangle(50, 50, 50) == :invalid

# require 'date'

# def friday_13th?(year)
#   (1..12).count { |month| Date.new(year, month, 13).friday? }
# end

# p friday_13th?(2015) == 3
# p friday_13th?(1986) == 1
# p friday_13th?(2019) == 2

# def no_duplicate(number)
#   ary = number.to_s.chars
#   ary.uniq == ary
# end

# def featured(number)
#   loop do
#     number += 1
#     if number % 7 == 0 && number.odd? && no_duplicate(number)
#       return number
#     end
#   end
# end

# p featured(12) == 21
# p featured(20) == 21
# p featured(21) == 35
# p featured(997) == 1029
# p featured(1029) == 1043
# p featured(999_999) == 1_023_547
# p featured(999_999_987) == 1_023_456_987

# def bubble_sort!(ary)
#   n = ary.size - 1
#   loop do
#     last_swap = 0
#     1.upto(n) do |idx|
#       if ary[idx-1] > ary[idx]
#         ary[idx], ary[idx-1] = ary[idx-1], ary[idx]
#         last_swap = idx
#       end
#     end
#     n = last_swap 
#     break if n == 0
#   end
# end

# array = [5, 3]
# bubble_sort!(array)
# p array == [3, 5]

# array = [6, 2, 7, 1, 4]
# bubble_sort!(array)
# p array == [1, 2, 4, 6, 7]

# array = %w(Sue Pete Alice Tyler Rachel Kim Bonnie)
# bubble_sort!(array)
# p array == %w(Alice Bonnie Kim Pete Rachel Sue Tyler)

# def sum_square_difference(number)
#   total_square_sum = (1..number).inject(:+) ** 2

#   total_sum_square = 0
#   (1..number).each do |idx|
#     total_sum_square += idx ** 2
#   end

#   total_square_sum - total_sum_square
# end

# p sum_square_difference(3) == 22
#    # -> (1 + 2 + 3)**2 - (1**2 + 2**2 + 3**2)
# p sum_square_difference(10) == 2640
# p sum_square_difference(1) == 0
# p sum_square_difference(100) == 25164150

# NOUNS = %w(dog cat elephant giraf mouse lion fish).freeze
# VERBS = %w(run swin dance play walk fly).freeze
# ADJETIVES = %w(fat tall small beautiful inteligent brave amazing).freeze
# ADVERBS = %w(fast slow strong nice ugly tasty lovely).freeze

# input = File.read("input.txt")

# input_array = input.split

# input_array.map! do |word|
#   case word
#   when /noun\.?/ then NOUNS.sample
#   when /verb\.?/ then VERBS.sample
#   when /adjective\.?/ then ADJETIVES.sample
#   when /adverb\.?/ then ADVERBS.sample
#   else word
#   end
# end

# p input_array.join(' ')

# def star(size)
#   (size/2 - 1).downto(0) do |idx|
#     puts ('*' + ' ' * idx  + '*' + ' ' * idx  + '*').center(size)
#   end

#   puts '*' * size

#   0.upto(size/2 -1) do |idx|
#     puts ('*' + ' ' * idx  + '*' + ' ' * idx  + '*').center(size)
#   end
# end

# star(7)

# def transpose(matrix)
#   new_matrix = []

#   0.upto(matrix.size - 1) do |idx_row|
#     new_matrix[idx_row] = []
#     0.upto(matrix.size - 1) do |idx_column|
#       new_matrix[idx_row] << matrix[idx_column][idx_row]
#     end
#   end

#   new_matrix
# end

# def transpose(matrix)
#   result = []
#   number_of_rows = matrix.size
#   number_of_columns = matrix.first.size
#   (0...number_of_columns).each do |column_index|
#     new_row = (0...number_of_rows).map { |row_index| matrix[row_index][column_index] }
#     result << new_row
#   end
#   result
# end

# matrix = [
#   [1, 5, 8],
#   [4, 7, 2],
#   [3, 9, 6]
# ]

# new_matrix = transpose(matrix)

# p new_matrix == [[1, 4, 3], [5, 7, 9], [8, 2, 6]]
# p matrix == [[1, 5, 8], [4, 7, 2], [3, 9, 6]]

# p transpose([[1, 2, 3, 4]]) == [[1], [2], [3], [4]]
# p transpose([[1], [2], [3], [4]]) == [[1, 2, 3, 4]]
# p transpose([[1, 2, 3, 4, 5], [4, 3, 2, 1, 0], [3, 7, 8, 6, 2]]) ==
#   [[1, 4, 3], [2, 3, 7], [3, 2, 8], [4, 1, 6], [5, 0, 2]]
# p transpose([[1]]) == [[1]]

# def rotate(matrix)
#   result = []
#   number_of_rows = matrix.size - 1
#   number_of_columns = matrix.first.size - 1
#   (0..number_of_columns).each do |column_index|
#     new_row = number_of_rows.downto(0).to_a.map { |row_index| matrix[row_index][column_index] }
#     result << new_row
#   end
#   result
# end

# def rotate90(matrix, n)
#   result = Array.new(matrix)
#   n.times do
#     result = rotate(result)
#   end
#   result
# end

# matrix1 = [
#   [1, 5, 8],
#   [4, 7, 2],
#   [3, 9, 6]
# ]

# matrix2 = [
#   [3, 7, 4, 2],
#   [5, 1, 0, 8]
# ]

# new_matrix1 = rotate90(matrix1, 1)
# new_matrix2 = rotate90(matrix2, 1)
# new_matrix3 = rotate90(matrix2, 4)

# p new_matrix1 == [[3, 4, 1], [9, 7, 5], [6, 2, 8]]
# p new_matrix2 == [[5, 3], [1, 7], [0, 4], [8, 2]]
# p new_matrix3 == matrix2

# def rotate(ary)
#   result = []
#   result << ary

#   (1...ary.size).each do 
#     new_ary = []
#     new_ary = (0...ary.size).map do |idx|
#       result.last[idx - 1]
#     end
#     result << new_ary
#   end

#   result
# end

# def permutations(ary)
#   ary_permutation = []

#   ary_permutation.concat(rotate(ary))

#   (0...(ary.size - 1)).each do |idx|
#     ((idx + 1)...ary.size).map do |inner_idx|
#       new_ary = []
#       new_ary = ary.map do |value|
#         if idx == ary.index(value)
#           ary[inner_idx]
#         elsif inner_idx == ary.index(value)
#           ary[idx]
#         else
#           value 
#         end
#       end
#       ary_permutation.concat(rotate(new_ary))
#     end
#   end

#   ary_permutation.uniq
# end

# require 'pry'

# def permutations(array)
#   return [array] if array.size == 1

#   result = []
#   array.each_with_index do |element, index|
#     sub_array = array[0...index] + array[(index + 1)..-1]
#     binding.pry
#     sub_permutations = permutations(sub_array)
#     binding.pry
#     sub_permutations.each do |permutation|
#       result << [element] + permutation
#     end
#     binding.pry
#   end

#   result
# end
# p permutations([2])
# -> [[2]]

# p permutations([1, 2])
# -> [[1, 2], [2, 1]]

# p permutations([1, 2, 3])
# -> [[1, 2, 3], [1, 3, 2], [2, 1, 3], [2, 3, 1], [3, 1, 2], [3, 2, 1]]

# p permutations([1, 2, 3, 4])
# -> [[1, 2, 3, 4], [1, 2, 4, 3], [1, 3, 2, 4],
#     [1, 3, 4, 2], [1, 4, 2, 3], [1, 4, 3, 2],
#     [2, 1, 3, 4], [2, 1, 4, 3], [2, 3, 1, 4],
#     [2, 3, 4, 1], [2, 4, 1, 3], [2, 4, 3, 1],
#     [3, 1, 2, 4], [3, 1, 4, 2], [3, 2, 1, 4],
#     [3, 2, 4, 1], [3, 4, 1, 2], [3, 4, 2, 1],
#     [4, 1, 2, 3], [4, 1, 3, 2], [4, 2, 1, 3],
#     [4, 2, 3, 1], [4, 3, 1, 2], [4, 3, 2, 1]]

# def my_method(array)
#   if array.empty?
#     []
#   elsif array.first != array.last
#     array.map do |value|
#       value.abs2
#     end
#   else
#     [7 * array.first]
#   end
# end

# p my_method([])
# p my_method([3])
# p my_method([3, 4])
# p my_method([5, 6, 7])

# def merge(ary1, ary2)
#   return ary1 if ary2.empty?
#   return ary2 if ary1.empty?

#   result = ary1.map { |value| value}

#   ary2.each do |value|
#     (0...result.size).each do |idx|
#       if value >= result[idx] && value <= result[idx + 1]
#         result[idx + 1, 0] = value 
#         break
#       end
#     end
#   end 

#   result
# end

def merge(array1, array2)
  index2 = 0
  result = []

  array1.each do |value|
    while index2 < array2.size && array2[index2] <= value
      result << array2[index2]
      index2 += 1
    end
    result << value
  end

  result.concat(array2[index2..-1])
end

# p merge([1, 5, 9], [2, 6, 8]) == [1, 2, 5, 6, 8, 9]
# p merge([1, 1, 3], [2, 2]) == [1, 1, 2, 2, 3]
# p merge([], [1, 4, 5]) == [1, 4, 5]
# p merge([1, 4, 5], []) == [1, 4, 5]

# def merge_sort(array)
#   return array if array.size == 1

#   result = []
#   sub_array = []

#   sub_array << array.slice(0...(array.size/2)) << array.slice((array.size/2)..-1)

#   sub_array.each do |inner_array|
#     result << merge_sort(inner_array)
#     if result.size > 1
#       result = merge(result[0], result[1])
#     end    
#   end

#   result 
# end

# def merge_sort(array)
#   return array if array.size == 1

#   sub_array_1 = array[0...array.size / 2]
#   sub_array_2 = array[array.size / 2...array.size]

#   sub_array_1 = merge_sort(sub_array_1)
#   sub_array_2 = merge_sort(sub_array_2)

#   merge(sub_array_1, sub_array_2)
# end

# p merge_sort([9, 5, 7, 1]) == [1, 5, 7, 9]
# p merge_sort([5, 3]) == [3, 5]
# p merge_sort([6, 2, 7, 1, 4]) == [1, 2, 4, 6, 7]
# p merge_sort(%w(Sue Pete Alice Tyler Rachel Kim Bonnie)) == %w(Alice Bonnie Kim Pete Rachel Sue Tyler)
# p merge_sort([7, 3, 9, 15, 23, 1, 6, 51, 22, 37, 54, 43, 5, 25, 35, 18, 46]) == [1, 3, 5, 6, 7, 9, 15, 18, 22, 23, 25, 35, 37, 43, 46, 51, 54]

# def egyptian(rational)
#   result = 0
#   denominator_array = []
#   denominator = 1

#   while rational > result
#     if (result + Rational(1, denominator)) <= rational
#       result += Rational(1, denominator)
#       denominator_array << denominator
#     end
#     denominator += 1
#   end

#   denominator_array
# end

# def unegyptian(denominators)
#   result = 0
#   denominators.each do |denominator|
#     result += Rational(1, denominator)
#   end
#   result
# end

# p egyptian(Rational(2, 1))    # -> [1, 2, 3, 6]
# p egyptian(Rational(137, 60)) # -> [1, 2, 3, 4, 5]
# p egyptian(Rational(3, 1))    # -> [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 15, 230, 57960]

# p unegyptian(egyptian(Rational(1, 2))) == Rational(1, 2)
# p unegyptian(egyptian(Rational(3, 4))) == Rational(3, 4)
# p unegyptian(egyptian(Rational(39, 20))) == Rational(39, 20)
# p unegyptian(egyptian(Rational(127, 130))) == Rational(127, 130)
# p unegyptian(egyptian(Rational(5, 7))) == Rational(5, 7)
# p unegyptian(egyptian(Rational(1, 1))) == Rational(1, 1)
# p unegyptian(egyptian(Rational(2, 1))) == Rational(2, 1)
# p unegyptian(egyptian(Rational(3, 1))) == Rational(3, 1)

# statement = "The Flintstones Rock"

# hsh = statement.chars.each_with_object({}) do |value, hsh|
#   if hsh.has_key?(value)
#     hsh[value] += 1
#   else
#     hsh[value] = 1
#   end
# end

# p hsh

# arr1 = ["a", "b", "c"]
# arr2 = arr1.dup
# arr2.each do |char|
#   char = char.upcase
# end

# p arr1 
# p arr2 

# arr = ['10', '11', '9', '7', '8']

# p arr.map(&:to_i).sort { |a, b| b <=> a }

# books = [
#   {title: 'One Hundred Years of Solitude', author: 'Gabriel Garcia Marquez', published: '1967'},
#   {title: 'The Great Gatsby', author: 'F. Scott Fitzgerald', published: '1925'},
#   {title: 'War and Peace', author: 'Leo Tolstoy', published: '1869'},
#   {title: 'Ulysses', author: 'James Joyce', published: '1922'}
# ]

# books.sort! do |a, b| 
#   a[:published].to_i <=> b[:published].to_i
# end

# p books

# hsh2 = {first: {'d' => 3}, second: {'e' => 2, 'f' => 1}, third: {'g' => 0}}

# p hsh2[:third].keys[0]

# munsters = {
#   "Herman" => { "age" => 32, "gender" => "male" },
#   "Lily" => { "age" => 30, "gender" => "female" },
#   "Grandpa" => { "age" => 402, "gender" => "male" },
#   "Eddie" => { "age" => 10, "gender" => "male" },
#   "Marilyn" => { "age" => 23, "gender" => "female"}
# }

# p munsters.select { |key, value| value["gender"] == "male" }.values.inject(0) { |memo, hsh| memo += hsh["age"].to_i } 

# hsh = {first: ['the', 'quick'], second: ['brown', 'fox'], third: ['jumped'], fourth: ['over', 'the', 'lazy', 'dog']}

# hsh.each_value do |ary| 
#   ary.each do |str|
#     str.each_char do |char|
#       puts char if char.match(/[aeiou]/)
#     end
#   end
# end

# arr = [['b', 'c', 'a'], [2, 1, 3], ['blue', 'black', 'green']]

# arr.map! do |ary|
#   ary.sort do |a, b|
#     b <=> a
#   end
# end

# p arr

# arr = [{a: 1}, {b: 2, c: 3}, {d: 4, e: 5, f: 6}]

# new_arr = arr.map do |hsh|
#   new_hsh = {}
#   hsh.each do |key, value|
#     new_hsh[key] = (value += 1)
#   end
#   new_hsh
# end

# p arr
# p new_arr

# arr = [[2], [3, 5, 7], [9], [11, 13, 15]]

# arr.map! do |inner_arr|
#   inner_arr.select do |value|
#     value % 3 == 0
#   end
# end

# p arr

# arr = [[:a, 1], ['b', 'two'], ['sea', {c: 3}], [{a: 1, b: 2, c: 3, d: 4}, 'D']]

# hsh = {}

# arr.each do |inner_arr|
#   hsh[inner_arr[0]] = inner_arr[1]
# end

# p hsh

# arr = [[1, 6, 7], [1, 4, 9], [1, 8, 3]]

# sorted_arr = arr.sort_by do |inner_arr|
#   inner_arr.select do |value| 
#     value.odd?
#   end
# end

# p sorted_arr

# hsh = {
#   'grape' => {type: 'fruit', colors: ['red', 'green'], size: 'small'},
#   'carrot' => {type: 'vegetable', colors: ['orange'], size: 'medium'},
#   'apple' => {type: 'fruit', colors: ['red', 'green'], size: 'medium'},
#   'apricot' => {type: 'fruit', colors: ['orange'], size: 'medium'},
#   'marrow' => {type: 'vegetable', colors: ['green'], size: 'large'},
# }

# new_arr = []

# hsh.each_value do |details|
#   if details[:type] == 'fruit'
#     new_arr << details[:colors].map { |color| color.capitalize }
#   else
#     new_arr << details[:size].upcase
#   end
# end

# p new_arr

# arr = [{a: [1, 2, 3]}, {b: [2, 4, 6], c: [3, 6], d: [4]}, {e: [8], f: [6, 10]}]

# arr.select! do |hsh|
#   hsh.values.flatten.all? { |value| value.even? }
# end

# puts arr

# require 'securerandom'

# def uuid
#   uuid_value = SecureRandom.hex.to_s
#   uuid_value.split(/(.{8})(.{4})(.{4})(.{4})(.{12})/).join('-')
# end

# new_code = uuid
# p new_code

# def string_reverser(str)
#   ary = str.chars
#   reversed_ary = []

#   ary.each do |char|
#     reversed_ary.unshift(char)
#   end

#   reversed_ary.join
# end

# p string_reverser('hello')

# def fizzbuzz(start, finish)
#   ary_result = []
#   (start..finish).each do |number|
#     case 
#     when number % 3 == 0 && number % 5 == 0
#       ary_result << 'FizzBuzz'
#     when number % 3 == 0
#       ary_result << 'Fizz'
#     when number % 5 == 0
#       ary_result << 'Buzz'
#     else
#       ary_result << number
#     end
#   end
#   ary_result.join(', ')
# end

# p fizzbuzz(1, 15)

# def vowels_remover(ary)
#   removed_vowels = []

#   ary.each do |word|
#     word_without_vowels = word.chars.select do |char|
#       !'aeiouAEIOU'.include?(char)
#     end
#     removed_vowels << word_without_vowels.join 
#   end

#   removed_vowels
# end

# p vowels_remover(['blue', 'green', 'yellow'])

# require 'pry'

# def prime?(number)
#   (2...number).each do |inner_number|
#     # binding.pry
#     return false if number % inner_number == 0
#   end

#   true
# end

# def find_primes(start, finish)
#   prime_numbers = []

#   (start..finish).each do |number|
#     prime_numbers << number if prime?(number)
#   end  

#   prime_numbers
# end

# p find_primes(3, 10)

# require 'pry'

# number = 0

# loop do
#   p "Please enter an integer greater than 0"
#   number = gets.chomp.to_i

#   break if number.to_i > 0

#   p "Please make sure it is an integer and it is greater than 0"
# end

# operator = 'n'

# loop do
#   p "Please enter 's' to sum or 'p' to product"
#   operator = gets.chomp.downcase

#   break if "sp".include?(operator)

#   p "Please make sure an 's' or a 'p'"
# end

# if operator == 's'
#   total = 0
#   1.upto(number) { |value| total += value }
#   p "The sum of the integers between 1 and #{number} is #{total}"
# else
#   total = 1
#   1.upto(number-1) do |value| 
#     total *= value 
#     p total
#   end
#   # binding.pry
#   p "The product of the integers between 1 and #{number} is #{total}"
# end

# def interleave(ary1, ary2)
#   final_ary = []

#   (0...ary1.size).each do |idx|
#     final_ary << ary1[idx]
#     final_ary << ary2[idx]
#   end

#   final_ary
# end

# p interleave([1, 2, 3], ['a', 'b', 'c'])

# require 'pry'

# def substring(str, start, stop = start)
#   sub_str = []
#   str.chars.each_with_index do |char, idx|
#     sub_str << char if str[start..stop].include?(char)
#   end
#   sub_str.join
# end

# # p substring('honey', 0, 2)
# # p substring('honey', 3, 9)
# # p substring('honey', 2)

# def substrings(str)
#   result = []
#   str.chars.each_with_index do |char, idx|
#     (idx+1...str.size).each do |inner_idx|
#       result << str[idx..inner_idx]
#       # binding.pry
#     end
#   end
#   result
# end

# def palindromes(str)
#   substr_array = substrings(str)
#   result = []

#   substr_array.each do |word|
#     result << word if word == word.reverse
#   end
#   result
# end

# # p palindromes('ppop')

# def larger_palindromes(str)
#   array = palindromes(str)
#   array.sort.first
# end

# p larger_palindromes('ppop')

# require 'pry'

# NUMBERS = {"zero" => 0, "one" => 1, "two" => 2, "three" => 3, "four" => 4, "five" => 5, "six" => 6, "seven" => 7, "eight" => 8, "nine" => 9}

# def computer(english)
#   commands = english.split
#   total = NUMBERS[commands.first]

#   (1...commands.size).each do |idx|
#     case commands[idx]
#     when 'divided' 
#       divided_value = NUMBERS[commands[idx-1]] / NUMBERS[commands[idx+1]]
#       commands[idx] = NUMBERS.key(divided_value)
#       commands.delete_at(idx+1)
#       commands.delete_at(idx-1)
#       p commands
#     when 'times'
#       times_value = NUMBERS[commands[idx-1]] * NUMBERS[commands[idx+1]]
#       commands[idx] = NUMBERS.key(times_value)
#       commands.delete_at(idx+1)
#       commands.delete_at(idx-1)
#     end
#   end

#   (1...commands.size).each do |idx|
#     case commands[idx]
#     when 'plus' 
#       total += NUMBERS[commands[idx+1]] 
#     when 'minus'
#       total -= NUMBERS[commands[idx+1]]
#     end
#   end
#   total
# end

# p computer("three plus six divided two minus five") # => 1

# def word_cap(str)
#   str.split.map(&:capitalize).join(' ')
# end

# p word_cap("the end of the word")

# require 'date'

# def friday_13th(year)
#   counter = 0
#   1.upto(12) do |month|
#     date = Date.new(year, month, 13)
#     counter += 1 if date.friday?
#   end
#   counter
# end

# p friday_13th(2015)
# p friday_13th(1986)

# NUMBERS = %w(one two three four five six seven eight nine)
# OPERATORS = %w(plus minus divided times)

# def mathphrase(num = (1..10).to_a.sample)
#   str = ""
#   str << NUMBERS.sample
#   1.upto(num) do 
#     str += " #{OPERATORS.sample}"
#     str += " #{NUMBERS.sample}"
#   end
#   str
# end

# p mathphrase(2)
# p mathphrase(3)
# p mathphrase(4)
# p mathphrase()