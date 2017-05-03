def max_rotation(number)
  number = number.to_s.chars

  result = []
  until number.empty?
    number.push(number.shift)
    result << number.shift
  end
  result.join.to_i
end

p max_rotation(735291)