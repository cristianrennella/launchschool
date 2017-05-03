require 'pry'

class Triangle
  attr_reader :rows, :size

  def initialize(size)
    @size = size
    generate
  end

  private

  def generate
    @rows = [[1]]

    2.upto(size) do
      result = []
      rows.last.each_with_index do |value, idx|
        result << 1 if idx == 0
        result << rows.last[idx] + rows.last.fetch(idx + 1, 0)
        break if idx + 1 == rows.last.size
      end
      rows << result
    end
  end
end

# def generate
#   @rows = [[1]]

#   2.upto(size) do
#     temp = []
#     rows.last.each do |value|
#       temp << value
#     end
#     temp.unshift(0)
#     temp.push(0)

#     result = []
#     temp.each_with_index do |value, idx|
#       break if idx + 1 == temp.size
#       result << temp[idx] + temp[idx + 1]
#     end
#     rows << result
#   end
# end