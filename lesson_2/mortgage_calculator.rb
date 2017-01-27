def is_integer? (input)
  input.to_i.to_s == input
end

def is_float? (input)
  input.to_f.to_s == input
end

def is_number? (input)
  is_integer?(input) || is_float?(input)
end

puts 'Enter loan amount: '
amount = ''

loop do 

  amount = gets.chomp

  if amount.empty? || amount.to_f < 0
    puts 'Please enter a valid number'
  else  
    is_number?(amount) ? break : puts('Please enter a valid number now')
  end
end

puts 'Interest Rate: '
interest_rate = gets.chomp.to_f

puts 'Enter loan duration in years: '
duration = gets.chomp.to_f

apr = interest_rate / 100
monthly_interest_rate = apr / 12
loan_duration_in_months = duration * 12

monthly_payment = amount.to_f * (monthly_interest_rate / (1 - (1 + monthly_interest_rate)**(-loan_duration_in_months)))

puts "Monthly Payment: " + Kernel.format('%02.2f', monthly_payment)