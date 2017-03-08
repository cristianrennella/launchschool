# str = "joe's favorite color is blue"
# puts str.object_id
# str[0] = 'J'
# puts str.object_id
# str[6] = 'F'
# puts str.object_id
# str[15] = 'C'
# puts str.object_id
# str[21] = 'I'
# puts str.object_id
# str[24] = 'B'
# puts str.object_id
# puts str
# puts str.object_id

# def select_fruit(produce)
#   selection = {}
#   produce.each_pair do |key, value|
#     selection.store(key, value) if value == 'Fruit'
#   end
#   selection
# end

# produce = {
#   'apple' => 'Fruit',
#   'carrot' => 'Vegetable',
#   'pear' => 'Fruit',
#   'broccoli' => 'Vegetable'
# }

# puts select_fruit(produce) # => {"apple"=>"Fruit", "pear"=>"Fruit"}

# if produce.values_at(selection_keys[counter])[0] == 'Fruit'
#       fruits[selection_keys[counter]] = 'Fruit'
#     end

# def select_fruit(produce)
#   selection_keys = produce.keys
#   fruits = {}
#   counter = 0

#   loop do
#     break if counter == selection_keys.size

#     current_key = selection_keys[counter]
#     current_value = produce[current_key]

#     if current_value == 'Fruit'
#       fruits[current_key] = current_value
#     end

#     counter += 1
#   end

#   fruits
# end

# produce = {
#   'apple' => 'Fruit',
#   'carrot' => 'Vegetable',
#   'pear' => 'Fruit',
#   'broccoli' => 'Vegetable'
# }

# puts select_fruit(produce) # => {"apple"=>"Fruit", "pear"=>"Fruit"}

# def multiply(numbers, multiple)
#   multiple_numbers = []
#   counter = 0

#   loop do
#     break if counter == numbers.size

#     current_number = numbers[counter]
#     current_number *= multiple
#     multiple_numbers << current_number

#     counter += 1
#   end

#   multiple_numbers
# end

# my_numbers = [1, 4, 3, 7, 2, 6]
# puts multiply(my_numbers, 5) # => [3, 12, 9, 21, 6, 18]

# def swap(array, first_index, second_index)
#   temp = array[second_index]
#   array[second_index] = array[first_index]
#   array[first_index] = temp
# end

# unordered_array = [7, 5, 1, 55, 101, 567, 3 ,8, 8876]
# success = false
# counter = 0

# loop do
#   break if success == true
#   internal_counter = 0
#   loop do
#     if internal_counter == unordered_array.size - 1
#       success = true
#       break
#     end
#     if unordered_array[internal_counter] > unordered_array[internal_counter+1]
#       swap(unordered_array, internal_counter, internal_counter+1)
#       break
#     else
#       internal_counter += 1
#     end
#   end
# end

# puts unordered_array

# array = [1, 2, 3].any? do |num|
#   puts num
#   num.odd?
# end

# puts array

# arr = ['10', '11', '9', '7', '8']

# arr.sort! { |a, b| b.to_i <=> a.to_i }

# puts arr

# books = [
#   {title: 'One Hundred Years of Solitude', author: 'Gabriel Garcia Marquez', published: '967'},
#   {title: 'The Great Gatsby', author: 'F. Scott Fitzgerald', published: '1925'},
#   {title: 'War and Peace', author: 'Leo Tolstoy', published: '18693'},
#   {title: 'Ulysees', author: 'James Joyce', published: '1922'}
# ]

# books.sort_by! do |book|
#   book[:published].to_i
# end

# puts books

# arr = [[1, 3], [2]]
# puts arr.object_id
# arr[1] = "hi there"
# arr                     # => [[1, 3], "hi there"]
# puts arr.object_id

# arr = [{ a: 'ant' }, { b: 'bear' }]

# arr[0][:c] = 'cat'
# puts arr.inspect # => [{ :a => "ant", :c => "cat" }, { :b => "bear" }]

# arr2 = []
# arr2[0] = "hola"
# arr2[1] = 5
# arr2[2] = ["chau", 11]
# arr2[2][2] = "agregado"
# puts arr2.inspect
# puts arr2[2][0].inspect

# hsh = {}
# hsh[1] = ['hola', 'chau']
# hsh[:key] = 'value'
# hsh[1][0] = 'chau'

# puts hsh.inspect

# arr = [['a', ['b']], { b: 'bear', c: 'cat' }, 'cab']

# arr[0]              # => ["a", ["b"]]
# arr[0][1][0]        # => "b"
# arr[1]              # => { :b => "bear", :c => "cat" }
# arr[1][:b]          # => "bear"
# arr[1][:b][0]       # => "b"
# arr[2][2]           # => "b"
# puts arr[1][:b][1]

