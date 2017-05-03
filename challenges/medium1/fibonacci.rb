class Fibonacci
  def self.nth(nth_fibonacci)
    fibonacci = [1, 1]
    fibonacci << fibonacci[-1] + fibonacci [-2] until fibonacci.size == nth_fibonacci
    fibonacci.last
  end
end

p Fibonacci.nth(9)