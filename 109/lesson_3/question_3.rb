advice = "Few things in life are as important as house training your pet dinosaur."

new_array = advice.split(' ')

index_value = new_array.index("important")

new_array[index_value] = 'urgent'

puts new_array.to_s

p new_array

puts (10..100).include?(42)