# arr1 = ["abc", "def"]
# arr2 = arr1.clone

# puts arr1.object_id
# puts arr2.object_id

# arr2[0].reverse!

# arr2 # => ["cba", "def"]
# arr1 # => ["cba", "def"]

# arr1 = ["a", "b", "c"]
# arr2 = arr1.dup

# puts arr1.object_id
# puts arr2.object_id

# puts arr1[0].object_id
# puts arr2[0].object_id

# puts arr1[1].object_id
# puts arr2[1].object_id

# puts arr1[2].object_id
# puts arr2[2].object_id

# puts "----"

# arr2.map! do |char|
#   char.upcase
# end

# puts arr1.inspect # => ["a", "b", "c"]
# puts arr2.inspect # => ["A", "B", "C"]

# puts arr1.object_id
# puts arr2.object_id

# puts arr1[0].object_id
# puts arr2[0].object_id

# puts arr1[1].object_id
# puts arr2[1].object_id

# puts arr1[2].object_id
# puts arr2[2].object_id

# puts "----"

# arr2.each do |char|
#   char.downcase!
# end

# puts arr1.inspect # => ["a", "b", "c"]
# puts arr2.inspect # => ["A", "B", "C"]

# puts arr1.object_id
# puts arr2.object_id

# puts arr1[0].object_id
# puts arr2[0].object_id

# puts arr1[1].object_id
# puts arr2[1].object_id

# puts arr1[2].object_id
# puts arr2[2].object_id

# puts "----"

# arr2.each do |char|
#   char.upcase!
# end

# puts arr1.inspect # => ["a", "b", "c"]
# puts arr2.inspect # => ["A", "B", "C"]

# puts arr1.object_id
# puts arr2.object_id

# puts arr1[0].object_id
# puts arr2[0].object_id

# puts arr1[1].object_id
# puts arr2[1].object_id

# puts arr1[2].object_id
# puts arr2[2].object_id

# arr = [{ a: 'ant', b: 'elephant' }, { c: 'cat' }]
# new_arr = []
# counter = 0

# loop do
#   break if counter == arr.size

#   new_arr << arr[counter].select do |key, value|
#     key.to_s == value[0]
#   end

#   counter += 1
# end

# puts arr.inspect
# puts new_arr.inspect

# arr = [['1', '8', '11'], ['2', '6', '13'], ['2', '12', '15'], ['1', '8', '9']]

# arr.map! do |inner_array|
#   inner_array.map! do |inner_inner_array|
#     inner_inner_array.to_i
#   end
# end

# arr.sort!

# puts arr.inspect

# arr.sort_by! do |sub_arr|
#   sub_arr.map do |num|
#     num.to_i
#   end
# end

# puts arr.inspect

# arr = [[8, 13, 27], ['apple', 'banana', 'cantaloupe']]

# arr.map! do |sub_arr|
#   sub_arr.select do |value|
#     if value.class == String
#       value.size < 6
#     else
#       value > 13
#     end
#   end
# end

# puts arr.inspect

# arr = [[[1, 2], [3, 4]], [5, 6]]

# arr.map! do |sub_arr|
#   sub_arr.map! do |value|
#     if value.class == Array
#       value.map! do |item|
#         item += 1
#       end
#     else
#       value += 1
#     end
#   end
# end

# puts arr.inspect

# require 'pry'

# arr1 = ['a', 'b', ['c', ['d', 'e', 'f', 'goooo']]]

# arr2 = [{first: ['a', 'b', 'c'], second: ['d', 'e', 'f']}, {third: ['g', 'h', 'i']}]

# arr3 = [['abc'], ['def'], {third: ['ghi']}]

# hsh1 = {'a' => ['d', 'e'], 'b' => ['f', 'gooh'], 'c' => ['h', 'i']}

# hsh2 = {first: {'d' => 3}, second: {'e' => 2, 'f' => 1}, third: {'gyes!' => 0}}

# puts hsh2[:third].key(0) # => 'g'hsh2[:third].keys[0] # => 'g'


# def find_g(element)
#   if element.class == String
#     if element.include? 'g'
#       return element
#     else
#       return false
#     end
#   elsif element.class == Array
#     element.each do |sub_element|
#       result = find_g(sub_element)
#       unless result == false
#         return result 
#       end
#     end
#   elsif element.class == Hash
#     element.each_pair do |key, value|
#       result = find_g(key)
#       unless result == false
#         return result 
#       end
#       result = find_g(value)
#       unless result == false
#         return result 
#       end
#     end
#   end
#   return false
# end

