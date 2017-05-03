require 'pry'

class Clock
  attr_reader :hours, :minutes

  def initialize(hours, minutes)
    @hours = hours
    @minutes = minutes
  end

  def self.at(hours = 0, minutes = 0)
    new(hours, minutes)
  end

  def to_s
    "#{format('%02d', hours)}:#{format('%02d', minutes)}"
  end

  def +(_minutes)
    @hours = (@hours + _minutes / 60) % 24
    @minutes += _minutes % 60
    self
  end

  def -(_minutes)
    @hours = (@hours - (_minutes / 60.0).ceil) % 24
    @minutes = (minutes - _minutes % 60).abs
    self
  end

  def ==(other_clock)
    @minutes == other_clock.minutes && @hours == other_clock.hours
  end
end