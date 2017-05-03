# class Integer
#   def custom_times
#     iteration = 0
#     while iteration < self
#       yield(iteration)
#       iteration += 1
#     end
#     self
#   end
# end

# 5.custom_times do |num|
#   puts num
# end

# 5.times do |num|
#   puts num
# end

# def times(value)
#   # value.times { |value| yield(value)}
#   iteration = 0
#   while iteration < value do
#     yield(iteration)
#     iteration += 1
#   end

#   value
# end

# times(5) do |num|
#   puts num
# end

# def each(array)
#   iteration = 0
#   while iteration < array.size
#     yield(array[iteration])
#     iteration += 1
#   end
# end

# each([100, 200, 300]) do |value|
#   puts "do nothing #{value}"
# end

# [1, 2, 3].each { |num| "do nothing" } 

# def select(array)
#   new_array = []
#   counter = 0
#   while counter < array.size
#     new_array << array[counter] if yield(array[counter])
#     counter += 1
#   end
#   new_array
# end

# array = [1, 2, 3, 4, 5]

# p select(array) { |num| num.odd? }      # => [1, 3, 5]
# p select(array) { |num| puts num }      # => [], because "puts num" returns nil and evaluates to false
# p select(array) { |num| num + 1 }       # => [1, 2, 3, 4, 5], because "num + 1" evaluates to true

def reduce(array, acc = 0)
  acc = acc
  array.each do |value|
    acc = yield(acc, value)
  end
  p acc
end

array = [1, 2, 3, 4, 5]

reduce(array) { |acc, num| acc + num }                    # => 15
reduce(array, 10) { |acc, num| acc + num }                # => 25
reduce(array) { |acc, num| acc + num if num.odd? }        # => NoMethodError: undefined method `+' for nil:NilClass

# reduce([1, 2, 3], 10) do |acc, num|
#   acc + num
# end

# [1, 2, 3].reduce do |acc, num|
#   acc + num
# end

# # => 6