# puts arr1.inspect
# puts arr1[2][1][3]
# puts arr1[2][1][3].object_id
# reference_to_g = find_g(arr1)
# puts reference_to_g.inspect
# puts reference_to_g.object_id
# reference_to_g = "yessss"
# puts arr1.inspect

# arr1 = [1, [2, 3], 4]

# arr2 = [{a: 1}, {b: 2, c: [7, 6, 5], d: 4}, 3]

# hsh1 = {first: [1, 2, [3]]}

# hsh2 = {['a'] => {a: ['1', :two, 3], b: 4}, 'b' => 5}

# arr1[1][1] = 4
# puts arr1.inspect

# arr2[2] = 4
# puts arr2.inspect

# hsh1[:first][2][0] = 4
# puts hsh1.inspect

# hsh2[['a']][:a][2] = 4
# puts hsh2.inspect

# hsh = {first: ['the', 'quick'], second: ['brown', 'fox'], third: ['jumped'], fourth: ['over', 'the', 'lazy', 'dog']}
# vowels = "aeiou"

# hsh.each do |_, value|
#   value.each do |word|
#     word.each_char do |char|
#       puts char if vowels.include?(char)
#     end
#   end
# end

# arr = [['b', 'c', 'a'], [2, 1, 3], ['blue', 'black', 'green']]

# arr.map! do |sub_arr|
#   sub_arr.sort do |a, b|
#     b <=> a
#   end
# end

# puts arr.inspect

# arr_modified = arr.map do |sub_hash|
#   new_hash = Hash[sub_hash.map{|k,value| [k,value+=1] } ]
# end

# arr = [{a: 1}, {b: 2, c: 3}, {d: 4, e: 5, f: 6}]
# puts arr.inspect

# arr_modified = arr.map do |sub_hash|
#   new_hash = {}
#   sub_hash.each do |key, value|
#     new_hash[key] = value + 1
#   end
#   new_hash
# end

# puts arr.inspect
# puts arr_modified.inspect

# require 'pry'

# arr = [[2], [3, 5, 7], [9], [11, 13, 15, 21]]
# arr_multiple_3 = []

# arr.each do |sub_arr|
#   arr_result = sub_arr.select do |integer|
#     if integer % 3 == 0 
#       true
#     else
#       false
#     end
#   end
#   arr_multiple_3 << arr_result unless arr_result.empty?
# end

# puts arr_multiple_3.inspect

# arr = [[:a, 1], ['b', 'two'], ['sea', {c: 3}], [{a: 1, b: 2, c: 3, d: 4}, 'D']]

# new_hash = {}

# arr.each do |array|
#   new_hash[array[0]] = array[1]
# end

# puts new_hash.inspect

# arr = [[1, 6, 7], [1, 4, 9], [1, 8, 3]]

# sorted_array = arr.sort do |a, b|
#   a_odd = a.select do |integer|
#     integer.odd?
#   end
#   b_odd = b.select do |integer|
#     integer.odd?
#   end
#   a_odd <=> b_odd
# end

# puts sorted_array.inspect

# hsh = {
#   'grape' => {type: 'fruit', colors: ['red', 'green'], size: 'small'},
#   'carrot' => {type: 'vegetable', colors: ['orange'], size: 'medium'},
#   'apple' => {type: 'fruit', colors: ['red', 'green'], size: 'medium'},
#   'apricot' => {type: 'fruit', colors: ['orange'], size: 'medium'},
#   'marrow' => {type: 'vegetable', colors: ['green'], size: 'large'},
# }

# new_array = []

# hsh.each do |key, value|
#   if value[:type] == 'fruit'
#     new_array << [key, value[:colors].map{ |value| value.upcase }]
#   else
#     new_array << [key, value[:size].capitalize]
#   end
# end

# puts new_array.inspect

# arr = [{a: [1, 2, 3]}, {b: [2, 4, 6], c: [3, 6], d: [4]}, {e: [8], f: [6, 10]}]
# new_array = []

# arr.each do |sub_hash|
#   even_value = true
#   sub_hash.each_value do |value|
#      value.each { |int| even_value = false if int.odd? }
#   end
#   new_array << sub_hash if even_value
# end

# puts new_array.inspect

# arr = [{a: [1, 2, 3]}, {b: [2, 4, 6], c: [3, 6], d: [4]}, {e: [8], f: [6, 10]}]


# new_array = arr.select do |sub_hash|
#   even_value = true
#   sub_hash.each_value do |value|
#      value.each { |int| even_value = false if int.odd? }
#   end
#   even_value
# end

# puts new_array.inspect

