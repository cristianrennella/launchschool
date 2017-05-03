class DNA
  attr_reader :strand

  def initialize(strand = '')
    @strand = strand.upcase.chars
  end

  def hamming_distance(other_strand = '')
    other_strand = other_strand.upcase.chars

    distance_to_compare = [strand.size, other_strand.size].min

    hamming_distance = 0
    (0...distance_to_compare).each do |idx|
      hamming_distance += 1 unless strand[idx] == other_strand[idx]
    end
    hamming_distance
  end
end

p DNA.new('GGACG').hamming_distance('GGTCG')
