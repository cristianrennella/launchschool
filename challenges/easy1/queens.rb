require 'pry'

def display(all_positions)
  matrix = {}
  all_positions.each do |position|
    p position
    position.each_with_index do |value, idx|
      (0..7).each do |inner_idx|
        if value == inner_idx
         matrix[[idx , inner_idx]] = " X "
       else
        matrix[[idx , inner_idx]] = " O "
      end
    end 
  end
  puts "   0  1  2  3  4  5  6  7 "
  (0..7).each do |column|
    puts "#{column} #{matrix[[0, column]]}#{matrix[[1, column]]}#{matrix[[2, column]]}#{matrix[[3, column]]}#{matrix[[4, column]]}#{matrix[[5, column]]}#{matrix[[6, column]]}#{matrix[[7, column]]}"
  end
  break
end
end

def all_possible_board_positions
  all_positions = [0, 1, 2, 3, 4, 5, 6, 7].permutation.to_a
  all_positions.delete_if do |position|
    delete = false
    position.each_with_index do |value, idx|
      # binding.pry if position == [0, 2, 4, 1, 7, 5, 3, 6]
      (1..7).each do |inner_idx|
        break if idx + inner_idx > 7
        if position[idx + inner_idx] == value + inner_idx || position[idx + inner_idx] == value - inner_idx
          delete = true
        end
      end
      (1..7).each do |inner_idx|
        break if idx - inner_idx < 0
        if position[idx - inner_idx] == value - inner_idx || position[idx - inner_idx] == value + inner_idx
          delete = true
        end
      end
    end
    delete
  end
  all_positions
end

all_positions = all_possible_board_positions
p all_positions.count
display(all_positions)

# Q 0 0 0 0 0 0 0
# 0 0 0 Q 0 0 0 0
# 0 Q 0 0 0 0 0 0
# 0 0 0 0 0 0 Q 0
# 0 0 Q 0 0 0 0 0
# 0 0 0 0 Q 0 0 0
# 0 0 0 0 0 0 0 Q
# 0 0 0 0 0 Q 0 0

2 - 4