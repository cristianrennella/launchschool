# 10.times { |i| puts "The Flintstones Rock!".rjust(21 + i)}

# puts "the value of 40 + 2 is #{40 + 2}"

# puts "the value of 40 + 2 is " + (40 + 2).to_s

# def factors(number)
#   return "Not valid input" if number <= 0 
#   dividend = number
#   divisors = []
#   begin
#     divisors << dividend if number % dividend == 0
#     dividend -= 1
#   end until dividend == 0
#   divisors
# end

# puts factors (55)
# puts factors (0)
# puts factors (-5)
# puts factors (324)

# limit = 15

# def fib(first_num, second_num, limit)
#   while second_num < limit
#     sum = first_num + second_num
#     first_num = second_num
#     second_num = sum
#   end
#   sum
# end

# result = fib(0, 1, limit)
# puts "result is #{result}"

# def add_information(a_string_param, an_array_param)  
#   return a_string_param += "rutabaga", an_array_param << "rutabaga"
# end

# my_string = "pumpkins"
# my_array = ["pumpkins"]
# my_string, my_array = add_information(my_string, my_array)

# puts "My string looks like this now: #{my_string}"
# puts "My array looks like this now: #{my_array}"

munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}

def mess_with_demographics(demo_hash)
  demo_hash.values.each do |family_member|
    family_member["age"] += 42
    family_member["gender"] = "other"
  end
end

new_munsters = Hash(munsters)

puts munsters.object_id
puts new_munsters.object_id

mess_with_demographics(new_munsters)

puts munsters
puts new_munsters