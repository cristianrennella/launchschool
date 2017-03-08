def display_board(position_array)
  position_array.each_with_index do |value, index|
    puts "" if [3,6].include?(index) 
    if value == 'x'
      print 'x' 
    elsif value == 'o'
      print 'o'
    else 
      print '-'
    end
  end
  puts ""
end

def user_move(position_array)
  puts "Choice your move. From 0 to 8."
  loop do
    user_choice = gets.chomp.to_i
    if position_array[user_choice] == nil && user_choice <= 8
      position_array[user_choice] = 'x'
      break
    else
      puts "That space is already take or is invalid. Choice a new one!."
    end
  end
end

def computer_move(position_array)
  return false if position_array.count(nil) == 0
  machine_choice = nil

  winner_array = [[0, 1, 2], [3, 4, 5], [6, 7, 8], [0, 3, 6], [1, 4, 7], [2, 5, 8], [0, 4, 8], [6, 4, 2]]

  user_array = []
  position_array.each_with_index do |value, index|
    user_array.push(index) if value == 'x'
  end

  user_about_to_win = false
  next_move = nil

  winner_array.each do |winner_value|
    count = 0
    user_array.include?(winner_value[0]) ? count += 1 : next_move = winner_value[0]
    user_array.include?(winner_value[1]) ? count += 1 : next_move = winner_value[1]
    user_array.include?(winner_value[2]) ? count += 1 : next_move = winner_value[2]
    if count == 2
      user_about_to_win = true
      break
    end
  end

  machine_about_to_win = false

  machine_array = []
  position_array.each_with_index do |value, index|
    machine_array.push(index) if value == 'o'
  end

  winner_array.each do |winner_value|
    count = 0
    machine_array.include?(winner_value[0]) ? count += 1 : next_move = winner_value[0]
    machine_array.include?(winner_value[1]) ? count += 1 : next_move = winner_value[1]
    machine_array.include?(winner_value[2]) ? count += 1 : next_move = winner_value[2]
    if count == 2
      machine_about_to_win = true
      break
    end
  end

  loop do
    if user_about_to_win == true && machine_about_to_win == true
      machine_choice = next_move
    else
      machine_choice = rand(8)
    end
    break if position_array[machine_choice] == nil
  end 

  position_array[machine_choice] = 'o'
end

def winner?(position_array)
  winner_array = [[0, 1, 2], [3, 4, 5], [6, 7, 8], [0, 3, 6], [1, 4, 7], [2, 5, 8], [0, 4, 8], [6, 4, 2]]

  user_array = []
  position_array.each_with_index do |value, index|
    user_array.push(index) if value == 'x'
  end

  machine_array = []
  position_array.each_with_index do |value, index|
    machine_array.push(index) if value == 'o'
  end

  user_wins = false
  machine_wins = false

  winner_array.each do |winner_value|
    user_wins = true if user_array.include?(winner_value[0]) && user_array.include?(winner_value[1]) && user_array.include?(winner_value[2])
    break if user_wins == true
  end

  winner_array.each do |winner_value|
    machine_wins = true if machine_array.include?(winner_value[0]) && machine_array.include?(winner_value[1]) && machine_array.include?(winner_value[2])
    break if machine_wins == true
  end

  if user_wins == true
    return "User wins!"
  elsif machine_wins == true
    return "Machine wins!"
  else
    return 'Keep playing.'
  end
end

def board_full?(position_array)
  p position_array
  puts "Campos libres: #{position_array.count(nil)}"
  return position_array.count(nil) == 0 ? true : false
end

def play(position_array)
  loop do
    user_move(position_array)
    display_board(position_array)
    computer_move(position_array)
    display_board(position_array)

    if winner?(position_array) == 'User wins!'
      puts 'User Wins!'
      break
    elsif winner?(position_array) == 'Machine wins!'
      puts 'Machine wins!'
      break
    else
      puts 'Keep playing!'
    end

    if board_full?(position_array)
      puts "It is a tie!"
      break
    end
  end
end

def reset_board(position_array)
  position_array = [nil, nil, nil, nil, nil, nil, nil, nil, nil]
end

position_array = [nil, nil, nil, nil, nil, nil, nil, nil, nil]
puts "Welcome to Tic-tac-toe game!."

loop do
  reset_board(position_array)
  display_board(position_array)
  play(position_array)
  puts "Do you want to play again?. (y)"
  break unless gets.chomp == 'y'
end