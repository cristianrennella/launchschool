require 'pry'

def generate_pattern(number)
  base = (1..number).to_a

  result = [] << base
  number.downto(2) do |idx|
    last = result.last.dup
    last[idx-1] = last[idx-1].to_s.gsub(/./, '*')
    result << last
  end

  result.reverse.each { |value| puts value.join}
end

generate_pattern(30)