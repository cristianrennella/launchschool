def prompt(message)
  puts "=> #{message}"
end

def integer?(number)
  number.to_i.to_s == number
end

def choice?(number)
  if number == 1
    'Rock'
  elsif number == 2
    'Paper'
  elsif number == 3
    'Scissor'
  end
end

def get_results(user_choice, machine_choice)
  case user_choice
  when 1
    case machine_choice
    when 1
      0
    when 2
      -1
    when 3
      1
    end
  when 2
    case machine_choice
    when 1
      1
    when 2
      0
    when 3
      -1
    end
  when 3
    case machine_choice
    when 1
      -1
    when 2
      1
    when 3
      0
    end
  end
end

def game
  prompt('Please make your bet: 1) Rock 2) Paper or 3) Scissor: ')
  user_choice = gets.chomp
  loop do
    if integer?(user_choice) && user_choice.to_i.between?(1, 3)
      user_choice = user_choice.to_i
      break
    else
      prompt('Please insert a number and it should be between 1 and 3: ')
      user_choice = gets.chomp
    end
  end

  prompt('Now machine time to choice...')
  sleep(2)
  machine_choice = rand(1..3)

  prompt "Your choice: #{choice?(user_choice)}"
  prompt "Machine choice: #{choice?(machine_choice)}"

  result = get_results(user_choice, machine_choice)

  case result
  when 0
    prompt 'Game Even!.'
    return 0
  when 1
    prompt 'Congratulations!, you Win!.'
    return 1
  when -1
    prompt 'You lose. Maybe next time!.'
    return -1
  end
end

prompt('Weltome to Rock Paper and Scissor Game!.')
loop do
  total_user_win = 0
  total_machine_win = 0
  loop do
    result = game
    if result == 1
      total_user_win += 1
    elsif result == -1
      total_machine_win += 1
    end
    puts "User points: #{total_user_win} and Machine points: #{total_machine_win}"
    break if total_user_win == 5 || total_machine_win == 5
  end
  if total_user_win > total_machine_win
    puts "User wins #{total_user_win} to #{total_machine_win}"
  else
    puts "Machine wins #{total_machine_win} to #{total_user_win}"
  end
  prompt 'Do you want to play again?. (Y)'
  break unless gets.chomp.downcase.start_with?('y')
end

prompt 'Thanks for playing!'
