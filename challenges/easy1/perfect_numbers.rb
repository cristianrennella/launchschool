class PerfectNumber
  def self.classify(number)
    raise RuntimeError if number < 1

    sum_of_factores = (1...number).select { |value| number % value == 0 }.reduce(&:+)

    case 
    when sum_of_factores == number then "perfect"
    when sum_of_factores < number then "deficient"
    when sum_of_factores > number then "abundant"
    end
  end
end