def joinor(arr, limit = ', ', close_last = 'or')
  return "No more options." if arr.empty?
  string = ""
  arr.each do |number|
    if arr.index(number) == arr.size - 1
      string += close_last + " " + "#{number}"
    elsif arr.index(number) == arr.size - 2
      string += "#{number}" + " "
    else
      string += "#{number}" + limit
    end
  end
  string
end

puts joinor([])                   
puts joinor([1, 2])                   # => "1 or 2"
puts joinor([1, 2, 3])                # => "1, 2, or 3"
puts joinor([1, 2, 3], '; ')          # => "1; 2; or 3"
puts joinor([1, 2, 3], ', ', 'and')   # => "1, 2, and 3"