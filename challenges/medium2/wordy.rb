require 'pry'

class WordProblem
  OPERATIONS = {'plus' => '+', 'minus' => '-', 'multiplied' => '*', 'divided' => '/'}

  attr_reader :steps, :accumulation

  def initialize(words)
    @steps = format(words)
  end

  def answer
    @accumulation = steps[0]
    idx = 1

    loop do 
      raise ArgumentError unless OPERATIONS.keys.include?(steps[idx])

      @accumulation = @accumulation.public_send(OPERATIONS[steps[idx]], steps[idx+1])
      idx += 2
      break unless steps[idx]
    end

    accumulation
  end

  def format(words)
    # words[8..words.size].delete('?').delete('by').split(' ').map do |value|
    #   value.match(/[0-9]/) ? value.to_i : value
    # end

    words.scan(/-?\d+|#{OPERATIONS.keys.join('|')}/).map do |value|
      value.match(/[0-9]/) ? value.to_i : value
    end
  end
end