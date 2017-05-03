require 'pry'

class House
  attr_reader :nursery_pieces

  def complete_rhyme
    song = []
    @ordered_pieces = pieces.reverse!
    song_remainder = []

    @ordered_pieces.each_with_index do |piece, idx|
      if idx == 0
        song << ["This is #{piece[0]}."]
      else
        song << ["This is #{piece[0]}"]
        song << ["#{piece[1]} #{@ordered_pieces[idx - 1][0]}"]
        song_remainder(idx).each { |remainder| song << remainder } unless idx == 1
      end
      song << ["\n"]
    end
    song
  end

  def song_remainder(idx)
    remainder = []
    idx.downto(2) do |inner_idx|
      remainder << ["#{@ordered_pieces[inner_idx-1][1]} #{@ordered_pieces[inner_idx-2][0]}"]
    end
    remainder.last[0].insert(-1, '.')
    remainder
  end

  def self.recite
    House.new.complete_rhyme
  end

  private

  def pieces
    [
      ['the horse and the hound and the horn', 'that belonged to'],
      ['the farmer sowing his corn', 'that kept'],
      ['the rooster that crowed in the morn', 'that woke'],
      ['the priest all shaven and shorn', 'that married'],
      ['the man all tattered and torn', 'that kissed'],
      ['the maiden all forlorn', 'that milked'],
      ['the cow with the crumpled horn', 'that tossed'],
      ['the dog', 'that worried'],
      ['the cat', 'that killed'],
      ['the rat', 'that ate'],
      ['the malt', 'that lay in'],
      ['the house that Jack built']
    ]
  end
end

puts House.recite