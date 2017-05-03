# "saddle point" 
#   - greater than or equal to every element in its row 
#   - less than or equal to every element in its column

# "1 2\n3 4"

# 1 2
# 3 4

# saddle point [0, 1] -> 3

# - Split the input with "\n" and then split it again with spaces
# - Create an array of rows called 'rows'
# - Create an array of columns called 'columns'

require 'pry'

class Matrix
  attr_reader :rows, :columns
  
  def initialize(matrix)
    @rows = matrix.split("\n")
                  .map(&:split)
                  .map { |row| row.map(&:to_i) }
    @columns = rows.transpose
  end

  def saddle_points
    rows.each_with_object([]).with_index do |(row, result), x|
      row.each_with_index do |value, y|
        result << [x, y] if value == row.max && value == columns[y].min
      end
    end
  end
end