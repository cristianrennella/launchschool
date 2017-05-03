class SecretHandshake
  SECRET_COMMANDS = ['wink', 'double blink', 'close your eyes', 'jump']

  def initialize(numbers = 0)
    if numbers.class == Fixnum
      @numbers = numbers.to_s(2) 
    else
      numbers.match(/[01]/) ? @numbers = numbers : @numbers = 0
    end
  end

  def commands
    return [] if @numbers == 0

    commands = []
    @numbers.chars.reverse.map(&:to_i).each_with_index do |number, idx|
      if idx == 4 && number == 1
        commands.reverse!
        break
      end
      commands << SECRET_COMMANDS[idx] if number == 1
    end
    commands
  end
end

# p SecretHandshake.new(9).commands