# def flatten_array(array, new_array)
#   array.each do |value|
#     if value.class == String
#       new_array << value
#     else
#       flatten_array(value, new_array)
#     end
#   end
# end

# arr = [['stars', 'river'], 'letter', ['leaves', ['horses', 'table']]]

# new_array = []

# flatten_array(arr, new_array)

# puts new_array.inspect

# flintstones = ["Fred", "Barney", "Wilma", "Betty", "Pebbles", "BamBam"]
# flintstones_hash = {}
# counter = 0

# flintstones.each do |name|
#   flintstones_hash[name] = counter
#   counter += 1 
# end

# puts flintstones_hash.inspect

# ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10, "Marilyn" => 22, "Spot" => 237 }
# total_ages = 0

# ages.each_value { |age| total_ages += age } 

# puts total_ages

# ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }

# ages.delete_if { |key, value| value >= 100}

# puts ages

# ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10, "Marilyn" => 22, "Spot" => 237 }

# puts min_age = ages.min_by { |key, value| value }

# flintstones = %w(Fred BarBeey Wilma Betty BamBam Pebbles)
# index_with_be = nil

# flintstones.each_with_index do |name, index|
#   index_with_be = index if name.match(/^Be.*/)
# end

# puts index_with_be

# flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)

# flintstones.map! { |name| name[0,3]}

# puts flintstones.inspect

# statement = "The Flintstones Rock"
# hash_number_of_letters = {}

# statement.each_char do |letter|
#   if hash_number_of_letters.has_key?(letter)
#     hash_number_of_letters[letter] += 1
#   else
#     hash_number_of_letters[letter] = 1
#   end
# end

# puts hash_number_of_letters.inspect

# numbers = [1, 2, 3, 4]
# numbers.each do |number|
#   p number
#   numbers.shift(1)
# end

# numbers = [1, 2, 3, 4]
# numbers.each do |number|
#   p number
#   numbers.pop(1)
# end

# def titleize(title)
#   title_array = title.split(' ')
#   title_array.each { |word| word.capitalize!}
#   return title_array.join(' ')
# end

# words = "the flintstones rock"

# title = titleize(words)

# puts title

# words = "the flintstones rock"

# puts words.split.map { |word| word.capitalize }.join(' ')

# munsters = {
#   "Herman" => { "age" => 32, "gender" => "male" },
#   "Lily" => { "age" => 30, "gender" => "female" },
#   "Grandpa" => { "age" => 402, "gender" => "male" },
#   "Eddie" => { "age" => 10, "gender" => "male" },
#   "Marilyn" => { "age" => 23, "gender" => "female"}
# }

# munsters.each do |key, value|
#   case value["age"]
#   when 1..17
#     value["age_group"] = "kid"
#   when 18..65
#     value["age_group"] = "adult"
#   when 65..999
#     value["age_group"] = "senior"
#   end
# end

# puts munsters.inspect

# munsters = {
#   "Herman" => { "age" => 32, "gender" => "male" },
#   "Lily" => { "age" => 30, "gender" => "female" },
#   "Grandpa" => { "age" => 402, "gender" => "male" },
#   "Eddie" => { "age" => 10, "gender" => "male" }
# }

# total_male_age = 0

# munsters.each { |name, details| total_male_age += details["age"] if details["gender"] == "male"}

# puts total_male_age

# munsters = {
#   "Herman" => { "age" => 32, "gender" => "male" },
#   "Lily" => { "age" => 30, "gender" => "female" },
#   "Grandpa" => { "age" => 402, "gender" => "male" },
#   "Eddie" => { "age" => 10, "gender" => "male" },
#   "Marilyn" => { "age" => 23, "gender" => "female"}
# }

# munsters.each do |name, details|
#   puts "#{name} is a #{details['age']} year old #{details['gender']}."
# end

# require 'securerandom'

# def generate_UUID
#   return Array[SecureRandom.hex(4), SecureRandom.hex(2), SecureRandom.hex(2), SecureRandom.hex(2), SecureRandom.hex(6)]
# end

# puts generate_UUID.join('-').inspect
# puts generate_UUID.join('-').inspect
# puts generate_UUID.join('-').inspect
# puts generate_UUID.join('-').inspect
# puts generate_UUID.join('-').inspect

# def generate_UUID
#   characters = []
#   (0..9).each { |digit| characters << digit.to_s }
#   ('a'..'f').each { |digit| characters << digit }

#   uuid = ""
#   sections = [8, 4, 4, 4, 12]
#   sections.each_with_index do |section, index|
#     section.times { uuid += characters.sample }
#     uuid += '-' unless index >= sections.size - 1
#   end

#   uuid
# end

# puts generate_UUID