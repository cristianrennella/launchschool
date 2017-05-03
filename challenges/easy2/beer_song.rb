# class BeerSong

#   def verse_for(bottle_number)
#     case 
#     when bottle_number > 1
#       "#{bottle_number} bottles of beer on the wall, #{bottle_number} bottles of beer.\n" \
#       "Take one down and pass it around, #{bottle_number - 1} bottle#{bottle_number - 1 > 1 ? 's' : ''} of beer on the wall.\n"
#     when bottle_number == 1
#       "1 bottle of beer on the wall, 1 bottle of beer.\n" \
#       "Take it down and pass it around, no more bottles of beer on the wall.\n"
#     when bottle_number == 0 
#       "No more bottles of beer on the wall, no more bottles of beer.\n" \
#       "Go to the store and buy some more, 99 bottles of beer on the wall.\n"
#     end
#   end

#   def verses(start_bottle, end_bottle = start_bottle)
#     song = ''
#     start_bottle.downto(end_bottle) do |idx|
#       song += verse_for(idx)
#       song += "\n" unless end_bottle == idx
#     end
#     song
#   end

#   def verse(number_of_bottles)
#     verses(number_of_bottles)
#   end

#   def lyrics
#     verses(99, 0)
#   end
# end

class Verse0
  def self.verse(number = nil)
    <<-VERSE 
No more bottles of beer on the wall, no more bottles of beer.
Go to the store and buy some more, 99 bottles of beer on the wall.
    VERSE
  end
end

class Verse1
  def self.verse(number = nil)
     "1 bottle of beer on the wall, 1 bottle of beer.\n" \
    "Take it down and pass it around, no more bottles of beer on the wall.\n"
  end
end

class VerseDefault
  def self.verse(number = nil)
     "#{number} bottles of beer on the wall, #{number} bottles of beer.\n" \
      "Take one down and pass it around, #{number - 1} bottle#{number - 1 > 1 ? 's' : ''} of beer on the wall.\n"
  end
end


class BeerSong

  def initialize
    @verses = {
      0 => Verse0,
      1 => Verse1
    }
    @verses.default = VerseDefault
  end

  def verses(start_bottle, end_bottle = start_bottle)
    song = ''
    start_bottle.downto(end_bottle) do |idx|
      song += @verses[idx].verse(idx)
      song += "\n" unless end_bottle == idx
    end
    song
  end

  def verse(number_of_bottles)
    verses(number_of_bottles)
  end

  def lyrics
    verses(99, 0)
  end
end