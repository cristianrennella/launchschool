require 'date'

class Meetup
  SCHEDULE_TO_WEEK_NUMBER = {
    :first  => 1,
    :second => 2,
    :third  => 3,
    :fourth => 4
  }
  def initialize(month, year)
    @month = month
    @year = year
  end

  def day(weekday, schedule)
    @weekday = weekday

    if schedule == :teenth 
      teenth 
    elsif schedule == :last
      last
    else
      find_the_day(SCHEDULE_TO_WEEK_NUMBER[schedule])
    end

    Date.new(year, month, _day)
  end

  private
  attr_reader :month, :year, :weekday, :_day

  def find_the_day(week_number)
    @_day = 0
    week_counter = 0
    loop do 
      @_day += 1
      next unless Date.new(year, month, _day).send("#{weekday}?")
      week_counter += 1
      return if week_counter == week_number
    end
  end

  def find_the_day_between(start, finish)
    finish.downto(start) do |day|
      if Date.new(year, month, day).send("#{weekday}?")
        return @_day = day 
      end
    end
  end

  def teenth
    find_the_day_between(10, 19)
  end

  def last
    find_the_day_between(1, Date.new(year, month, -1).mday)
  end
end

# p Meetup.new(4, 2013).day(:sunday, :last)