def gcd(value1, value2)
  [value1, value2].min.downto(1) do |idx|
    return idx if value1 % idx == 0 && value2 % idx == 0
  end
end

p gcd(30, 150)