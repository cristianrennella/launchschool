require 'pry'

class OCR
  attr_reader :text

  OCR_NUMBERS = {
    [' _', '| |', '|_|']  => '0',
    [' _ ', '| |', '|_|']  => '0',
    ['', '  |', '  |']    => '1',
    ['   ', '  |', '  |']    => '1',
    [' _', ' _|', '|_']   => '2',
    [' _ ', ' _|', '|_']   => '2',
    [' _ ', ' _|', '|_ ']   => '2',
    [' _', ' _|', ' _|']  => '3',
    [' _ ', ' _|', ' _|']  => '3',
    ['', '|_|', '  |']    => '4',
    ['   ', '|_|', '  |']    => '4',
    [' _', '|_', ' _|']   => '5',
    [' _ ', '|_ ', ' _|']   => '5',
    [' _', ' |_', ' _|']   => '5',
    [' _', '|_ ', ' _|']   => '5',
    [' _', '|_', '|_|']   => '6',
    ['  _', '|_', '|_|']   => '6',
    ['  _', '|_', '|_|']   => '6',
    [' _ ', '|_ ', '|_|']   => '6',
    [' _', '  |', '  |']  => '7',
    [' _ ', '  |', '  |']  => '7',
    [' _', '|_|', '|_|']  => '8',
    [' _ ', '|_|', '|_|']  => '8',
    [' _', '|_|', ' _|']  => '9',
    [' _ ', '|_|', ' _|']  => '9'
    }.freeze

    def initialize(text)
      @text = text
    end

    def convert
      result = ''

      text.split("\n\n").each do |inner_text|
        inner_text = inner_text.split("\n")
        (0...(inner_text.max.size.to_f/3).ceil).each do |inner_idx|
          number = OCR_NUMBERS[[inner_text[0][inner_idx * 3, 3],
          inner_text[1][inner_idx * 3, 3],
          inner_text[2][inner_idx * 3, 3]]]
          result += number ? number : "?"
        end
        result += ','
      end
      result.slice!(-1)
      result
    end
  end